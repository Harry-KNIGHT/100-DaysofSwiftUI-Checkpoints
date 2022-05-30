//: [Previous](@previous)

import Foundation

enum SquareError: Error {
    case outOfBounds, undefinedError, noMatch, higherLower
}

func root(_ number: Int) throws -> String {
    for i in 0...100 {
        guard number < 1 || number > 10_000 else {
            throw SquareError.higherLower
        }
        if number == i * i {
            return "root = \(i)"
        } else {
            throw SquareError.noMatch
        }
    }
    return "Help me bro"
}
let number = 100

do {
    let result = try root(number)
    print("The root is \(result)")
}
catch SquareError.higherLower {
    print("Out of bounds")
}
catch SquareError.noMatch {
    print("No Root")
}
catch {
    print("Help")
}

//: [Next](@next)
