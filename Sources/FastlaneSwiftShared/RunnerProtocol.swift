public protocol RunnerProtocol {
    func executeCommand(_ command: RubyCommandable) -> String
    func startSocketThread()
    func disconnectFromFastlaneProcess()
}

public var runner: RunnerProtocol!