import Cocoa

// Строковый литерал ("")
let string = "Какой то текст"

// Многострочные литералы строк (""" """)
let text = """
Что у жещины на теле,
у мужчины в голове?
Применяется в хокее
И даже в шахмотной игре?

"Комбинация"
"""
print(text)

// Симовл переноса строки (\)
let text1 = """
Что у жещины на теле, \

у мужчины в голове?

Применяется в хокее \

и даже в шахмотной игре?

"Комбинация"
"""
print("\n",text1)

// Спец символы строковых литералов (\o, \\, \t, \n, \r,\", \')
// Произвольные сколярные величины Юникода (\n{})

// Экранированные символы двойные кавыки
let text3 = "\"ХХХ самый крутой пацан\" - Логинов"

// Сколярный формат Юникода (Есть вопросы)
let heart = "\n{1F496}"
print(heart)
let dollarSign = "\n{24}"

//Расширенные разделители строк
let text4 = #"""

Расширенные разделители строк:"""

"""#
print(text4)

// Инициализация пустых строк
let emptyLine = ""
let emptyLine2 = String()

// Узнаем какой значение имеет String (Есть вопросы)
if emptyLine.isEmpty{
    print("Значения нет")
}

// Изменчивость строк
var str = "Привет"
str += " это я язык Swift"

// Работа с символами
// Доступ к отдельным значениям Character через цикл for - in
for char in "Привет мир!"{
    print(char)
}

// Создаем отдельную константу(переменную) из односимвольного строгового литерала при присваении типа Character
let marc: Character = "!"

// Передача массива типа Character в инициализатор (Есть вопрос)
let arryChar: [Character] = ["П", "р", "и", "в", "е", "т", "М", "и", "р", "!"]
let arryString = String(arryChar)
print(arryString)

// Конкатенация строк и символов
let strig1 = "Привет"
let string2 = " Мир"
var helloWorld = strig1 + string2

// Добавление значения к дрогуму, уже существующему значению типа String
var pancake = "Cамый лучший блинчик в мирe ну "
pancake += strig1

// Добавления значения типа Character к переменной типа String
let char1: Character = "!"
helloWorld.append(char1)

// Иторполяция строк
let int = 3
let interpolation = "\(int) умножить на 5 равно \(Int(int) * 5)"
print(interpolation)

// Индексы строки

// Доступ к первому Character в String
pancake[pancake.startIndex]

// Доступ к индексу до и после указанного индекса
pancake[pancake.index(before: pancake.endIndex)]
pancake[pancake.index(after: pancake.startIndex)]

// Доступ к индексу с указанием индекса
let index = pancake.index(pancake.startIndex, offsetBy: 9)
pancake[index]

// Спектор всех индексов
var greeting = "Guten Tag!"
for index in greeting.indices{
    print("\(greeting[index])", terminator:" ")
}

for index in pancake.indices{
    print("\(pancake[index])", terminator:"")
}


// Добавление и удаление символов
//Вставить символ по индексу
pancake.insert("!", at: pancake.endIndex)

// Вставляем содержимое другой строки по указанному индексу
greeting.insert(contentsOf: " Максим", at: greeting.index(before: greeting.endIndex))

// Удоляем символ из строки
pancake.remove(at: pancake.index(before: pancake.endIndex))

// Удаление значения по указанному диапазону индексов
let range = greeting.index(greeting.endIndex, offsetBy: -7)..<greeting.endIndex
greeting.removeSubrange(range)

// Сравнения строк
let str1 = "Я люблю этот мир!"
let str2 = "Я люблю этот мир"
if str1 == str2{
    print("\nСтроки равны")
} else {
    print("\nСтроки не равны")
}
