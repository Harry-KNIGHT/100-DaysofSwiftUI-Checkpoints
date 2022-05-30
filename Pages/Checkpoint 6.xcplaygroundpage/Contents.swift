//: [Previous](@previous)

import Foundation

// Add method to change gear up or down
// Have a think about variable and acces control
// Don't allow invalid gears - 1...10 seems a faire maximum range
struct Car {
    public let model: String
    public let seatsNumber: Int
    private var currentGear: Int

    mutating func changeGear(minimumGear: Int = 1, maximumGear: Int = 10) {
        if currentGear < minimumGear {
            currentGear += 1
            print(currentGear)
            print("You can't go less than \(minimumGear) gear, please go over next gear")
        }else if currentGear > maximumGear {
            currentGear = maximumGear
            print("You cant get over \(maximumGear) gears !")
        }else {
            print("This \(model) have \(seatsNumber) and \(maximumGear) gears ⚙️.")
        }
    }

    init(myModel: String, seats: Int, currentGear: Int) {
        self.model = myModel
        self.seatsNumber = seats
        self.currentGear = currentGear
    }
}

var tesla = Car(myModel: "Tesla", seats: 5, currentGear: 2)
print(tesla.changeGear())

//: [Next](@next)
