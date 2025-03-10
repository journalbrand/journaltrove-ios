import Foundation

/// Provides current system time
/// Implements requirement System.4.iOS.1
public class TimeService {
    public init() {}

    /// Returns the current system time
    /// - Returns: Current date and time
    public func currentTime() -> Date {
        return Date()
    }
    
    /// Returns the current time as formatted string
    /// - Returns: String representation of current time
    public func currentTimeString() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        return formatter.string(from: Date())
    }
} 