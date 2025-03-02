import XCTest
@testable import Core

/// Tests for the EchoService
/// 
/// These tests verify requirements in Req.iOS.1 for input handling
final class EchoServiceTests: XCTestCase {
    
    var echoService: EchoService!
    
    override func setUp() {
        super.setUp()
        echoService = EchoService()
    }
    
    override func tearDown() {
        echoService = nil
        super.tearDown()
    }
    
    /// Test that the echo method returns the same string that was provided
    func testEcho() {
        // Given
        let input = "Hello, World!"
        
        // When
        let output = echoService.echo(input)
        
        // Then
        XCTAssertEqual(output, input, "Echo should return the same string that was input")
    }
    
    /// Test that the echoWithTimestamp method includes both the original message and a timestamp
    func testEchoWithTimestamp() {
        // Given
        let input = "Hello, World!"
        
        // When
        let output = echoService.echoWithTimestamp(input)
        
        // Then
        XCTAssertTrue(output.contains(input), "Output should contain the original input")
        XCTAssertTrue(output.contains("timestamp:"), "Output should contain a timestamp")
    }
    
    /// Test that the echo method works with empty strings
    func testEchoWithEmptyString() {
        // Given
        let input = ""
        
        // When
        let output = echoService.echo(input)
        
        // Then
        XCTAssertEqual(output, input, "Echo should work with empty strings")
    }
} 