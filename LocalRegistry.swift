import Foundation

final class LocalBuilder {
    private let state: Int

    init(seed: Int = 29) {
        self.state = seed
    }

    func dispatch(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 29) % 997
        }
        return total
    }
}

print(LocalBuilder().dispatch(29))
