import UIKit

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

enum HatchState {
    case open, close
}

class Car {
    let mark: String
    let body: BodyType
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
    init(color: UIColor, mp3: Bool, transmission: Transmission, km: Double, doorState: DoorState, mark: String, body: BodyType, navi: Bool, year: Int, Enj: EnjState, Window: WindowState, space: Double) {
        self.color = color
        self.mp3 = mp3
        self.transmission = transmission
        self.km = km
        self.doorState = doorState
        self.mark = mark
        self.body = body
        self.navi = navi
        self.year = year
        self.Enj = Enj
        self.Window = Window
        self.space = space
    }
    
    
    func closeDoor() {
        self.doorState = .close
    }
    func openDoor() {
        self.doorState = .open
    }
    func onEnj() {
        self.Enj = .on
    }
    func offEnj() {
        self.Enj = .off
    }
    func openWindow() {
        self.Window = .open
    }
    func closeWindow() {
        self.Window = .close
    }
    
}

class CarSport: Car {
    var hatchState: HatchState
    init(color: UIColor, mp3: Bool, transmission: Transmission, km: Double, doorState: DoorState, mark: String, body: BodyType, navi: Bool, year: Int, Enj: EnjState, Window: WindowState, space: Double, hatchState: HatchState) {
        self.hatchState = hatchState
        super.init(color: color, mp3: mp3, transmission: transmission, km: km, doorState: doorState, mark: mark, body: body, navi: navi, year: year, Enj: Enj, Window: Window, space: space)
    }
    func openHatch() {
        hatchState = .open
    }
    func closeHatch() {
        hatchState = .close
    }
}


class CarTruck: Car {
    var BagVolume: Int
    init(color: UIColor, mp3: Bool, transmission: Transmission, km: Double, doorState: DoorState, mark: String, body: BodyType, navi: Bool, year: Int, Enj: EnjState, Window: WindowState, space: Double, BagVolume: Int) {
        self.BagVolume = BagVolume
        super.init(color: color, mp3: mp3, transmission: transmission, km: km, doorState: doorState, mark: mark, body: body, navi: navi, year: year, Enj: Enj, Window: Window, space: space)
    }
}


var smallCar = CarSport(color: .blue, mp3: true, transmission: .auto, km: 0, doorState: .close, mark: "Audi", body: .small, navi: true, year: 2018, Enj: .off, Window: .close, space: 600, hatchState: .open)
var truck = CarTruck(color: .green, mp3: true, transmission: .auto, km: 0, doorState: .close, mark: "Volvo", body: .big, navi: false, year: 2015, Enj: .off, Window: .close, space: 12000, BagVolume: 500000)

smallCar.Enj = .on
smallCar.openDoor()
truck.openWindow()
