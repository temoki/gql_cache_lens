.PHONY: build validate

# Build the devtools extension
build:
	dart run devtools_extensions build_and_copy --source=. --dest=extension/devtools

# Validate the devtools extension
validate:
	dart run devtools_extensions validate --package=.
