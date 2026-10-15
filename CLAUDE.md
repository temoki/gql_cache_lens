# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

`gql_cache_lens` is a Flutter **DevTools extension** (built on `devtools_extensions`) that shows the GraphQL cache of a running Flutter app. It supports the `graphql`/`graphql_flutter` and `ferry`/`ferry_flutter` packages. The package is a Flutter web app that DevTools loads in an iframe. It is not a library that host apps import.

## Commands

```sh
make build      # Build the extension web app into extension/devtools/build (see caveat below)
make validate   # dart run devtools_extensions validate --package=.
make publish    # flutter pub publish

flutter analyze           # Lints come from pedantic_mono (analysis_options.yaml)
flutter test              # test/widget_test.dart is only a placeholder
flutter test test/widget_test.dart --plain-name '<name>'   # Run a single test
```

**Entry point rename:** the extension's entry point is `lib/gql_cache_lens.dart`. `devtools_extensions build_and_copy` expects `lib/main.dart`, so `make build` renames the file to `lib/main.dart`, builds, then renames it back (issue #10). If a build fails partway, check whether `lib/main.dart` was left behind and rename it back. The VS Code launch config "gql_cache_lens + simulated environment" also points at `lib/main.dart`, so that file must be renamed temporarily before you use it.

**Build output is committed:** `extension/devtools/build/` is checked in, because it is what pub.dev users actually get. Run `make build` and commit the result after any change under `lib/`.

## Architecture

### Data flow between the host app and the extension

1. The host app (the app being debugged) registers a VM service extension named **`ext.gql_cache_lens.load`**. Its handler returns its cache `Store` as a JSON-encoded map. See README.md and `example/lib/main.dart` for the graphql and ferry variants. The method name is a public contract shared with users' apps, so do not change it.
2. `AppService` (`lib/src/service/app_service.dart`) is a `ChangeNotifier`. It calls that extension through `serviceManager.callServiceExtensionOnMainIsolate`.
3. `GqlCacheMaps.fromJson` (`lib/src/service/gql_cache.dart`) splits the flat store map into three categories:
   - `query`: the `Query` root entry, without `__typename`
   - `mutation`: the `Mutation` root entry, without `__typename`
   - `normalized`: every other key, meaning normalized entities keyed by data ID

   `fromJson` mutates the input map in place.
4. The UI reads `AppService` through `AppServiceProvider`, an `InheritedWidget` whose `of` does not register a dependency. Widgets rebuild by wrapping themselves in `ListenableBuilder(listenable: appService)`.

### UI

- `RootPage` shows one tab per `GqlCacheCategory` (Cache / Query / Mutation). It fetches the cache in `didChangeDependencies`, and its refresh button fetches it again.
- `ObjectPage` renders any JSON value as a recursive tree of `ExpansionTile`s. A leaf whose key is `$ref` is resolved against `gqlCache.normalized`, and tapping it pushes a new `ObjectPage` for the referenced entity. This is how normalized references are followed.

### Example app (`example/`)

The example is a GitHub-issues app (package name `github_issue_app`) that depends on this package through a path dependency. It exercises both supported GraphQL clients behind a `UiFactory` interface, and picks one at runtime from `--dart-define`s.

- Copy `example/.env.example` to `example/.env` and fill in `GITHUB_TOKEN`, `GITHUB_REPO_OWNER`, `GITHUB_REPO_NAME`, and `GRAPHQL_PACKAGE` (`graphql` or `ferry`).
- Run it from `example/` with `flutter run --dart-define-from-file .env`. This matches the "example app (debug)" VS Code launch config. Then open DevTools and enable the gql_cache_lens extension.
- The generated GraphQL code under `example/lib/src/graphql/gen/` is committed. After changing the `.graphql` files, regenerate it from `example/` with `dart run build_runner build` (configured in `example/build.yaml`).

## Releasing

When releasing, bump the version in **both** `pubspec.yaml` and `extension/devtools/config.yaml`, and update the version in README.md's install snippet. Add an entry to `CHANGELOG.md` and run `make build`. Pushing a tag of the form `X.Y.Z` triggers `.github/workflows/publish.yml`, which publishes to pub.dev.
