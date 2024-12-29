import 'package:flutter/material.dart';
import 'package:github_issue_app/src/environment.dart';

import 'issues_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const IssuesPage(
        repositoryOwner: Environment.githubRepoOwner,
        repositoryName: Environment.githubRepoName,
      ),
    );
  }
}
