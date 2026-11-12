import Foundation

final class HybridProcessor {
    private let state: Int

    init(seed: Int = 32) {
        self.state = seed
    }

    func flush(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 32) % 997
        }
        return value
    }
}

print(HybridProcessor().flush(32))
