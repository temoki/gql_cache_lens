import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:github_issue_app/src/infra/graph_ql_client_factory.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'src/environment.dart';
import 'src/ui/app.dart';

void main() {
  final client = GraphQLClientFactory.gitHubClient(
    token: Environment.githubToken,
  );

  registerExtension('ext.gql_cache_lens.load', (_, __) async {
    final cacheMap = client.cache.store.toMap();
    final cacheJson = jsonEncode(cacheMap);
    return ServiceExtensionResponse.result(cacheJson);
  });

  runApp(
    GraphQLProvider(
      client: ValueNotifier(client),
      child: const App(),
    ),
  );
}
