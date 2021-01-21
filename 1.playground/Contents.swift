import Cocoa

// Оператор присвоения
var a = 1

// Арифметические операторы
var plus = 1 + 1
var minus = 2 - 1
var multipl = 2 * 4
var divide = 6 / 2

// Дeления с остатком
var remain = 9 % 4

// Условные операторы
plus == 2
minus != 1
multipl < 1
divide > 4
plus <= 2
minus >= 1
multipl += 5

// Оператор диапазона (замкнутый)
for value in 1...multipl {
    print("\(value)" + " строка 25")
    if value == multipl {
        print("Конец цикла\n")
    }
}

// Оператор замкнутого диапазона
let array = [1, 2, 3, 4, 5]
for value in 0...array.count {
    print("\(value)" + " строка 31")
}

// Логический оператор НЕ
let code = false
if !code {
    print("Доступ разрешен")
} else {
    print("В доступе отказанно")
}

// Логический оператор И и ИЛИ
let code1 = true
let code2 = false
let code3 = true
let code4 = false

if code1 && code2 || code3 || code4 {
    print("Доступ разрешен")
} else {
    print("В доступе отказанно")
}



