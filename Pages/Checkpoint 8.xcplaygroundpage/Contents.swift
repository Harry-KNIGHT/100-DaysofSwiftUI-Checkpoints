//: [Previous](@previous)

import Foundation

protocol Building {
    var rooms: Int { get set }
    var buildingPrice: Int { get }
    var estateSeller: String { get }

    func buildingSalesSummary() -> String
}

extension Building {
    func buildingSalesSummary() -> String {
        "The building cost \(buildingPrice), it has \(rooms) rooms.\nFor get this building fill, \(estateSeller) sold each room for $\(buildingPrice / rooms)"
    }
}

struct House: Building {
    var rooms: Int
    var buildingPrice: Int = 500_000
    var estateSeller: String = "Tony Thomas Associates"
}

struct Office: Building {
    var rooms: Int
    var buildingPrice: Int = 500_000
    var estateSeller: String = "Tony Thomas Associates"
}

let soldOffice = Office(rooms: 10)
let soldHouse = House(rooms: 3)

print(soldOffice.buildingSalesSummary())
print(soldHouse.buildingSalesSummary())

//: [Next](@next)
