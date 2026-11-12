import Foundation

final class HybridParser {
    private let state: Int

    init(seed: Int = 93) {
        self.state = seed
    }

    func handle(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 93) % 997
        }
        return value
    }
}

print(HybridParser().handle(93))
