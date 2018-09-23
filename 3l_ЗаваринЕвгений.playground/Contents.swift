import UIKit


//1. Описать несколько структур – любой легковой автомобиль и любой грузовик.
//
//2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
//
//3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
//
//4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
//
//5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
//
//6. Вывести значения свойств экземпляров в консоль.

enum DoorState {
    case open, close
}

enum Transmission {
    case manual, auto
}

enum EnjState {
    case on, off
}

enum WindowState {
    case open, close
}

enum BodyType {
    case small, big
}

struct Car {
    let mark: String
    let Body: BodyType
    let color: UIColor
    let mp3: Bool
    let navi: Bool
    let transmission: Transmission
    var km: Double
    var doorState: DoorState
    let space: Double
    let year: Int
    var Enj: EnjState
    var Window: WindowState
    var bag: Double {
        willSet{
            if (newValue < space) && (newValue > 0) {
                print("Оставшийся объем", space - newValue)
            } else {
                print("Error")
            }
        }
    }
    
    mutating func closeDoor() {
        self.doorState = .close
    }
    mutating func openDoor() {
        self.doorState = .open
    }
    mutating func onEnj() {
        self.Enj = .on
    }
    mutating func offEnj() {
        self.Enj = .off
    }
    mutating func openWindow() {
        self.Window = .open
    }
    mutating func closeWindow() {
        self.Window = .close
    }
    mutating func addBag() {
        self.bag += 100
    }
    mutating func takeBag() {
        self.bag -= 100
    }
    
}

var smallCar = Car(mark: "Audi", Body: .small, color: .blue, mp3: true, navi: true, transmission: .auto, km: 0, doorState: .close, space: 600, year: 2018, Enj: .off, Window: .close, bag: 0)
var truck = Car(mark: "Volvo", Body: .big, color: .green, mp3: true, navi: false, transmission: .auto, km: 0, doorState: .close, space: 12000, year: 2015, Enj: .off, Window: .close, bag: 0)

smallCar.Enj = .on
truck.addBag()
smallCar.openDoor()
truck.openWindow()
