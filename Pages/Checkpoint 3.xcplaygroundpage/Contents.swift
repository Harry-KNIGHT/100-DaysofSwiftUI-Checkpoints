//: [Previous](@previous)

import Foundation

// Fizz Buzz
for number in 1...100 {
    if number.isMultiple(of: 3) && number.isMultiple(of: 5){
        print("\(number) Fizz buzz")
    } else if number.isMultiple(of: 5) {
        print("\(number) Buzz")
    } else if number.isMultiple(of: 3) {
        print("\(number) Fizz")
    }else {
        print(number)
    }
}

// Second version with array
var troughtHundred = (1...100).map { (number: Int) -> String in
    if number.isMultiple(of: 3) && number.isMultiple(of: 5) {
        return "\(number) Fizz Buzz"
    }else if number.isMultiple(of: 3) {
        return "\(number) Fizz"
    }else if number.isMultiple(of: 5) {
        return "\(number) Buzz"
    }else {
        return String(number) // converted into string for compilation
    }
}
//print(troughtHundred.joined(separator: "\n"))

func fizzBuzzSwitch() {
    for num in (1...100) {
        switch (num % 3 == 0, num % 5 == 0) {
        case (true, false):
            print("\(num) Fizz")
        case (false, true):
            print("\(num) Buzz")
        case (true, true):
            print("\(num) Fizz Buzz")
        default:
            print(String(num))
        }
    }
}

fizzBuzz()

//: [Next](@next)
