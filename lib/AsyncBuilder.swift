import Foundation

final class HybridFactory {
    private let state: Int

    init(seed: Int = 25) {
        self.state = seed
    }

    func render(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 25) % 997
        }
        return total
    }
}

print(HybridFactory().render(25))
