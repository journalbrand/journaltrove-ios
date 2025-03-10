import XCTest
@testable import Core

/// Tests for the TimeService
/// These tests verify requirement System.4.iOS.1
class TimeServiceTests: XCTestCase {
    
    var timeService: TimeService!
    
    override func setUp() {
        super.setUp()
        timeService = TimeService()
    }
    
    override func tearDown() {
        timeService = nil
        super.tearDown()
    }
    
    /// Test that the currentTime function returns a time close to now
    func testCurrentTime() {
        // Given the timeService is initialized
        
        // When we get the current time
        let result = timeService.currentTime()
        let now = Date()
        
        // Then the time should be within 1 second of now
        XCTAssertEqual(result.timeIntervalSince1970, now.timeIntervalSince1970, accuracy: 1.0, 
                       "Current time should be within 1 second of system time")
    }
    
    /// Test that the currentTimeString function returns a non-empty string
    func testCurrentTimeString() {
        // Given the timeService is initialized
        
        // When we get the current time as a string
        let result = timeService.currentTimeString()
        
        // Then the result should be a non-empty string
        XCTAssertFalse(result.isEmpty, "Current time string should not be empty")
        // And should contain the current year
        let calendar = Calendar.current
        let year = String(calendar.component(.year, from: Date()))
        XCTAssertTrue(result.contains(year), "Current time string should contain the current year")
    }
} 