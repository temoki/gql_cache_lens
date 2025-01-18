.PHONY: build validate

# Build the devtools extension
# Temporarily rename the entry point Dart file as a workaround for the build_and_copy issue
# see: https://github.com/temoki/gql_cache_lens/issues/10
build:
	mv lib/gql_cache_lens.dart lib/main.dart
	flutter pub get
	dart run devtools_extensions build_and_copy --source=. --dest=extension/devtools
	mv lib/main.dart lib/gql_cache_lens.dart

# Validate the devtools extension
validate:
	flutter pub get
	dart run devtools_extensions validate --package=.

# Publish the devtools extension
publish:
	flutter pub publish
