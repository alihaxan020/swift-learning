import Foundation

let myName = "Ali Hassan"
let yourName = "Raees"
print(myName)
 
var names: [String] = [myName, yourName]
 
names.append("Abdul Basit")
names.append("ahmad raza")

let fo = "FOO"
var fo2 = fo

fo2 = "Foo2"
fo
fo2

let moreNames = ["a","b"]
var copy = moreNames
copy.append("c")
copy

for i in 0..<copy.count {
    print(i)
    copy[i] = copy[i].uppercased()
}

copy
let oldArray = NSMutableArray(
array:[
"fo","bar"]
)

oldArray.add("qux")
var newArray = oldArray
newArray.add("deaf")

oldArray
newArray

let someNames =  NSMutableArray(array: ["Ali", "Hassan"])

func changeTheArray(_ array: NSArray){
    let copy = array as! NSMutableArray
    copy.add("raees")
}

changeTheArray(someNames)
someNames
