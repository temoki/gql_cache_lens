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
    required this.onClose,
  });

  final String dataId;
  final dynamic object;
  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      pages: [
        MaterialPage<void>(
          child: ObjectPage(
            dataId: dataId,
            object: object,
            onClose: onClose,
          ),
        ),
      ],
      onDidRemovePage: (_) {},
    );
  }
}
