import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../ui_factory.dart';
import 'issue.dart';

final class IssuesPageTemplate extends StatelessWidget {
  const IssuesPageTemplate({
    super.key,
    required this.factory,
    required this.package,
    required this.repositoryOwner,
    required this.repositoryName,
    this.repositoryId,
    required this.issues,
    required this.isLoading,
    this.error,
    this.onRefresh,
  });

  final UiFactory factory;
  final String package;
  final String repositoryOwner;
  final String repositoryName;
  final String? repositoryId;
  final List<Issue> issues;
  final bool isLoading;
  final Object? error;
  final VoidCallback? onRefresh;

  @override
  Widget build(BuildContext context) {
    final Widget listItemEnd;
    if (isLoading) {
      listItemEnd = const _LoadingTile();
    } else if (error != null) {
      listItemEnd = _ErrorTile(error!, onRetry: onRefresh);
    } else if (issues.isEmpty) {
      listItemEnd = const _EmptyTile();
    } else {
      listItemEnd = const SizedBox.shrink();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Issues @$package'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(20),
          child: Text('$repositoryOwner/$repositoryName'),
        ),
        actions: [
          if (repositoryId != null)
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: onRefresh,
            ),
        ],
      ),
      body: ListView.separated(
        itemCount: issues.length + 1,
        itemBuilder: (_, index) =>
            index == issues.length ? listItemEnd : _IssueTile(issues[index]),
        separatorBuilder: (_, __) => const Divider(
          height: 1,
          thickness: 1,
        ),
      ),
      floatingActionButton: repositoryId != null
          ? FloatingActionButton(
              onPressed: () async {
                final createdIssueId = await showModalBottomSheet<String?>(
                  context: context,
                  builder: (context) => factory.makeNewIssueSheet(
                    repositoryId: repositoryId!,
                  ),
                );
                if (createdIssueId != null) {
                  onRefresh?.call();
                }
              },
              child: const Icon(Icons.add),
            )
          : null,
    );
  }
}

final class _IssueTile extends StatelessWidget {
  const _IssueTile(this.issue);

  final Issue issue;

  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat('yyyy/MM/dd HH:mm').format(
      issue.createdAt.toLocal(),
    );
    return ListTile(
      title: Text(issue.title),
      subtitle: Text(
        '#${issue.number} '
        'opened on $formattedDate '
        'by ${issue.author}',
      ),
    );
  }
}

final class _ErrorTile extends StatelessWidget {
  const _ErrorTile(this.error, {this.onRetry});

  final Object error;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        error.toString(),
        style: TextStyle(color: Theme.of(context).colorScheme.error),
      ),
      trailing: TextButton(
        onPressed: onRetry,
        child: const Text('Retry'),
      ),
    );
  }
}

final class _LoadingTile extends StatelessWidget {
  const _LoadingTile();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: CircularProgressIndicator(),
      ),
    );
  }
}

final class _EmptyTile extends StatelessWidget {
  const _EmptyTile();

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('No repositories'),
    );
  }
}
