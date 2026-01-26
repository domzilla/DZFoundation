# Changelog

All notable changes to DZFoundation will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2025-01-24

### Added

- Initial release of DZFoundation framework
- `DZLog(_:function:line:)` - Debug logging with function name and line number
- `DZErrorLog(_:function:line:file:)` - Conditional error logging with file context
- Both functions are no-ops in release builds for zero production overhead
- Support for macOS 14.0+, iOS 17.0+
- Swift 6 compatibility
