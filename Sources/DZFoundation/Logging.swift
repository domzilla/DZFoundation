//
//  Logging.swift
//  DZFoundation
//
//  Simple debug logging utility.
//

import Foundation

#if DEBUG
public func DZLog(_ message: String, function: String = #function, line: Int = #line) {
    print("🔶 \(function) \(line): \(message)")
}

public func DZErrorLog(_ error: Error?, function: String = #function, line: Int = #line, file: String = #file) {
    guard let error else { return }
    let filename = URL(fileURLWithPath: file).lastPathComponent
    print("❌ \(filename):\(line) \(function) ERROR: \(error.localizedDescription)")
}
#else
@inlinable
public func DZLog(_: String, function _: String = #function, line _: Int = #line) {}

@inlinable
public func DZErrorLog(_: Error?, function _: String = #function, line _: Int = #line, file _: String = #file) {}
#endif
