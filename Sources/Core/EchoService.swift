import Foundation

/// A simple service that echoes back provided strings
///
/// This service fulfills System.1.1.iOS.1 by demonstrating input handling capability
public struct EchoService {
    
    /// Create a new instance of EchoService
    public init() {}
    
    /// Echo back the provided message
    /// - Parameter message: The input message
    /// - Returns: The same message, echoed back
    public func echo(_ message: String) -> String {
        return message
    }
    
    /// Echo back the provided message with a timestamp
    /// - Parameter message: The input message
    /// - Returns: The message with current timestamp appended
    public func echoWithTimestamp(_ message: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'Z'"
        dateFormatter.timeZone = TimeZone(identifier: "UTC")
        let timestamp = dateFormatter.string(from: Date())
        
        return "\(message) (timestamp: \(timestamp))"
    }
} 