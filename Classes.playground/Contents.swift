import Foundation

// person class
class Person {
    // class peroperties
    // these properties can change internaly as well as externally
    var name: String
    var age: Int
    // initializer
    init(name: String,age: Int) {
        self.name = name
        self.age = age
    }
    // increase age function
    func increaseAge(){
        self.age += 1
    }
}

// instance of a class

let foo = Person(name: "Ali", age: 10)
foo.age += 10
foo.increaseAge()

foo.age
foo.name

// classes are reference type

let bar = foo
bar.increaseAge()
bar.age
foo.age

if foo === bar {
    "foo and bar point to same mem ory"
} else {
    "they do not point to same memory"
}

// inheritance

class Vechicle {
    func goVroom (){
        "Vroom Vroom"
    }
}

class Car: Vechicle {
    
}

let car = Car()
car.goVroom()

// classes have private setters

class Person2 {
    // age only changes inside the class and we do not change externaly
    private(set) var age: Int
    
    init(age: Int) {
        self.age = age
    }
    func increaseAge(){
        self.age += 1
    }
}


let p = Person2(age: 20)

p.increaseAge()
p.age
class Tesla {
    let manufacturer = "Tesla"
    let model:String
    let year:Int
    // designated initializer
    init() {
        self.model = "X"
        self.year = 2020
    }
    
    init(model: String, year: Int){
        self.model=model
        self.year=year
    }
    
    convenience init(model: String){
        self.init(model: model, year: 2023)
    }
}
 
class TeslaY: Tesla {
    
    // we can not initialize convenience initializer inside designated initializer
    override init(){
        super.init(
        model: "Y", year: 2024
        )
    }
}

let modelY = TeslaY()
modelY.manufacturer
modelY.model
modelY.year

let fooBar = Person2(age: 30)
fooBar.age

func doSomething(with person: Person2){
    fooBar.increaseAge()
}

doSomething(with: fooBar)

fooBar.age
