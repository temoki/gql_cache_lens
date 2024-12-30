import 'package:flutter/material.dart';

import '../ui_factory.dart';

class NewIssueSheet extends StatefulWidget {
  const NewIssueSheet({
    super.key,
    required this.factory,
    required this.repositoryId,
  });

  final UiFactory factory;
  final String repositoryId;

  @override
  State<NewIssueSheet> createState() => _NewIssueSheetState();
}

class _NewIssueSheetState extends State<NewIssueSheet> {
  final _titleController = TextEditingController();
  final _bodyController = TextEditingController();
  var _isSubmitting = false;

  @override
  void dispose() {
    _titleController.dispose();
    _bodyController.dispose();
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
            controller: _bodyController,
            decoration: const InputDecoration(labelText: 'Add a description'),
            readOnly: _isSubmitting,
            minLines: 4,
            maxLines: 8,
          ),
          const SizedBox(height: 16),
          widget.factory.makeNewIssueButton(
            repositoryId: widget.repositoryId,
            issueTitle: _titleController.text,
            issueBody: _bodyController.text,
            title: 'Submit new issue',
            disabled: _isSubmitting || _titleController.text.isEmpty,
            onSubmit: () => setState(() => _isSubmitting = true),
            onCompleted: (issueId) {
              setState(() => _isSubmitting = false);
              Navigator.of(context).pop(issueId);
            },
            onError: (error) {
              setState(() => _isSubmitting = false);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(error)),
              );
            },
          ),
        ],
      ),
    );
  }
}
