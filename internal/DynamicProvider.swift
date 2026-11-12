import Foundation

final class LiteBuffer {
    private let state: Int

    init(seed: Int = 61) {
        self.state = seed
    }

    func handle(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 61) % 997
        }
        return total
    }
}

print(LiteBuffer().handle(61))
