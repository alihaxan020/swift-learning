import Foundation
//struct Animal {
//    let type: String
//    init(type: String) {
//        if(type == "Rabbit" || type == "Dog" || type == "Cat"){
//            self.type = type
//        }
//        else {
//        preconditionFailure()
//        }
//}

enum Animals {
    case rabbit
    case dog
    case cat
}
 

let cat = Animals.cat
cat
print(cat)

if cat == Animals.cat {
    "This is cat"
} else if cat == Animals.dog {
    "this is dog"
} else {
    "this is something else"
}

func describeAnimal(_ animal: Animals){
   switch animal {
case .dog:
    "This is dog"
    break
case .cat:
    "This is cat"
    break
 default:
    "this is something else"
 }
}

describeAnimal(cat)

switch cat {
    
case .rabbit:
     "This is rabbit "
    break
case .dog:
    "This is dog"
    break
case .cat:
    "This is cat"
    break

}


enum Shortcut {
    case fileOrFolder(path: URL, name: String)
    case wwwUrl(path: URL)
    case song(artist:String, songName: String)
}

let wwwApple = Shortcut.wwwUrl(path: URL(string: "https://apple.com")!)

switch wwwApple {
    
case .fileOrFolder(path: let path, name: let name):
    path
    name
    break
case .wwwUrl(path: let path):
    path
    break
case .song(artist: let artist, songName: let songName):
    artist
    songName
    break
}


switch wwwApple {
    
case .fileOrFolder(let path, let name):
    path
    name
    break
case .wwwUrl( let path):
    path
    break
case .song( let artist, let songName):
    artist
    songName
    break
}


switch wwwApple {
    
case let .fileOrFolder( path,  name):
    path
    name
    break
case let .wwwUrl( path):
    path
    break
case let .song(  artist, songName):
    artist
    songName
    break
}


if case let .wwwUrl(path) = wwwApple {
    path
}
let withoutYou = Shortcut.song(artist: "heelo", songName: "Kohinoor")

if case let .song(_, songName) = withoutYou {
    songName
}


enum Vechicle {
    case car(manufacturer: String, model: String)
    case bike(manufacturer:String, yearMade:Int)
//    func getManufacturer()-> String{
//        switch self {
//        case let .car(manufacturer, _):
//            return manufacturer
//        case let .bike(manufacturer, _):
//            return manufacturer
//        }
//    }
    var getManufacturer: String{
        switch self {
        case let .car(manufacturer, _):
            return manufacturer
        case let .bike(manufacturer, _):
            return manufacturer
        }
    }
}

//func getManufacturer(from vechicle: Vechicle)-> String{
//    switch vechicle {
//        
//    case let .car(manufacturer, model):
//        return manufacturer
//    case let .bike(manufacturer, yearMade):
//        return manufacturer
//    }
//}



let car = Vechicle.car(manufacturer: "Tesla", model:"X")
//car.getManufacturer()
car.getManufacturer
let bike = Vechicle.bike(manufacturer: "HD", yearMade:2000)
//bike.getManufacturer()
bike.getManufacturer


enum FamilyMembers: String{
    case father = "Dad"
    case mother = "Mom"
    case brother = "Bro 🚀"
    case sister = "Sis"
}

FamilyMembers.brother.rawValue


enum FavoriteEmoji: String, CaseIterable {
    case blush = "😊"
    case rocket = "🚀"
    case fire = "🔥"
}


FavoriteEmoji.allCases
FavoriteEmoji.allCases.map(\.rawValue)

if let blush = FavoriteEmoji(rawValue: "😊"){
    "Found blush emoji"
    blush
} else {
    "Blush emoji doesnot exist"
}


enum Height {
    case short, medium, long
    mutating func makeLong (){
        self = Height.long
    }
}

var myheight = Height.medium
myheight.makeLong()
myheight


indirect enum IntOperation {
    case add(Int, Int)
    case subtract(Int, Int)
    case freeHand(IntOperation)
    func calculateResult(of operation: IntOperation? = nil )->Int{
        switch operation ?? self {
        case let .add(lhs, rhs):
            return lhs + rhs
        case let .subtract(lhs, rhs):
              return lhs - rhs
        case let .freeHand(operation):
            return calculateResult(of: operation)
        }
    }
}


let freeHand = IntOperation.freeHand(.add(9797, 3))
freeHand.calculateResult()
