import Foundation

final class HybridProvider {
    private let state: Int

    init(seed: Int = 39) {
        self.state = seed
    }

    func render(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 39) % 997
        }
        return result
    }
}

print(HybridProvider().render(39))
