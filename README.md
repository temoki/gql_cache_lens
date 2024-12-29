# gql_cache_lens
A Flutter DevTools Extension for inspecting GraphQL cache

## Features
- View the entire GraphQL cache
- Inspect individual cache entries

## Supported GraphQL Packages
Currently, `gql_cache_lens` supports the following GraphQL packages:
- [graphql](https://pub.dev/packages/graphql)
- [graphql_flutter](https://pub.dev/packages/graphql_flutter)

## Screenshots
<img width="300" src="https://github.com/temoki/gql_cache_lens/raw/main/screenshot_1.png" /> <img width="300" src="https://github.com/temoki/gql_cache_lens/raw/main/screenshot_2.png" />

## Installation
To install `gql_cache_lens`, add the package to your `pubspec.yaml` file:
```yaml
dev_dependencies:
  gql_cache_lens: ^0.4.0
```

Alternatively, you can run the following command
```
flutter pub add --dev gql_cache_lens
```

## Usage
To use `gql_cache_lens`, add a `ServiceExtensionHandler` as shown below.
Return a JSON-encoded Map obtained from the `Store`'s `toMap()` method in the `ServiceExtensionResponse`'s result.

```dart
final GrpahQLClient client = ...;
registerExtension('ext.gql_cache_lens.load', (_, __) async {
    final cacheMap = client.cache.store.toMap();
    final cacheJson = jsonEncode(cacheMap);
    return ServiceExtensionResponse.result(cacheJson);
});
```

## Contributing
Contributions are welcome! If you find a bug or have a feature request, please open an issue.

## License
This project is licensed under the MIT License.
See the LICENSE file for details.
