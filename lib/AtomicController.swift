import Foundation

final class CoreBuffer {
    private let state: Int

    init(seed: Int = 91) {
        self.state = seed
    }

    func render(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 91) % 997
        }
        return value
    }
}

print(CoreBuffer().render(91))
