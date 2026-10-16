import 'package:flutter/material.dart';

import 'object_page.dart';

/// Shows the selected cache entry beside the list.
///
/// The panel has its own [Navigator], so following a `$ref` pushes the
/// referenced object inside the panel instead of over the whole page.
final class CacheDetailPanel extends StatelessWidget {
  const CacheDetailPanel({
    super.key,
    required this.dataId,
    required this.object,
    required this.focusNode,
    required this.onClose,
    required this.onExit,
  });

  final String dataId;
  final dynamic object;

  /// The focus node of the first page's tree.
  final FocusNode focusNode;
  final VoidCallback onClose;

  /// Called when the user leaves the panel with the keyboard.
  final VoidCallback onExit;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      // Opening the panel must not take the focus away from the list.
      requestFocus: false,
      pages: [
        MaterialPage<void>(
          child: ObjectPage(
            dataId: dataId,
            object: object,
            focusNode: focusNode,
            onClose: onClose,
            onExit: onExit,
          ),
        ),
      ],
      onDidRemovePage: (_) {},
    );
  }
}
