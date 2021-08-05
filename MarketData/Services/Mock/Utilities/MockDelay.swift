import Foundation

public func mockDelay(completion: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(5), execute: completion)
}
