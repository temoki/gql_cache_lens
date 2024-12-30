// ignore_for_file: omit_local_variable_types

import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'src/environment.dart';
import 'src/infra/graph_ql_client_factory.dart';
import 'src/ui/app.dart';

void main() {
  final GraphQLClient client = GraphQLClientFactory.gitHubClient(
    token: Environment.githubToken,
  );

  if (kDebugMode) {
    registerExtension('ext.gql_cache_lens.load', (_, __) async {
      final GraphQLCache cache = client.cache;
      final Store store = cache.store;
      final cacheJson = jsonEncode(store.toMap());
      return ServiceExtensionResponse.result(cacheJson);
    });
  }

  runApp(
    GraphQLProvider(
      client: ValueNotifier(client),
      child: const App(),
    ),
  );
}
