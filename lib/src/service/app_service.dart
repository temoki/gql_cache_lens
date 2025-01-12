import 'package:devtools_extensions/devtools_extensions.dart';
import 'package:flutter/widgets.dart';

import 'gql_cache.dart';

final class AppService extends ChangeNotifier {
  GqlCacheMaps get gqlCache => _gqlCache;

  GqlCacheMaps _gqlCache = const GqlCacheMaps();

  Future<void> requestGqlCache() async {
    const method = 'ext.gql_cache_lens.load';
    final response =
        await serviceManager.callServiceExtensionOnMainIsolate(method);
    final json = response.json ?? {};
    _gqlCache = GqlCacheMaps.fromJson(json);
    notifyListeners();
  }
}
