import UIKit

//1. Написать функцию, которая определяет, четное число или нет.

var a: Int = 11

func taskOne(a: Int)-> Bool {
    var c: Int = 0
    c = a / 2
    var b : Bool = false
    if (a == c * 2) {
        b = true
    } else {
        b = false
    }
    return b
}

if taskOne(a: a) {
    print("Четное")
} else {
    print("Нечетное")
}

//2. Написать функцию, которая определяет, делится ли число без остатка на 3.

func taskTwo(a: Int)-> Bool {
    var c: Int = 0
    c = a / 3
    var b : Bool = false
    if (a == c * 3) {
        b = true
    } else {
        b = false
    }
    return b
}

if taskTwo(a: a) {
    print("Делится")
} else {
    print("Не делится")
}

//3. Создать возрастающий массив из 100 чисел.

var array = [0]
var v : Int = 1

for _ in (1...99) {
    array.append(v)
    v += 1
}

//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

v = 0


while v < array.count {
    a = array[v]
    if taskOne(a: a) == true {
        array.remove(at: v)
    }
 
    v += 1
}

v = 0

while v < array.count {
    a = array[v]
    if taskTwo(a: a) == true {
        array.remove(at: v)
    }
    v += 1
}

print(array)

//5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.

array = [1, 1]

func taskFive(array: Array<Int>) -> Array<Int> {
    var arrayOut: Array<Int> = array
    for _ in (1...89) { // Я не знаю, как добавить больше
        arrayOut.append(arrayOut[arrayOut.count - 1] + arrayOut[arrayOut.count - 2])
    }
    return arrayOut
}

print(taskFive(array: array))


//Числа Фибоначчи определяются соотношениями Fn=Fn-1 + Fn-2.
//6. * Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена, нужно выполнить следующие шаги:

var array_6 : Array<Int> = [1]

while true {
    
}

//a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
//b. Пусть переменная p изначально равна двум — первому простому числу.
//c. Зачеркнуть в списке числа от 2p до n, считая шагами по p (это будут числа, кратные p: 2p, 3p, 4p, ...).
//d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
//e. Повторять шаги c и d, пока возможно.
