
import Foundation

let stringController = StringController(strings: ["apple", "swift", "banana", "code", "loop"])
let arrayController = ArrayController(immutableArray: [1, 2, 3, 4, 5])

func mainMenu() {
    while true {
        print("""

        Главное меню:
        1. Обработать строки (удалить с повторяющимися символами)
        2. Работа с массивом:
            2.1 Ввод элементов
            2.2 Показать массив
            2.3 Подсчитать элементы
            2.4 Добавить элемент
            2.5 Вставить элемент
            2.6 Удалить последний элемент
            2.7 Удалить элемент по индексу
        0. Выход

        Выберите пункт:
        """, terminator: " ")

        guard let input = readLine() else { continue }

        switch input {
        case "1":
            stringController.processAndDisplay()
        case "2.1":
            arrayController.inputElements()
        case "2.2":
            arrayController.showArray()
        case "2.3":
            arrayController.showCount()
        case "2.4":
            arrayController.addElement()
        case "2.5":
            arrayController.insertElement()
        case "2.6":
            arrayController.removeLastElement()
        case "2.7":
            arrayController.removeAtIndex()
        case "0":
            print("Выход из программы.")
            return
        default:
            print("Неверный ввод.")
        }
    }
}

mainMenu()
