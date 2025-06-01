
class ArrayController {
    private let manager: ArrayManager
    private let view: ArrayView

    init(immutableArray: [Int]) {
        self.manager = ArrayManager(immutableArray: immutableArray)
        self.view = ArrayView()
    }

    func inputElements() {
        print("📥 Ввод элементов. Введите 'stop' для завершения.")
        while true {
            print("Введите число:", terminator: " ")
            guard let input = readLine(), input.lowercased() != "stop" else { break }
            if let num = Int(input) {
                manager.add(num)
            } else {
                print("❌ Не число.")
            }
        }
    }

    func showArray() {
        view.display(array: manager.getArray())
    }

    func showCount() {
        let count = manager.countElements()
        print("🔢 Неизменяемый: \(count.immutable), Изменяемый: \(count.mutable)")
    }

    func addElement() {
        if let value = view.promptForInt("Введите число для добавления:") {
            manager.add(value)
        }
    }

    func insertElement() {
        if let value = view.promptForInt("Введите значение:"),
           let index = view.promptForInt("Введите индекс:") {
            manager.insert(value, at: index)
        }
    }

    func removeLastElement() {
        manager.removeLast()
    }

    func removeAtIndex() {
        if let index = view.promptForInt("Введите индекс для удаления:") {
            manager.remove(at: index)
        }
    }
}
