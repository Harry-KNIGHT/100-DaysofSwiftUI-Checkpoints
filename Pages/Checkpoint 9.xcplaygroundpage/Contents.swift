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

//: [Next](@next)
