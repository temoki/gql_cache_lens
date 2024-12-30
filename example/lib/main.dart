// ignore_for_file: omit_local_variable_types

import 'dart:convert';
import 'dart:developer';

import 'package:ferry/ferry.dart' as ferry;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart' as graphql;

import 'src/ui/ferry/ferry_factory.dart';
import 'src/ui/graphql/graphql_factory.dart';
import 'src/ui_factory.dart';

const githubApiUrl = 'https://api.github.com/graphql';
const githubToken = String.fromEnvironment('GITHUB_TOKEN');
const githubRepoOwner = String.fromEnvironment('GITHUB_REPO_OWNER');
const githubRepoName = String.fromEnvironment('GITHUB_REPO_NAME');
const graphqlPackage = String.fromEnvironment('GRAPHQL_PACKAGE');

void main() {
  final factory = switch (graphqlPackage) {
    'graphql' => _createGraphqlFactory(),
    'ferry' => _createFerryFactory(),
    _ => throw ArgumentError('Unknown GraphQL package: $graphqlPackage'),
  };
  runApp(factory.makeApp());
}

UiFactory _createGraphqlFactory() {
  final factory = GraphqlFactory(
    githubToken: githubToken,
    githubApiUrl: githubApiUrl,
    repositoryOwner: githubRepoOwner,
    repositoryName: githubRepoName,
  );

  if (kDebugMode) {
    registerExtension('ext.gql_cache_lens.load', (_, __) async {
      final graphql.GraphQLClient client = factory.client;
      final graphql.GraphQLCache cache = client.cache;
      final graphql.Store store = cache.store;
      final cacheMap = store.toMap();
      final cacheJson = jsonEncode(cacheMap);
      return ServiceExtensionResponse.result(cacheJson);
    });
  }

  return factory;
}

UiFactory _createFerryFactory() {
  final factory = FerryFactory(
    githubToken: githubToken,
    githubApiUrl: githubApiUrl,
    repositoryOwner: githubRepoOwner,
    repositoryName: githubRepoName,
  );

  if (kDebugMode) {
    registerExtension('ext.gql_cache_lens.load', (_, __) async {
      final ferry.Client client = factory.client;
      final ferry.Cache cache = client.cache;
      final ferry.Store store = cache.store;
      final cacheEntries = store.keys.map((k) => MapEntry(k, store.get(k)));
      final cacheMap = Map.fromEntries(cacheEntries);
      final cacheJson = jsonEncode(cacheMap);
      return ServiceExtensionResponse.result(cacheJson);
    });
  }

  return factory;
}
