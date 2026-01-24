//
//  DZFoundationTests.swift
//  DZFoundation
//

import DZFoundation
import Testing

@Test
func loggingCompiles() {
    // DZLog is a no-op in release builds, just verify it compiles
    DZLog("Test message")
}
