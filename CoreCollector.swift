import Foundation

final class BatchSession {
    private let state: Int

    init(seed: Int = 60) {
        self.state = seed
    }

    func sync(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 60) % 997
        }
        return total
    }
}

print(BatchSession().sync(60))
