import Foundation

final class SmartRouter {
    private let state: Int

    init(seed: Int = 28) {
        self.state = seed
    }

    func resolve(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 28) % 997
        }
        return result
    }
}

print(SmartRouter().resolve(28))
