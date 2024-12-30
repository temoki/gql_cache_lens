import 'package:ferry/ferry.dart';
import 'package:flutter/widgets.dart';
import 'package:gql_http_link/gql_http_link.dart';

import '../../ui_factory.dart';
import '../app.dart';
import '../new_issue_sheet.dart';
import 'ferry_issues_page.dart';
import 'ferry_new_issue_button.dart';

final class FerryFactory implements UiFactory {
  FerryFactory({
    required String githubToken,
    required String githubApiUrl,
    required this.repositoryOwner,
    required this.repositoryName,
  }) {
    final httpLink = HttpLink(
      githubApiUrl,
      defaultHeaders: {'Authorization': 'Bearer $githubToken'},
    );
    final store = MemoryStore();
    final cache = Cache(store: store);
    client = Client(link: httpLink, cache: cache);
  }

  late final Client client;
  final String repositoryOwner;
  final String repositoryName;

  @override
  Widget makeApp() => App(
        factory: this,
      );

  @override
  Widget makeIssuesPage() => FerryIssuesPage(
        factory: this,
        client: client,
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
      FerryNewIssueButton(
        client: client,
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
