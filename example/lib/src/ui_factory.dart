import 'package:flutter/widgets.dart';

abstract interface class UiFactory {
  Widget makeApp();

  Widget makeIssuesPage();

  Widget makeNewIssueSheet({
    required String repositoryId,
  });

  Widget makeNewIssueButton({
    required String repositoryId,
    required String issueTitle,
    required String issueBody,
    required String title,
    required bool disabled,
    required void Function() onSubmit,
    required void Function(String issueId) onCompleted,
    required void Function(String message) onError,
  });
}
