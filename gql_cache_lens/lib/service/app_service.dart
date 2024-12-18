import 'package:devtools_extensions/devtools_extensions.dart';
import 'package:gql_cache_lens/service/gql_cache.dart';

final class AppService {
  const AppService._();

  static Future<GqlCacheView> requestGqlCache() async {
    final response = await serviceManager
        .callServiceExtensionOnMainIsolate('gql_cache_lens.load');
    final json = response.json ?? {};
    return GqlCacheView.fromGraphQLFlutter(json);
  }
}
