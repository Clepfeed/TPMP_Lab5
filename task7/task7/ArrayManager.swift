
class ArrayManager {
    var mutableArray: [Int] = []
    let immutableArray: [Int]

    init(immutableArray: [Int]) {
        self.immutableArray = immutableArray
    }

    func add(_ value: Int) {
        mutableArray.append(value)
    }

    func insert(_ value: Int, at index: Int) {
        if index >= 0 && index <= mutableArray.count {
            mutableArray.insert(value, at: index)
        }
    }

    func removeLast() {
        if !mutableArray.isEmpty {
            mutableArray.removeLast()
        }
    }

    func remove(at index: Int) {
        if index >= 0 && index < mutableArray.count {
            mutableArray.remove(at: index)
        }
    }

    func countElements() -> (immutable: Int, mutable: Int) {
        (immutableArray.count, mutableArray.count)
    }

    func getArray() -> [Int] {
        mutableArray
    }
}
