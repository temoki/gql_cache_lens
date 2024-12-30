import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';

import '../../graphql/gen/ferry/new_issue.mutation.req.gql.dart';

final class FerryNewIssueButton extends StatelessWidget {
  const FerryNewIssueButton({
    super.key,
    required this.client,
    required this.repositoryId,
    required this.issueTitle,
    required this.issueBody,
    required this.title,
    required this.disabled,
    required this.onSubmit,
    required this.onCompleted,
    required this.onError,
  });

  final Client client;
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
    return FilledButton(
      onPressed: disabled
          ? null
          : () {
              onSubmit();
              client.request(
                GNewIssueReq((builder) {
                  builder.vars.repositoryId = repositoryId;
                  builder.vars.title = issueTitle;
                  builder.vars.body = issueBody;
                }),
              ).listen(
                (response) {
                  final issueId = response.data?.createIssue?.issue?.id;
                  if (issueId != null) {
                    onCompleted(issueId);
                  } else {
                    onError('Failed to create issue');
                  }
                },
                // ignore: inference_failure_on_untyped_parameter
                onError: (error) => onError('Failed to create issue: $error'),
              );
            },
      child: Text(title),
    );
  }
}
