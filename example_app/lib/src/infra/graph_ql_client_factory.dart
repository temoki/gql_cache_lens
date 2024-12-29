import 'package:graphql_flutter/graphql_flutter.dart';

extension GraphQLClientFactory on GraphQLClient {
  static GraphQLClient gitHubClient({required String token}) {
    final authLink = AuthLink(getToken: () async => 'Bearer $token');
    final httpLink = HttpLink('https://api.github.com/graphql');
    final link = authLink.concat(httpLink);
    final store = InMemoryStore();
    final cache = GraphQLCache(store: store);
    return GraphQLClient(link: link, cache: cache);
  }
}
