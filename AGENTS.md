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

## Build Commands
Never write build output into the project directory; pass `--scratch-path` pointing outside the project tree instead of relying on the default `.build` folder.
```bash
# Build
swift build

# Clean
swift package clean
```

A pre-commit hook automatically formats staged Swift files.

## Testing (MANDATORY)
```bash
swift test
```
