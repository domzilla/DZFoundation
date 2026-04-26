# DZFoundation - AGENTS.md

## Project Overview
Shared Swift package providing common utilities for all Swift projects.

## Tech Stack
- **Language**: Swift 6
- **Type**: Swift Package
- **Platforms**: macOS 14.0+, iOS 17.0+

## Style & Conventions (MANDATORY)
**Strictly follow** the Swift/SwiftUI style guide: `~/Agents/Style/swift-swiftui-style-guide.md`

## Changelog (MANDATORY)
**All important user facing changes** (fixes, additions, deletions, changes) must be written to CHANGELOG.md.
Changelog format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Additional Guides
- Swift 6 concurrency: `~/Agents/Guides/swift6-concurrency-guide.md`
- Swift 6 migration (compact): `~/Agents/Guides/swift6-migration-compact-guide.md`

## API Documentation
Local Apple API documentation is available at:
`~/Agents/API Documentation/Apple/`

```bash
~/Agents/API\ Documentation/Apple/search --help  # Run once per session
~/Agents/API\ Documentation/Apple/search "Bundle" --language swift
```

## Build & Test Commands
```bash
# Build
swift build

# Run tests
swift test

# Clean
swift package clean
```

## Code Formatting (MANDATORY)
**Always run SwiftFormat after changes:**
```bash
swiftformat .
```

A pre-commit hook automatically formats staged Swift files.

**Do not commit unformatted code.**
