import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class NewIssuePage extends StatefulWidget {
  const NewIssuePage({super.key, required this.repositoryId});

  final String repositoryId;

  @override
  State<NewIssuePage> createState() => _NewIssuePageState();
}

class _NewIssuePageState extends State<NewIssuePage> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  var _isSubmitting = false;

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _titleController,
            decoration: const InputDecoration(labelText: 'Add a title'),
            readOnly: _isSubmitting,
            onChanged: (_) => setState(() {}),
          ),
          TextField(
            controller: _descriptionController,
            decoration: const InputDecoration(labelText: 'Add a description'),
            readOnly: _isSubmitting,
            minLines: 4,
            maxLines: 8,
          ),
          const SizedBox(height: 16),
          Mutation(
            options: MutationOptions(
              document: gql(_createIssueMutation),
              fetchPolicy: FetchPolicy.networkOnly,
              onCompleted: (_) => Navigator.of(context).pop(true),
              onError: (exception) {
                setState(() => _isSubmitting = false);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(exception.toString())),
                );
              },
            ),
            builder: (runMutation, QueryResult? result) {
              return FilledButton(
                onPressed: !_isSubmitting && _titleController.text.isNotEmpty
                    ? () {
                        setState(() => _isSubmitting = true);
                        runMutation({
                          'repositoryId': widget.repositoryId,
                          'title': _titleController.text,
                          'description': _descriptionController.text,
                        });
                      }
                    : null,
                child: Text(
                  _isSubmitting ? 'Submitting ...' : 'Submit new issue',
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

const String _createIssueMutation = r'''
mutation($repositoryId: ID!, $title: String!, $description: String) {
  createIssue(input: {repositoryId: $repositoryId, title: $title, body: $description}) {
    issue {
      id
      number
      title
      createdAt
      author {
        login
      }
    }
  }
}
''';
