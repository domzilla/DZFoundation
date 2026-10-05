//
//  LoggingTests.swift
//  DZFoundation
//
//  Created by Dominic Rodemer on 24/01/2026.
//  Copyright © 2026 Dominic Rodemer. All rights reserved.
//

import DZFoundation
import Foundation
import Testing

/// Serialized because each test redirects the process-wide stdout.
@Suite(.serialized)
struct LoggingTests {
    struct SampleError: LocalizedError {
        var errorDescription: String? {
            "Sample failure"
        }
    }

    #if DEBUG
    @Test
    func logPrintsMessageWithExplicitFunctionAndLine() {
        let output = self.standardOutput {
            DZLog("Hello", function: "caller()", line: 42)
        }

        #expect(output == "🔶 caller() 42: Hello\n")
    }

    @Test
    func logDefaultsToCallSite() {
        let output = self.standardOutput { DZLog("Hello") }
        let line = #line - 1

        #expect(output == "🔶 logDefaultsToCallSite() \(line): Hello\n")
    }

    @Test
    func errorLogPrintsFilenameLineFunctionAndDescription() {
        let output = self.standardOutput {
            DZErrorLog(SampleError(), function: "caller()", line: 7, file: "/path/to/Caller.swift")
        }

        #expect(output == "❌ Caller.swift:7 caller() ERROR: Sample failure\n")
    }

    @Test
    func errorLogDefaultsToCallSite() {
        let output = self.standardOutput { DZErrorLog(SampleError()) }
        let line = #line - 1

        #expect(output == "❌ LoggingTests.swift:\(line) errorLogDefaultsToCallSite() ERROR: Sample failure\n")
    }
    #else
    @Test
    func logPrintsNothingInRelease() {
        let output = self.standardOutput {
            DZLog("Hello")
        }

        #expect(output.isEmpty)
    }

    @Test
    func errorLogPrintsNothingInRelease() {
        let output = self.standardOutput {
            DZErrorLog(SampleError())
        }

        #expect(output.isEmpty)
    }
    #endif

    @Test
    func errorLogPrintsNothingForNilError() {
        let output = self.standardOutput {
            DZErrorLog(nil)
        }

        #expect(output.isEmpty)
    }

    // MARK: Private

    /// Captures what `body` writes to stdout by temporarily pointing the stdout descriptor at a pipe.
    private func standardOutput(of body: () -> Void) -> String {
        let pipe = Pipe()
        let originalDescriptor = dup(STDOUT_FILENO)
        fflush(nil)
        dup2(pipe.fileHandleForWriting.fileDescriptor, STDOUT_FILENO)

        body()

        fflush(nil)
        dup2(originalDescriptor, STDOUT_FILENO)
        close(originalDescriptor)
        try? pipe.fileHandleForWriting.close()
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        return String(decoding: data, as: UTF8.self)
    }
}
