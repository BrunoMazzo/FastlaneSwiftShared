import Foundation

public class Logger {

    public enum LogMode {
        public init(logMode: String) {
            switch logMode {
            case "normal", "default":
                self = .normal
            case "verbose":
                self = .verbose
            default:
                logger.log(message: "unrecognized log mode: \(logMode), defaulting to 'normal'")
                self = .normal
            }
        }
        case normal
        case verbose
    }
    
    public static var logMode: LogMode = .normal
    
    public func log(message: String) {
        let timestamp = NSDate().timeIntervalSince1970
        print("[\(timestamp)]: \(message)")
    }
    
    public func verbose(message: String) {
        if Logger.logMode == .verbose {
            let timestamp = NSDate().timeIntervalSince1970
            print("[\(timestamp)]: \(message)")
        }
    }
}

public let logger: Logger = {
    return Logger()
}()

public func log(message: String) {
    logger.log(message: message)
}

public func verbose(message: String) {
    logger.verbose(message: message)
}