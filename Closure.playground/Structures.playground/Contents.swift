import Foundation

struct Person {
  let name: String
  let age: Int
}

let foo = Person(name: "Ali Hassan", age: 26)

foo.age
foo.name

struct CommodoreComputer {
    let name: String
    let manufacturer: String
    init(name: String) {
        self.name = name
        self.manufacturer = "Commodore"
    }
}

let c64 = CommodoreComputer(name: "C64")

c64.manufacturer
c64.name


struct Person2 {
    let firstName: String
    let lastName: String
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

let p2 = Person2(firstName: "Ali", lastName: "Husain")
p2.firstName
p2.lastName
p2.fullName


struct Car {
    var currentSpeed: Int
    mutating func drive(speed: Int) {
     currentSpeed = speed
    }
}

let immutableCar = Car(currentSpeed: 10)

//immutable.drive(speed: 20)

var mutableCar = Car(currentSpeed: 20)

mutableCar.drive(speed: 40)
mutableCar.currentSpeed


struct Bike {
    let manufacturer: String
    let currentSpeed: Int
    func copy(currentSpeed: Int)-> Bike {
        Bike(manufacturer: self.manufacturer, currentSpeed: currentSpeed)
    }
}


let bike1 = Bike(manufacturer: "HD", currentSpeed: 30)

let bike2 = bike1.copy(currentSpeed: 50)

bike1.currentSpeed
bike2.currentSpeed
