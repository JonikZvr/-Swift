import UIKit

// Задача 1
// Решить квадратное уравнение
// Уравнение вида ax^2 + bx + c = 0

var a : Double = 1
var b : Double = 2
var c : Double = 1

var Otv_1 : Double = 0
var Otv_2 : Double = 0
var D: Double = 0

if (b*b - 4*a*c > 0){
    D = sqrt(b*b - 4*a*c)
    Otv_1 = (-b + D)/(2*a)
    Otv_2 = (-b - D)/(2*a)
    print(Otv_1, Otv_2)
} else if (b*b - 4*a*c == 0) {
    Otv_1 = -b / (2*a)
    print(Otv_1)
} else {
    print("Уравнение не имеет действительных решений")
}

//Задача 2
//Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

var a_2 : Double = 3 //Катет №1
var b_2 : Double = 4 //Катет №2
var c_2 : Double = 0
var P : Double = 0
var S : Double = 0

c_2 = sqrt(a_2*a_2 + b_2*b_2)
P = a_2 + b_2 + c_2
S = (a_2 * b_2) / 2

print("S=", S, "P=", P, "C_2=", c_2)

//Задача 3
// Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.

var Sum : Double = 100000
var Pro : Double = 10
var Itog : Double = 0

Itog = ((((Sum * (Pro / 100 + 1)) * (Pro / 100 + 1)) * (Pro / 100 + 1)) * (Pro / 100 + 1)) * (Pro / 100 + 1)

print(Itog)
