import Foundation

final class AsyncRegistry {
    private let state: Int

    init(seed: Int = 37) {
        self.state = seed
    }

    func render(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 37) % 997
        }
        return count
    }
}

print(AsyncRegistry().render(37))
