import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';

import '../../graphql/gen/ferry/issues.query.req.gql.dart';
import '../../ui_factory.dart';
import '../issue.dart';
import '../issues_page_template.dart';

final class FerryIssuesPage extends StatelessWidget {
  FerryIssuesPage({
    super.key,
    required this.factory,
    required this.client,
    required this.repositoryOwner,
    required this.repositoryName,
  }) : _request = GIssuesReq((builder) {
          builder.vars.owner = repositoryOwner;
          builder.vars.name = repositoryName;
          builder.fetchPolicy = FetchPolicy.NetworkOnly;
        });

  final UiFactory factory;
  final Client client;
  final String repositoryOwner;
  final String repositoryName;
  final GIssuesReq _request;

  @override
  Widget build(BuildContext context) {
    return Operation(
      client: client,
      operationRequest: _request,
      builder: (context, response, error) {
        final repository = response?.data?.repository;
        final issues = repository?.issues.edges
            ?.map((edge) => edge?.node)
            .where((node) => node != null)
            .map(
              (node) => Issue(
                number: node!.number,
                title: node.title,
                author: node.author?.login ?? '',
                createdAt: DateTime.parse(node.createdAt.value),
              ),
            )
            .toList();
        return IssuesPageTemplate(
          factory: factory,
          package: 'ferry',
          repositoryOwner: repositoryOwner,
          repositoryName: repositoryName,
          repositoryId: repository?.id,
          issues: issues ?? [],
          isLoading: response?.loading ?? false,
          error: error,
          onRefresh: () {
            client.requestController.add(_request);
          },
        );
      },
    );
  }
}
