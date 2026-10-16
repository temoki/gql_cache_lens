import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_service_provider.dart';
import 'scroll_into_view.dart';

/// Shows a cache object as a tree that can be operated with the keyboard.
///
/// - Up / Down: move the selection.
/// - Right: expand the selected item, or move to its first child.
/// - Left: collapse the selected item, or move to its parent. On a top-level
///   item, go back to the previous page or call [onExit].
/// - Enter: expand or collapse the selected item, or follow a `$ref`.
final class ObjectPage extends StatefulWidget {
  const ObjectPage({
    super.key,
    required this.dataId,
    required this.object,
    this.focusNode,
    this.autofocus = false,
    this.onClose,
    this.onExit,
  });

  final String dataId;
  final dynamic object;

  /// The focus node of the tree. The page creates one when this is null.
  final FocusNode? focusNode;
  final bool autofocus;
  final VoidCallback? onClose;

  /// Called when Left is pressed on a top-level item and there is no page to
  /// go back to.
  final VoidCallback? onExit;

  @override
  State<ObjectPage> createState() => _ObjectPageState();
}

/// A visible row of the tree.
final class _ObjectRow {
  const _ObjectRow({
    required this.path,
    required this.parentPath,
    required this.label,
    required this.value,
    required this.depth,
  });

  /// Identifies the row across rebuilds. Made of the labels from the root.
  final String path;
  final String? parentPath;
  final String label;
  final dynamic value;
  final int depth;

  bool get isExpandable => value is Map || value is List;
}

Iterable<MapEntry<String, dynamic>> _childEntries(dynamic value) =>
    switch (value) {
      final Map<dynamic, dynamic> map => map.entries.map(
        (entry) => MapEntry('${entry.key}', entry.value),
      ),
      final List<dynamic> list => list.asMap().entries.map(
        (entry) => MapEntry('[${entry.key}]', entry.value),
      ),
      _ => const <MapEntry<String, dynamic>>[],
    };

final class _ObjectPageState extends State<ObjectPage> {
  // Separates the labels in a row path. It does not appear in JSON keys.
  static const _pathSeparator = '\u0000';

  final GlobalKey _selectedRowKey = GlobalKey();
  final _expandedPaths = <String>{};
  FocusNode? _ownFocusNode;
  late List<_ObjectRow> _rows;
  String? _selectedPath;

  FocusNode get _focusNode =>
      widget.focusNode ??
      (_ownFocusNode ??= FocusNode(debugLabel: 'ObjectPage'));

  int get _selectedIndex {
    final selectedPath = _selectedPath;
    return selectedPath == null
        ? -1
        : _rows.indexWhere((row) => row.path == selectedPath);
  }

  @override
  void initState() {
    super.initState();
    _rows = _flatten();
    _focusNode.addListener(_onFocusChanged);
  }

  @override
  void didUpdateWidget(ObjectPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.focusNode != widget.focusNode) {
      (oldWidget.focusNode ?? _ownFocusNode)?.removeListener(_onFocusChanged);
      _focusNode.addListener(_onFocusChanged);
    }
    if (!identical(oldWidget.object, widget.object)) {
      _rows = _flatten();
    }
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChanged);
    _ownFocusNode?.dispose();
    super.dispose();
  }

  void _onFocusChanged() {
    // Rebuild to change the highlight of the selected row.
    setState(() {});
  }

  List<_ObjectRow> _flatten() {
    final rows = <_ObjectRow>[];
    void visit(
      Iterable<MapEntry<String, dynamic>> entries,
      String? parentPath,
      int depth,
    ) {
      for (final entry in entries) {
        final path = parentPath == null
            ? entry.key
            : '$parentPath$_pathSeparator${entry.key}';
        final row = _ObjectRow(
          path: path,
          parentPath: parentPath,
          label: entry.key,
          value: entry.value,
          depth: depth,
        );
        rows.add(row);
        if (row.isExpandable && _expandedPaths.contains(path)) {
          visit(_childEntries(row.value), path, depth + 1);
        }
      }
    }

    final object = widget.object;
    visit(
      object is Map || object is List
          ? _childEntries(object)
          : [MapEntry('$object', null)],
      null,
      0,
    );
    return rows;
  }

  Object? _refObjectOf(_ObjectRow row) {
    if (row.label != r'$ref') {
      return null;
    }
    return AppServiceProvider.of(context).gqlCache.normalized[row.value]
        as Object?;
  }

  void _selectAt(int index) {
    final previous = _selectedIndex;
    setState(() => _selectedPath = _rows[index].path);
    scrollIntoView(_selectedRowKey, forward: previous < 0 || index > previous);
  }

  void _moveSelection(int delta) {
    if (_rows.isEmpty) {
      return;
    }
    final current = _selectedIndex;
    _selectAt(
      current < 0
          ? (delta > 0 ? 0 : _rows.length - 1)
          : (current + delta).clamp(0, _rows.length - 1),
    );
  }

  void _setExpanded(_ObjectRow row, {required bool expanded}) {
    setState(() {
      if (expanded) {
        _expandedPaths.add(row.path);
      } else {
        _expandedPaths.remove(row.path);
      }
      _rows = _flatten();
    });
  }

  void _expandOrEnter() {
    final index = _selectedIndex;
    if (index < 0) {
      _moveSelection(1);
      return;
    }
    final row = _rows[index];
    if (!row.isExpandable) {
      return;
    }
    if (!_expandedPaths.contains(row.path)) {
      _setExpanded(row, expanded: true);
    } else if (index + 1 < _rows.length &&
        _rows[index + 1].parentPath == row.path) {
      _selectAt(index + 1);
    }
  }

  void _collapseOrLeave() {
    final index = _selectedIndex;
    final row = index < 0 ? null : _rows[index];
    if (row != null && _expandedPaths.contains(row.path)) {
      _setExpanded(row, expanded: false);
      return;
    }
    final parentPath = row?.parentPath;
    if (parentPath != null) {
      _selectAt(_rows.indexWhere((row) => row.path == parentPath));
      return;
    }
    final navigator = Navigator.of(context);
    if (navigator.canPop()) {
      navigator.pop();
    } else {
      widget.onExit?.call();
    }
  }

  void _activate() {
    final index = _selectedIndex;
    if (index < 0) {
      return;
    }
    final row = _rows[index];
    if (row.isExpandable) {
      _setExpanded(row, expanded: !_expandedPaths.contains(row.path));
      return;
    }
    final refObject = _refObjectOf(row);
    if (refObject != null) {
      _followRef(row, refObject);
    }
  }

  Future<void> _followRef(_ObjectRow row, Object refObject) async {
    await Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => ObjectPage(
          dataId: '${row.value}',
          object: refObject,
          autofocus: true,
        ),
      ),
    );
    // Take the focus back from the page that was just closed.
    if (mounted) {
      _focusNode.requestFocus();
    }
  }

  void _onTapRow(int index) {
    _selectAt(index);
    _focusNode.requestFocus();
    _activate();
  }

  @override
  Widget build(BuildContext context) {
    final appService = AppServiceProvider.of(context);
    return CallbackShortcuts(
      bindings: {
        const SingleActivator(LogicalKeyboardKey.arrowDown): () =>
            _moveSelection(1),
        const SingleActivator(LogicalKeyboardKey.arrowUp): () =>
            _moveSelection(-1),
        const SingleActivator(LogicalKeyboardKey.arrowRight): _expandOrEnter,
        const SingleActivator(LogicalKeyboardKey.arrowLeft): _collapseOrLeave,
        const SingleActivator(LogicalKeyboardKey.enter): _activate,
      },
      child: Focus(
        focusNode: _focusNode,
        autofocus: widget.autofocus,
        child: Listener(
          onPointerDown: (_) => _focusNode.requestFocus(),
          child: Scaffold(
            appBar: AppBar(
              title: Text(widget.dataId),
              actions: [
                if (widget.onClose != null)
                  IconButton(
                    icon: const Icon(Icons.close),
                    tooltip: 'Close',
                    onPressed: widget.onClose,
                  ),
              ],
            ),
            body: ListenableBuilder(
              listenable: appService,
              builder: (_, _) => ListView.builder(
                itemCount: _rows.length,
                itemBuilder: (_, index) {
                  final row = _rows[index];
                  final isSelected = row.path == _selectedPath;
                  return _ObjectRowTile(
                    key: isSelected ? _selectedRowKey : null,
                    row: row,
                    isExpanded: _expandedPaths.contains(row.path),
                    isLink: _refObjectOf(row) != null,
                    isSelected: isSelected,
                    hasFocus: _focusNode.hasFocus,
                    onTap: () => _onTapRow(index),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

final class _ObjectRowTile extends StatelessWidget {
  const _ObjectRowTile({
    super.key,
    required this.row,
    required this.isExpanded,
    required this.isLink,
    required this.isSelected,
    required this.hasFocus,
    required this.onTap,
  });

  final _ObjectRow row;
  final bool isExpanded;
  final bool isLink;
  final bool isSelected;
  final bool hasFocus;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final keyStyle = GoogleFonts.robotoMono();
    final valueStyle = keyStyle.copyWith(color: colorScheme.primary);
    final value = row.value;
    return ListTile(
      contentPadding: EdgeInsets.only(left: 16.0 + 24.0 * row.depth, right: 16),
      title: Text(row.label, style: keyStyle),
      subtitle: row.isExpandable || value == null
          ? null
          : Text('$value', style: valueStyle),
      trailing: row.isExpandable
          ? Icon(isExpanded ? Icons.expand_less : Icons.expand_more)
          : (isLink ? const Icon(Icons.chevron_right) : null),
      selected: isSelected,
      selectedTileColor: hasFocus
          ? colorScheme.secondaryContainer
          : colorScheme.surfaceContainerHighest,
      onTap: onTap,
    );
  }
}
