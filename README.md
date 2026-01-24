# DZFoundation

Shared Swift framework providing common utilities for all Swift projects.

## Requirements

- macOS 14.0+
- iOS 17.0+
- Swift 6

## Installation

Add as a local package dependency in Xcode:

1. File → Add Package Dependencies
2. Click "Add Local..."
3. Select the `DZFoundation` folder

## Usage

### Logging

```swift
import DZFoundation

// General debug logging
DZLog("Starting fetch")
// Output: 🔶 fetchData() 42: Starting fetch

// Conditional error logging (only prints if error is non-nil)
DZErrorLog(error)
// Output: ❌ MyFile.swift:45 fetchData() ERROR: Network unavailable
```

Both functions are **no-ops in release builds** — zero overhead in production.

## API Reference

### `DZLog(_:function:line:)`

Prints a debug message with the function name and line number.

```swift
public func DZLog(_ message: String, function: String = #function, line: Int = #line)
```

### `DZErrorLog(_:function:line:file:)`

Conditionally prints an error with file name, line number, function name, and localized description. Only prints if the error is non-nil.

```swift
public func DZErrorLog(_ error: Error?, function: String = #function, line: Int = #line, file: String = #file)
```
