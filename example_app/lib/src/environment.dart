final class Environment {
  const Environment._();
  static const githubToken = String.fromEnvironment('GITHUB_TOKEN');
  static const githubRepoOwner = String.fromEnvironment('GITHUB_REPO_OWNER');
  static const githubRepoName = String.fromEnvironment('GITHUB_REPO_NAME');
}
