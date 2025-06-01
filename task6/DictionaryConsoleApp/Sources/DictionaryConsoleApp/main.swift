import Foundation
import DictionaryLib

let manager = DictionaryManager()

func readInput(prompt: String) -> String {
    print(prompt, terminator: " ")
    return readLine() ?? ""
}

func printMenu() {
    print("""
    --- МЕНЮ ---
    1. Инициализировать пустой словарь (Country1)
    2. Инициализировать словарь с данными (Country2)
    3. Добавить элемент
    4. Изменить элемент
    5. Получить элемент по ключу
    6. Количество элементов
    7. Все элементы
    8. Сортировать по ключу
    9. Сортировать по значению
    10. Удалить элемент по ключу
    11. Очистить словарь
    0. Выход
    """)
}

var isFirstDict = true
var running = true

while running {
    printMenu()
    let choice = readInput(prompt: "Выберите пункт меню")

    switch choice {
    case "1":
        isFirstDict = true
        manager.removeAll(isFirstDict: true)
        print("Словарь Country1 (square) инициализирован.")
    case "2":
        isFirstDict = false
        manager.removeAll(isFirstDict: false)
        manager.addElement(key: "Russia", value: "145000000", isFirstDict: false)
        manager.addElement(key: "USA", value: "331000000", isFirstDict: false)
        print("Словарь Country2 (population) инициализирован.")
    case "3":
        let key = readInput(prompt: "Введите название страны:")
        let val = readInput(prompt: "Введите значение (площадь или население):")
        manager.addElement(key: key, value: val, isFirstDict: isFirstDict)
    case "4":
        let key = readInput(prompt: "Ключ для изменения:")
        let val = readInput(prompt: "Новое значение:")
        manager.modifyElement(key: key, newValue: val, isFirstDict: isFirstDict)
    case "5":
        let key = readInput(prompt: "Введите ключ:")
        if let result = manager.getElement(byKey: key, isFirstDict: isFirstDict) {
            print(result)
        } else {
            print("Ключ не найден.")
        }
    case "6":
        print("Количество элементов: \(manager.countElements(isFirstDict: isFirstDict))")
    case "7":
        let elements = manager.getAllElements(isFirstDict: isFirstDict)
        elements.forEach { print($0) }
    case "8":
        manager.sortByKey(isFirstDict: isFirstDict).forEach { print($0) }
    case "9":
        manager.sortByValue(isFirstDict: isFirstDict).forEach { print($0) }
    case "10":
        let key = readInput(prompt: "Введите ключ для удаления:")
        manager.removeElement(byKey: key, isFirstDict: isFirstDict)
    case "11":
        manager.removeAll(isFirstDict: isFirstDict)
        print("Словарь очищен.")
    case "0":
        running = false
    default:
        print("Неверный ввод.")
    }
}
