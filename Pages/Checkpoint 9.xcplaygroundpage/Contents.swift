//: [Previous](@previous)

import Foundation

func intArray(_ integers: [Int]?) -> Int? {
    integers?.randomElement() ?? Int.random(in: 1...100)
}

if let intArray = intArray([14, 11, 10, 9, 5, 33, 45]) {
    print(intArray)
}

if let intArray2 = intArray(nil) {
    print(intArray2)
}

// Withtout optional int return
func intArray2(_ integers: [Int]?) throws -> Int {
    return integers?.randomElement() ?? Int.random(in: 1...100)
}

let isNotNil = try intArray2([23, 25, 44])
print(isNotNil)

let isNil = try intArray2(nil)
print(isNil)
//: [Next](@next)
