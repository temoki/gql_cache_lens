.PHONY: build validate

# Build the devtools extension
build:
	flutter pub get
	dart run devtools_extensions build_and_copy --source=. --dest=extension/devtools

# Validate the devtools extension
validate:
	flutter pub get
	dart run devtools_extensions validate --package=.

# Publish the devtools extension
publish:
	flutter pub publish
