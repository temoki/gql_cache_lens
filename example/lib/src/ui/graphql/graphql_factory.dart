import 'package:flutter/widgets.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../ui_factory.dart';
import '../app.dart';
import '../new_issue_sheet.dart';
import 'graphql_issues_page.dart';
import 'graphql_new_issue_button.dart';

final class GraphqlFactory implements UiFactory {
  GraphqlFactory({
    required String githubToken,
    required String githubApiUrl,
    required this.repositoryOwner,
    required this.repositoryName,
  }) {
    final authLink = AuthLink(getToken: () async => 'Bearer $githubToken');
    final httpLink = HttpLink(githubApiUrl);
    final link = authLink.concat(httpLink);
    final store = InMemoryStore();
    final cache = GraphQLCache(store: store);
    client = GraphQLClient(link: link, cache: cache);
  }

  late final GraphQLClient client;
  final String repositoryOwner;
  final String repositoryName;

  @override
  Widget makeApp() => GraphQLProvider(
        client: ValueNotifier(client),
        child: App(factory: this),
      );

  @override
  Widget makeIssuesPage() => GraphqlIssuesPage(
        factory: this,
        repositoryOwner: repositoryOwner,
        repositoryName: repositoryName,
      );

  @override
  Widget makeNewIssueSheet({
    required String repositoryId,
  }) =>
      NewIssueSheet(
        factory: this,
        repositoryId: repositoryId,
      );

  @override
  Widget makeNewIssueButton({
    required String repositoryId,
    required String issueTitle,
    required String issueBody,
    required String title,
    required bool disabled,
    required void Function() onSubmit,
    required void Function(String issueId) onCompleted,
    required void Function(String message) onError,
  }) =>
      GraphqlNewIssueButton(
        repositoryId: repositoryId,
        issueTitle: issueTitle,
        issueBody: issueBody,
        title: title,
        disabled: disabled,
        onSubmit: onSubmit,
        onCompleted: onCompleted,
        onError: onError,
      );
}
