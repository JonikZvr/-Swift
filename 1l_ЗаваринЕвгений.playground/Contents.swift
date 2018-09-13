import UIKit

// Задача 1
// Решить квадратное уравнение
// Уравнение вида ax^2 + bx + c = 0

var a : Double = 1
var b : Double = 2
var c : Double = 1

let d :Double = b*b - 4*a*c

if (d > 0){
    let otv_1 = (-b + sqrt(d))/(2*a)
    let otv_2 = (-b - sqrt(d))/(2*a)
    print(otv_1, otv_2)
} else if (d == 0) {
    let otv_1 = -b / (2*a)
    print(otv_1)
} else {
    print("Уравнение не имеет действительных решений")
}

//Задача 2
//Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

var a_2 : Double = 3 //Катет №1
var b_2 : Double = 4 //Катет №2
var c_2 : Double = 0
var p : Double = 0
var s : Double = 0

c_2 = sqrt(a_2*a_2 + b_2*b_2)
p = a_2 + b_2 + c_2
s = (a_2 * b_2) / 2

print("S=", s, "P=", p, "C_2=", c_2)

//Задача 3
// Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.

var sum : Double = 100000
var pro : Double = 10
var itog : Double = 0

itog = ((((sum * (pro / 100 + 1)) * (pro / 100 + 1)) * (pro / 100 + 1)) * (pro / 100 + 1)) * (pro / 100 + 1)

print(itog)
