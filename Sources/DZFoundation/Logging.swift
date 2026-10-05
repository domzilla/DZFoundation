//
//  Logging.swift
//  DZFoundation
//
//  Simple debug logging utility.
//

import Foundation

#if DEBUG
/// Prints a debug message prefixed with the calling function and line. Does nothing in release builds.
///
/// - Parameters:
///   - message: The message to print.
///   - function: The calling function. Defaults to the call site.
///   - line: The calling line. Defaults to the call site.
public func DZLog(_ message: String, function: String = #function, line: Int = #line) {
    print("🔶 \(function) \(line): \(message)")
}

/// Prints an error's localized description with the calling file, line and function. Does nothing if `error` is `nil`
/// or in release builds.
///
/// - Parameters:
///   - error: The error to print.
///   - function: The calling function. Defaults to the call site.
///   - line: The calling line. Defaults to the call site.
///   - file: The calling file. Defaults to the call site.
public func DZErrorLog(_ error: Error?, function: String = #function, line: Int = #line, file: String = #file) {
    guard let error else { return }
    let filename = URL(fileURLWithPath: file).lastPathComponent
    print("❌ \(filename):\(line) \(function) ERROR: \(error.localizedDescription)")
}
#else
/// Prints a debug message prefixed with the calling function and line. Does nothing in release builds.
///
/// - Parameters:
///   - message: The message to print.
///   - function: The calling function. Defaults to the call site.
///   - line: The calling line. Defaults to the call site.
@inlinable
public func DZLog(_: String, function _: String = #function, line _: Int = #line) {}

/// Prints an error's localized description with the calling file, line and function. Does nothing if `error` is `nil`
/// or in release builds.
///
/// - Parameters:
///   - error: The error to print.
///   - function: The calling function. Defaults to the call site.
///   - line: The calling line. Defaults to the call site.
///   - file: The calling file. Defaults to the call site.
@inlinable
public func DZErrorLog(_: Error?, function _: String = #function, line _: Int = #line, file _: String = #file) {}
#endif
