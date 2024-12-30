# gql_cache_lens
A Flutter [DevTools extension](https://pub.dev/packages/devtools_extensions) for inspecting GraphQL cache

## Features
This package adds a new tool to Flutter's DevTools, utilizing the [devtools_extensions](https://pub.dev/packages/devtools_extensions) framework. With this tool, you can:

- View a list of data stored in the GraphQL cache store
  - The data list is categorized into three tabs: Cache, Query, and Mutation
- Inspect the details of each cache entry

## Supported GraphQL Packages
Currently, `gql_cache_lens` supports the following GraphQL packages:
- [graphql](https://pub.dev/packages/graphql), [graphql_flutter](https://pub.dev/packages/graphql_flutter)
- [ferry](https://pub.dev/packages/ferry), [ferry_flutter](ferry_flutter: ^0.9.0)

## Screenshots
<img width="300" src="https://github.com/temoki/gql_cache_lens/raw/main/screenshot_1.png" /> <img width="300" src="https://github.com/temoki/gql_cache_lens/raw/main/screenshot_2.png" />

## Installation
To install `gql_cache_lens`, add the package to your `pubspec.yaml` file:
```yaml
dev_dependencies:
  gql_cache_lens: ^0.6.0
```

Alternatively, you can run the following command
```
flutter pub add --dev gql_cache_lens
```

## Usage
To use `gql_cache_lens`, add a `ServiceExtensionHandler` as shown below.
Return a JSON-encoded Map obtained from the `Store` in the `ServiceExtensionResponse`'s result.

### For graphql package
```dart
final GrpahQLClient client = ...;
registerExtension('ext.gql_cache_lens.load', (_, __) async {
  final GraphQLCache cache = client.cache;
  final Store store = cache.store;
  final cacheJson = jsonEncode(store.toMap());
  return ServiceExtensionResponse.result(cacheJson);
});
```

### For ferry package
```dart
final Client client = ...;
registerExtension('ext.gql_cache_lens.load', (_, __) async {
    final Cache cache = client.cache;
    final Store store = cache.store;
    final cacheEntries = store.keys.map((k) => MapEntry(k, store.get(k)));
    final cacheMap = Map.fromEntries(cacheEntries);
    final cacheJson = jsonEncode(cacheMap);
  return ServiceExtensionResponse.result(cacheJson);
});
```

## Contributing
Contributions are welcome! If you find a bug or have a feature request, please open an issue.

## License
This project is licensed under the MIT License.
See the LICENSE file for details.
