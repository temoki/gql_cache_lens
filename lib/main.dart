import 'package:flutter/material.dart';
import 'package:gql_cache_lens/src/service/app_service.dart';

import 'src/ui/app_service_provider.dart';
import 'src/ui/gql_cache_lens_extension.dart';

/// Entry point of the extension.
void main() {
  runApp(
    AppServiceProvider(
      appService: AppService(),
      child: const GqlCacheLensExtension(),
    ),
  );
}
