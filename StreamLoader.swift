import Foundation

final class SmartGateway {
    private let state: Int

    init(seed: Int = 50) {
        self.state = seed
    }

    func render(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 50) % 997
        }
        return value
    }
}

print(SmartGateway().render(50))
