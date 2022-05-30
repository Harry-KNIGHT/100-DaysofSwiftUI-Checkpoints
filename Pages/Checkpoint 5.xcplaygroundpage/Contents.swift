//: [Previous](@previous)

import Foundation

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
let evenNumber = luckyNumbers.filter { $0 % 2 == 1 }
let sortedArray = evenNumber.sorted { $0 < $1 }

let luckyNumber: [()] = sortedArray.map {
    print("\($0) is a lucky number")
}
//: [Next](@next)
