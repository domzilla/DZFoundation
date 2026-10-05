# DZFoundation - AGENTS.md

## Project Overview
Shared Swift package providing common utilities for all Swift projects.

## Tech Stack
- **Language**: Swift
- **Type**: Swift Package
- **Platforms**: macOS, iOS

## Guides (MANDATORY)
Read `~/Agents/Guides/xcode-project-guide.md` in full before planning or editing anything.

Read these in full before touching the matching code:
- Swift style (`.swift`): `~/Agents/Style/swift-swiftui-style-guide.md`
- Accessibility (UI code, XIBs, storyboards): `~/Agents/Guides/accessibility-guide.md`

## Localization
- The package has no localizations

## Build Commands
Always pass `--scratch-path /tmp/DZFoundation-build`.
```bash
# Build
swift build --scratch-path /tmp/DZFoundation-build

# Clean
swift package clean --scratch-path /tmp/DZFoundation-build
```

The local pre-commit hook (`.git/hooks/pre-commit`) formats staged Swift files.

## Testing (MANDATORY)
```bash
# macOS
swift test --scratch-path /tmp/DZFoundation-build

# iOS Simulator
xcodebuild test -scheme DZFoundation \
  -destination 'platform=iOS Simulator,name=<available iPhone>'
```
