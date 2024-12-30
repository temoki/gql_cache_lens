import 'package:devtools_extensions/devtools_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gql_cache_lens/src/ui/root_page.dart';

class GqlCacheLensExtension extends StatelessWidget {
  const GqlCacheLensExtension({super.key});

  @override
  Widget build(BuildContext context) {
    return const DevToolsExtension(
      child: RootPage(),
    );
  }
}