import 'package:flutter/widgets.dart';

/// Scrolls the widget that has [key] into view after the next frame.
///
/// It scrolls only as far as needed. [forward] tells whether the selection
/// moved toward the end of the list, which decides the edge to align to.
void scrollIntoView(GlobalKey key, {required bool forward}) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    final context = key.currentContext;
    if (context == null) {
      return;
    }
    Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 100),
      alignmentPolicy: forward
          ? ScrollPositionAlignmentPolicy.keepVisibleAtEnd
          : ScrollPositionAlignmentPolicy.keepVisibleAtStart,
    );
  });
}
