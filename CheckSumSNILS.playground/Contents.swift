import Cocoa

func Snils(validationSnils: String) -> Bool{
    
    if validationSnils.isEmpty {
        return false
    }
    print("\nПроверяет есть ли в поле какое-либо значение")
    
    let snilsFormat = validationSnils.replacingOccurrences(of: "-", with: "").split(separator: " ")
    print("\nРеализация формата записи СНИЛС (ххх-ххх-ххх уу)")
    
    if snilsFormat.count < 2 {
        return false
    }
    print("\nПоверяем что введен номер СНИЛС и контрольное число")
    
    // Преобразуем String в Int
    let snilsInt = snilsFormat.compactMap{ Int(String($0)) }
    
    // Разделяем номер и контрольное число на 2 отдельных массива
    let snilsNumber = snilsInt[0]
    print("\nВ константу snilsNumber записываем номер СНИЛС типа Int")
    let checkSum = snilsInt[1]
    print("\nВ константу checkSum записываем контрольное число типа Int")

    //
    // Страховой номер состоит из 9 символов
    let controlSum = snilsFormat[0]
    if controlSum.count < 9 && snilsInt[0] >= 1001998 {
        return false
    }
    print("\nПроверка контрольного числа Страхового номера проводится только для номеров больше номера 001-001-998. \nСтраховой номер состоит из 9 символов")
    
    let arrayNamberSnils = String(snilsNumber).compactMap { Int (String($0))}
    print("\nПреобразуем snilsNumber типа Int в массив чисел типа Int, и записываем массив в константу arrayNamberSnils для последующего вычисления контрольного числа")

    var checkSumSnils = 0
    print("\nВ переменную checkSumSnils записываем итог вычисления. (Контрольное число)")
    
    for (index, item) in zip(arrayNamberSnils.indices.reversed(), arrayNamberSnils){
        checkSumSnils += item * (index + 1)
    }
    print("\nПроизводим вычисление контрольного числа \nАлгоритм формирования контрольного числа СНИЛС таков: \nКаждая цифра СНИЛС умножается на номер своей позиции (позиции отсчитываются с конца), полученные произведения суммируются \n Например: указан СНИЛС 112-233-445 95. Проверяем правильность контрольного числа: \nцифры номера 1 1 2 2 3 3 4 4 5 \nномер позиции 9 8 7 6 5 4 3 2 1 \nСумма = 1×9 + 1×8 + 2×7 + 2×6 + 3×5 + 3×4 + 4×3 + 4×2 + 5×1 = 95. Сумма равна YY (контрольное число). Контрольное число 95 — указано верно.")

    // Если сумма больше 101, то сумма делится по остатку на 101 и контрольное число определяется остатком от деления
    if checkSumSnils > 101 {
        return checkSumSnils % 101 == checkSum
    }
    print("\n Если сумма вычисления контрольного числа больше 101, то сумма делится по остатку на 101, и контрольное число определяется остатком от деления. \n Сравнивается с введенным ранее контрольным числом записанного в константу checkSum")

    // Если сумма равна 100 или 101, то контрольное число равно 00
    if checkSumSnils == 100 && checkSumSnils == 101{
        return checkSumSnils == checkSum
    }
    print("\nЕсли сумма вычисления контрольного числа равна 100 или 101, то контрольное число равно 00")

    // Если сумма меньше 100, то контрольное число равно самой сумме
    if checkSumSnils <= 99{
        return checkSumSnils == checkSum
  }
    print("\nЕсли сумма вычисления контрольного числа меньше 100, то контрольное число равно самой сумме")
    return true
}

Snils(validationSnils: "")
// 449-372-131 00
// 357-925-565 30
// 142-165-070 24
// 347-230-452 58
// 112-233-445 95
// 360-981-805 00

