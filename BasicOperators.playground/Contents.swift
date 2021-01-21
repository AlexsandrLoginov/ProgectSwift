//Оператор присвоения
var a = 1
// К "а" присвоили значение "1" при помощи оператора присвоения "="

//Арифметические операторы
//Оператор сложения
var plus = 1 + 2
//Оператор вычитания
var minus = 4 - 1
//Оператор умножения
var multiply = 4 * 5
//Оператор диления
var divide = 10 / 2

//Оператор целочисленного деления, возвращает остаток деления
var remainderOperator = 9 % 4

//Оператор унарного мнуса
var minusFive = -5
var plusFive = -minusFive
//минус на минус дает плюс

//Составные операторы присвоения
var int = 2
var int2 = 6
int += 1
int2 -= int

//Операторы сравнения
int == 2
int < int2
int > 4
int <= 3
int >= int2
int != int2

//Тернарный условный оператор
let salary = 25000
let plan = true
let pay = salary + (plan ? 10000 : 0)
// Это сокращённая форма записи if
var pey2 = salary
if plan {
    pey2 = salary + 10000
}else{
    pey2 = salary
}

//Оператор объединения по nil (есть вопросы)
let weather = "Пасмурно"
var weather2: String?
var umbrella = weather2 ?? weather

//Операторы диапазона
//Оператор замкнутого диапазона
for closedRange in 1...20{
    print("\(closedRange) плюс 10 будет \(closedRange + 10)")
}

//Оператор полу замкнутого диапазона
let city = ["мск","Тюмень","Самара","Смирное"]
let show = city.count
for show1 in 0..<city.count {
    print("Город \(show1 + 1) будет \(city[show1])")
}

//Односторонний диапазон
for name in city[...2] {
    print(name)
}
for name1 in city[1...] {
    print(name1)
}


//Логические операторы
//Логический оператор НЕ
let rain = true
if !rain {
    print("На улице солнце")
}else if rain{
    print("Возьми зонт")
}

//Логичесий оператор И
let heat = false
let cold = true
if heat && cold {
    print("На улице мороз, оденься по теплей")
}

//Логический оператор ИЛИ
if heat || cold {
    print("На улице мороз, оденься по теплей")
}else{
    print("На улице жара")
}
 //Комбинирование логических операторов
let cod = false
let fingerprint = false
let faceID = true
if  cod && fingerprint || faceID{
    print("Добро пожаловать")
}else{
    print("В доступе отказанно")
}
//сложнее не смог придумать))
