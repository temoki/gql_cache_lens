import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../graphql/gen/graphql/issues.query.graphql.dart';
import '../../ui_factory.dart';
import '../issue.dart';
import '../issues_page_template.dart';

final class GraphqlIssuesPage extends StatelessWidget {
  const GraphqlIssuesPage({
    super.key,
    required this.factory,
    required this.repositoryOwner,
    required this.repositoryName,
  });

  final UiFactory factory;
  final String repositoryOwner;
  final String repositoryName;

  @override
  Widget build(BuildContext context) {
    return Query(
      options: Options$Query$Issues(
        variables: Variables$Query$Issues(
          owner: repositoryOwner,
          name: repositoryName,
        ),
      ),
      builder: (result, {refetch, fetchMore}) {
        final repository = result.parsedData?.repository;
        final repositoryId = repository?.id;
        final issues = repository?.issues.edges
            ?.map((edge) => edge?.node)
            .where((node) => node != null)
            .map(
              (node) => Issue(
                number: node!.number,
                title: node.title,
                author: node.author?.login ?? '',
                createdAt: DateTime.parse(node.createdAt),
              ),
            )
            .toList();
        return IssuesPageTemplate(
          factory: factory,
          package: 'graphql',
          repositoryOwner: repositoryOwner,
          repositoryName: repositoryName,
          repositoryId: repositoryId,
          issues: issues ?? [],
          isLoading: result.isLoading,
          error: result.exception,
          onRefresh: refetch,
        );
      },
    );
  }
}
