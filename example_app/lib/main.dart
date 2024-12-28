import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'app.dart';

void main() {
  const githubPat = String.fromEnvironment('GITHUB_PAT');
  final authLink = AuthLink(getToken: () => 'Bearer $githubPat');
  final httpLink = HttpLink('https://api.github.com/graphql');
  final link = httpLink.concat(authLink);
  final cache = GraphQLCache(store: InMemoryStore());
  final client = ValueNotifier(GraphQLClient(link: link, cache: cache));
  runApp(GraphQLProvider(client: client, child: const App()));
}
