
class StringView {
    func display(strings: [String]) {
        print("Строки без повторяющихся символов:")
        for str in strings {
            print("• \(str)")
        }
    }
}
