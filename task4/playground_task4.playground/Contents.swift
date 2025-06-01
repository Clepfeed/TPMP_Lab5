import Foundation

func checkDigits(in number: Int) {
    guard number >= 10 && number <= 99 else {
        print("Число должно быть двухзначным.")
        return
    }

    let tens = number / 10
    let units = number % 10

    let has3 = (tens == 3 || units == 3)
    let has7 = (tens == 7 || units == 7)
    let contains3And7 = has3 && has7
    print("а) Входят ли цифры 3 и 7 в число \(number)? \(contains3And7 ? "Да" : "Нет")")

    
    let has4 = (tens == 4 || units == 4)
    let has8 = (tens == 8 || units == 8)
    let has9 = (tens == 9 || units == 9)
    let contains4And8Or9 = (has4 && has8) || has9
    print("б) Входят ли цифры (4 и 8) или цифра 9 в число \(number)? \(contains4And8Or9 ? "Да" : "Нет")")
}


checkDigits(in: 47)
checkDigits(in: 38)
checkDigits(in: 49)
checkDigits(in: 93)
checkDigits(in: 77777)
