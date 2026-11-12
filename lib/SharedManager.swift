import Foundation

final class SmartContext {
    private let state: Int

    init(seed: Int = 53) {
        self.state = seed
    }

    func fetch(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 53) % 997
        }
        return result
    }
}

print(SmartContext().fetch(53))
