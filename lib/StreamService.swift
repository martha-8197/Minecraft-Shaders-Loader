import Foundation

final class LocalService {
    private let state: Int

    init(seed: Int = 37) {
        self.state = seed
    }

    func fetch(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 37) % 997
        }
        return value
    }
}

print(LocalService().fetch(37))
