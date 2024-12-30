import 'package:devtools_extensions/devtools_extensions.dart';

import 'gql_cache.dart';

final class AppService {
  const AppService._();

  static Future<GqlCacheView> requestGqlCache() async {
    final response = await serviceManager
        .callServiceExtensionOnMainIsolate('ext.gql_cache_lens.load');
    final json = response.json ?? {};
    return GqlCacheView.fromGraphQLFlutter(json);
  }
}
