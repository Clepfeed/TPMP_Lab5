
class ArrayView {
    func display(array: [Int]) {
        print("📦 Текущий массив: \(array)")
    }

    func promptForInt(_ message: String) -> Int? {
        print(message, terminator: " ")
        guard let input = readLine(), let number = Int(input) else {
            print("Неверный ввод.")
            return nil
        }
        return number
    }
}
