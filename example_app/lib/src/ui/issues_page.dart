import 'package:flutter/material.dart';
import 'package:github_issue_app/src/ui/new_issue_page.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:intl/intl.dart';

final class IssuesPage extends StatelessWidget {
  const IssuesPage({
    super.key,
    required this.repositoryOwner,
    required this.repositoryName,
  });

  final String repositoryOwner;
  final String repositoryName;

  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
        document: gql(_queryIssues),
        variables: {'owner': repositoryOwner, 'name': repositoryName},
      ),
      builder: (result, {refetch, fetchMore}) {
        final json = result.data ?? const {};
        final repoId = _parseRepositoryId(json);
        final issues = _parseIssues(json);

        Future<void> refresh() async {
          await refetch?.call();
        }

        final Widget listItemEnd;
        if (result.hasException) {
          listItemEnd = _ExceptionTile(result.exception!, onRetry: refresh);
        } else if (result.isLoading) {
          listItemEnd = const _LoadingTile();
        } else if (issues.isEmpty) {
          listItemEnd = const _EmptyTile();
        } else {
          listItemEnd = const SizedBox.shrink();
        }

        return Scaffold(
          appBar: AppBar(
            title: Text('$repositoryOwner/$repositoryName'),
          ),
          body: RefreshIndicator(
            onRefresh: refresh,
            child: ListView.separated(
              itemCount: issues.length + 1,
              itemBuilder: (_, index) => index == issues.length
                  ? listItemEnd
                  : _IssueTile(issues[index]),
              separatorBuilder: (_, __) => const Divider(
                height: 1,
                thickness: 1,
              ),
            ),
          ),
          floatingActionButton: repoId != null
              ? FloatingActionButton(
                  onPressed: () async {
                    final result = await showModalBottomSheet<bool>(
                      context: context,
                      builder: (_) => NewIssuePage(repositoryId: repoId),
                    );
                    if (result == true) {
                      await refetch?.call();
                    }
                  },
                  child: const Icon(Icons.add),
                )
              : null,
        );
      },
    );
  }
}

const _queryIssues = r'''
query GetIssues($owner: String!, $name: String!) {
  repository(owner: $owner, name: $name) {
    id
    issues(first: 50, states: OPEN, orderBy: {field: CREATED_AT, direction: DESC}) {
      edges {
        node {
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
  }
}
''';

String? _parseRepositoryId(Map<String, dynamic> json) {
  if (json.isEmpty) {
    return null;
  }
  final repository = json['repository'] as Map<String, dynamic>;
  return repository['id'] as String;
}

List<_Issue> _parseIssues(Map<String, dynamic> json) {
  if (json.isEmpty) {
    return [];
  }
  final repository = json['repository'] as Map<String, dynamic>;
  final issues = repository['issues'] as Map<String, dynamic>;
  final edges = issues['edges'] as List<dynamic>;
  return edges
      .cast<Map<String, dynamic>>()
      .map((edge) => edge['node'] as Map<String, dynamic>)
      .map(_Issue.fromJson)
      .toList();
}

@immutable
final class _Issue {
  const _Issue({
    required this.number,
    required this.title,
    required this.author,
    required this.createdAt,
  });

  factory _Issue.fromJson(Map<String, dynamic> json) {
    return _Issue(
      number: json['number'] as int,
      title: json['title'] as String,
      author: (json['author'] as Map<String, dynamic>)['login'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );
  }

  final int number;
  final String title;
  final String author;
  final DateTime createdAt;
}

final class _IssueTile extends StatelessWidget {
  const _IssueTile(this.issue);

  final _Issue issue;

  @override
  Widget build(BuildContext context) {
    final formattedDate =
        DateFormat('yyyy/MM/dd HH:mm').format(issue.createdAt.toLocal());

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

final class _ExceptionTile extends StatelessWidget {
  const _ExceptionTile(this.exception, {this.onRetry});

  final Exception exception;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        exception.toString(),
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
