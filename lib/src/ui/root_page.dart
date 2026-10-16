import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../service/gql_cache.dart';
import 'app_service_provider.dart';
import 'cache_detail_panel.dart';

final class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootState();
}

final class _RootState extends State<RootPage>
    with SingleTickerProviderStateMixin {
  _RootState();

  static const _minPaneWidth = 240.0;

  late final TabController _tabController;
  final _focusNode = FocusNode(debugLabel: 'RootPage');

  /// The selected data ID of each tab.
  final _selectedKeys = <GqlCacheCategory, String>{};

  /// The width of the detail panel relative to the whole body.
  double _detailWidthFraction = 0.5;

  GqlCacheCategory get _currentCategory =>
      GqlCacheCategory.values[_tabController.index];

  @override
  void initState() {
    _tabController = TabController(
      length: GqlCacheCategory.values.length,
      vsync: this,
    )..addListener(_onTabChanged);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    AppServiceProvider.of(context).requestGqlCache();
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _tabController
      ..removeListener(_onTabChanged)
      ..dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onTabChanged() {
    if (_tabController.indexIsChanging) {
      return;
    }
    setState(() {});
  }

  void _select(GqlCacheCategory category, String? dataId) {
    setState(() {
      if (dataId == null) {
        _selectedKeys.remove(category);
      } else {
        _selectedKeys[category] = dataId;
      }
    });
  }

  void _moveSelection(int delta) {
    final category = _currentCategory;
    final dataIds = AppServiceProvider.of(
      context,
    ).gqlCache[category].keys.toList();
    if (dataIds.isEmpty) {
      return;
    }
    final selectedKey = _selectedKeys[category];
    final current = selectedKey == null ? -1 : dataIds.indexOf(selectedKey);
    final next = current < 0
        ? (delta > 0 ? 0 : dataIds.length - 1)
        : (current + delta).clamp(0, dataIds.length - 1);
    _select(category, dataIds[next]);
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
        const SingleActivator(LogicalKeyboardKey.escape): () =>
            _select(_currentCategory, null),
      },
      child: Focus(
        focusNode: _focusNode,
        autofocus: true,
        child: Scaffold(
          appBar: AppBar(
            title: const Row(
              children: [
                Icon(Icons.center_focus_strong),
                SizedBox(width: 8),
                Text(
                  'GraphQL Cache Lens',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: appService.requestGqlCache,
              ),
            ],
            bottom: TabBar(
              controller: _tabController,
              tabAlignment: TabAlignment.fill,
              tabs: GqlCacheCategory.values
                  .map((category) => Tab(text: category.title))
                  .toList(),
            ),
          ),
          body: ListenableBuilder(
            listenable: appService,
            builder: (_, _) {
              final gqlCache = appService.gqlCache;
              final category = _currentCategory;
              final cacheMap = gqlCache[category];
              final selectedKey = _selectedKeys[category];
              final tabView = TabBarView(
                controller: _tabController,
                children: GqlCacheCategory.values
                    .map(
                      (category) => _CacheMapView(
                        cacheMap: gqlCache[category],
                        selectedKey: _selectedKeys[category],
                        onSelect: (dataId) {
                          _select(category, dataId);
                          _focusNode.requestFocus();
                        },
                      ),
                    )
                    .toList(),
              );
              if (selectedKey == null || !cacheMap.containsKey(selectedKey)) {
                return tabView;
              }
              return LayoutBuilder(
                builder: (_, constraints) {
                  final totalWidth = constraints.maxWidth;
                  final maxWidth = math.max<double>(
                    totalWidth - _minPaneWidth,
                    0,
                  );
                  final minWidth = math.min(_minPaneWidth, maxWidth);
                  final detailWidth = (totalWidth * _detailWidthFraction).clamp(
                    minWidth,
                    maxWidth,
                  );
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(child: tabView),
                      _ResizeHandle(
                        onDragUpdate: (dx) => setState(() {
                          // Dragging to the left widens the detail panel.
                          final width = (totalWidth * _detailWidthFraction - dx)
                              .clamp(minWidth, maxWidth);
                          _detailWidthFraction = width / totalWidth;
                        }),
                      ),
                      SizedBox(
                        width: detailWidth,
                        child: CacheDetailPanel(
                          key: ValueKey((category, selectedKey)),
                          dataId: selectedKey,
                          object: cacheMap[selectedKey],
                          onClose: () => _select(category, null),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

extension on GqlCacheCategory {
  String get title => switch (this) {
    GqlCacheCategory.normalized => 'Cache',
    GqlCacheCategory.query => 'Query',
    GqlCacheCategory.mutation => 'Mutation',
  };
}

final class _ResizeHandle extends StatelessWidget {
  const _ResizeHandle({required this.onDragUpdate});

  final ValueChanged<double> onDragUpdate;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.resizeColumn,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onHorizontalDragUpdate: (details) => onDragUpdate(details.delta.dx),
        child: const VerticalDivider(width: 8, thickness: 1),
      ),
    );
  }
}

final class _CacheMapView extends StatefulWidget {
  const _CacheMapView({
    required this.cacheMap,
    required this.selectedKey,
    required this.onSelect,
  });

  final Map<String, dynamic> cacheMap;
  final String? selectedKey;
  final ValueChanged<String> onSelect;

  @override
  State<_CacheMapView> createState() => _CacheMapViewState();
}

final class _CacheMapViewState extends State<_CacheMapView> {
  final GlobalKey _selectedItemKey = GlobalKey();

  @override
  void didUpdateWidget(_CacheMapView oldWidget) {
    super.didUpdateWidget(oldWidget);
    final selectedKey = widget.selectedKey;
    final oldSelectedKey = oldWidget.selectedKey;
    if (selectedKey == null || selectedKey == oldSelectedKey) {
      return;
    }
    final dataIds = widget.cacheMap.keys.toList();
    final movedDown =
        oldSelectedKey == null ||
        dataIds.indexOf(selectedKey) > dataIds.indexOf(oldSelectedKey);
    // Scroll only as far as needed to keep the selected item visible.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final itemContext = _selectedItemKey.currentContext;
      if (!mounted || itemContext == null) {
        return;
      }
      Scrollable.ensureVisible(
        itemContext,
        duration: const Duration(milliseconds: 100),
        alignmentPolicy: movedDown
            ? ScrollPositionAlignmentPolicy.keepVisibleAtEnd
            : ScrollPositionAlignmentPolicy.keepVisibleAtStart,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final cacheMap = widget.cacheMap;
    final selectedKey = widget.selectedKey;
    final colorScheme = Theme.of(context).colorScheme;
    return ListView.separated(
      itemCount: cacheMap.length,
      itemBuilder: (_, index) {
        final dataId = cacheMap.keys.elementAt(index);
        final isSelected = dataId == selectedKey;
        return ListTile(
          key: isSelected ? _selectedItemKey : null,
          title: Text(
            dataId,
            style: GoogleFonts.robotoMono(),
          ),
          selected: isSelected,
          selectedTileColor: colorScheme.secondaryContainer,
          onTap: () => widget.onSelect(dataId),
        );
      },
      separatorBuilder: (_, _) => const Divider(
        height: 1,
        thickness: 1,
      ),
    );
  }
}
