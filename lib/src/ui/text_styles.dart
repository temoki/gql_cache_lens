import 'package:flutter/painting.dart';

/// Roboto Mono, which `devtools_app_shared` bundles as a font asset.
///
/// devtools_extensions depends on devtools_app_shared, so the font is always
/// included in the extension build.
const monospaceTextStyle = TextStyle(
  fontFamily: 'RobotoMono',
  package: 'devtools_app_shared',
);
