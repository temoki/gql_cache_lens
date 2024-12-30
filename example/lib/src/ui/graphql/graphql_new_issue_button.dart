import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../graphql/gen/graphql/new_issue.mutation.graphql.dart';

final class GraphqlNewIssueButton extends StatelessWidget {
  const GraphqlNewIssueButton({
    super.key,
    required this.repositoryId,
    required this.issueTitle,
    required this.issueBody,
    required this.title,
    required this.disabled,
    required this.onSubmit,
    required this.onCompleted,
    required this.onError,
  });

  final String repositoryId;
  final String issueTitle;
  final String issueBody;
  final String title;
  final bool disabled;
  final void Function() onSubmit;
  final void Function(String issueId) onCompleted;
  final void Function(String message) onError;

  @override
  Widget build(BuildContext context) {
    return Mutation$NewIssue$Widget(
      options: WidgetOptions$Mutation$NewIssue(
        fetchPolicy: FetchPolicy.networkOnly,
        onCompleted: (_, issue) {
          final issueId = issue?.createIssue?.issue?.id;
          if (issueId != null) {
            onCompleted(issueId);
          } else {
            onError('Failed to create issue');
          }
        },
        onError: (exception) => onError('Failed to create issue: $exception'),
      ),
      builder: (runMutation, result) {
        return FilledButton(
          onPressed: disabled
              ? null
              : () {
                  onSubmit();
                  runMutation(
                    Variables$Mutation$NewIssue(
                      repositoryId: repositoryId,
                      title: issueTitle,
                      body: issueBody,
                    ),
                  );
                },
          child: Text(title),
        );
      },
    );
  }
}
