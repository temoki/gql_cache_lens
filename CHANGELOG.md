# Changelog

## [1.1.1] - 2026-10-17
### Changed
- Updated the README screenshot. No code changes.

## [1.1.0] - 2026-10-16
### Added
- Added keyboard navigation.
  - Up / Down moves the selection in the cache list and in the detail panel.
  - Right / Left expands / collapses an item in the detail panel, and moves the focus between the cache list and the detail panel.
  - Enter expands / collapses an item or follows a `$ref`.
  - Escape closes the detail panel.

### Changed
- Cache entry details are now shown in a resizable side panel instead of a separate page.
- Supported `devtools_extensions` 0.5.
- Removed the dependency on `google_fonts`. The monospace font bundled with DevTools is used instead, so fonts are no longer downloaded at runtime.
- Raised the minimum SDK versions to Dart 3.8 and Flutter 3.32.

## [1.0.0] - 2025-01-18
### Fixed
- Fix publishing issue. [#10](https://github.com/temoki/gql_cache_lens/issues/10)

## [0.9.0] - 2025-01-13
### Changed
- Downgraded the minimum version of `devtools_extensions` to 0.2.2.
 
## [0.8.0] - 2025-01-12
### Changed
- Internal refactoring.

## [0.7.0] - 2025-01-11
### Added
- Added CHANGELOG.md.

### Changed
- Upgraded the minimum version of `devtools_extensions` to 0.3.0.
- Updated to improve PUB POINTS.

## [0.6.1] - 2024-12-30
### Fixed
- Fix readme.

## [0.6.0] - 2024-12-30
### Added
- Added support for `ferry` and `ferry_flutter` packages.
