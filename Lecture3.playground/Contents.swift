//: Playground - noun: a place where people can play

import UIKit

// _ so that we don't need label when calling fx
func sayHello( _ name: String) -> String {
    return "Hello \(name)"
}

// without _ need print(sayHello(name: "Chris"))
print(sayHello("Chris"))

func rollDice(numberOfDice num: Int, times: Int, withBonus: Int) -> Void {
    print(num)
}

func add(_ nums: Double...) -> Double {
    var sum = 0.0
    for num in nums {
        sum += num
    }
    return sum
}

print(add(1,2,3,4))

rollDice(numberOfDice: 2, times: 3, withBonus: 10000)

func passByReference(num: inout Int) {
    num = num + 1
}

var myNum = 1
passByReference(num: &myNum)
print(myNum)

let addFunc = { (left : Int, right : Int) -> Int in return left + right}
print("1 + 2 = \(addFunc(1,2))")
let addFunc2 : (Int, Int) -> Int = {$0 + $1}


func greetLTR(name: String) -> String {
    return "Hello \(name)."
}

func greetRTL(name: String) -> String {
    func test() -> String {
        return "hi \(name)"
    }
    
    test()
    return "\(name), hello."
}

func greet(name: String, greetFcn: (String) -> String) {
    print(greetFcn(name))
}

greet(name: "Sam") { name in
    return "Hello \(name), hello"
}

typealias Age = UInt8
let myAge: Age = 12

let nums = [1, 2, 3]
print(nums[0])
let multiTypeArray = [1, 2, "three"] as [Any]
for num in nums {
    print(num)
}

let myDict = ["a":1, "b":2]
let myDict2 = ["a":1, "b": "ben"] as [String: Any]

func arrayParam(sumMe: [Double]) {
    // sum it
}

func dictParam(sumMe: [NSObject: Any]) {
    // sum it
}

var explicitOptString: Optional<String>
var optString: String?

optString = "INFO 449 is lots of fun!"
print(explicitOptString?.hash.description)
if explicitOptString != nil {
    print("not nil")
}


enum CompassPoint {
    case North
    case South
    case East
    case West
}
enum Planet {
    case Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}

var direction = CompassPoint.North
switch direction {
    case .North: print("Brrr cold")
    case .South: print("Watch out for penguins")
    case .West : print("Where rises the Sun")
    case .East : print("Where sets the Sun")
}



