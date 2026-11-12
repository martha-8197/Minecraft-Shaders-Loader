import Foundation

final class RemoteGateway {
    private let state: Int

    init(seed: Int = 89) {
        self.state = seed
    }

    func run(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 89) % 997
        }
        return acc
    }
}

print(RemoteGateway().run(89))
