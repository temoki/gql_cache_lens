import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final class IssuesPage extends StatelessWidget {
  const IssuesPage({super.key});

  static const _repoOwner = String.fromEnvironment('REPO_OWNER');
  static const _repoName = String.fromEnvironment('REPO_NAME');
  static const _issuesQuery = r'''
query Issues($owner: String!, $name: String!) {
  repository(owner: $owner, name: $name) {
    issues(first: 50, states: OPEN) {
      edges {
        node {
          title
          number
          createdAt
          updatedAt
          author {
            login
          }
          labels(first: 5) {
            edges {
              node {
                name
              }
            }
          }
        }
      }
    }
  }
}
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Issues'),
      ),
      body: Query(
        options: QueryOptions(document: gql(_issuesQuery)),
        builder: (result, {refetch, fetchMore}) {
          if (result.hasException) {
            return Text(result.exception.toString());
          }

          if (result.isLoading) {
            return const Text('Loading');
          }

          List<Map<String, dynamic>> repositories;
          try {
            final viewer = result.data?['viewer'] as Map<String, dynamic>;
            final repos = viewer['repositories'] as Map<String, dynamic>;
            final nodes = repos['nodes'] as List<dynamic>;
            repositories = nodes.cast<Map<String, dynamic>>();
          } catch (_) {
            repositories = [];
          }

          if (repositories.isEmpty) {
            return const Text('No repositories');
          }

          return ListView.builder(
              itemCount: repositories.length,
              itemBuilder: (context, index) {
                final repository = repositories[index];
                return Text(repository['name']?.toString() ?? '');
              });
        },
      ),
    );
  }
}
