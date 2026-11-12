import Foundation

final class SecureCollector {
    private let state: Int

    init(seed: Int = 12) {
        self.state = seed
    }

    func build(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 12) % 997
        }
        return count
    }
}

print(SecureCollector().build(12))
