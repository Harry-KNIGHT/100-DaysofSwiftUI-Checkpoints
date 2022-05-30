//: [Previous](@previous)

import Foundation

class Animal {
    let legs: Int

    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("Woof woooooof woooooooooooooooffff")
    }

    override init(legs: Int) {
        super.init(legs: legs)
    }
}

final class Poodle: Dog {
    override init(legs: Int) {
        super.init(legs: legs)
    }
    override func speak() {
        print("I'm Poodle the dog without master")
    }

}

final class Corgi: Dog {
    override init(legs: Int) {
        super.init(legs: legs)
    }
    override func speak() {
        print("I'm a japonese cute cat ! 🎌")
    }
}

class Cat: Animal {
    let isTame: Bool

    init(isTame: Bool, legs: Int) {
        self.isTame = isTame
        super.init(legs: legs)
    }

    func speak() {
        print("Meooooow")
    }
}

final class Persian: Cat {
    let name: String

    init(name: String, isTame: Bool, legs: Int) {
        self.name = name
        super.init(isTame: isTame, legs: legs)
    }
    override func speak() {
        if isTame {
            print("\(name) is the cutest cat of the house")
        } else {
            print("\(name) is so wild but I love him !")
        }
    }

    deinit {
        print("\(name) does not longer exist 🤧")
    }
}

final class Lion: Cat {
    let name: String

    init(name: String, legs: Int, isTame: Bool) {
        self.name = name
        super.init(isTame: isTame, legs: legs)
    }
    override func speak() {
        if isTame {
            print("I'm \(name) the coolest cat of the city of lights")
        }else {
            print("I'm \(name), the wildest cat of Los Angeles !")
        }
    }

    deinit {
        print("\(name) is unfindable till monday !")
    }
}

let corgi = Corgi(legs: 4)
corgi.speak()
let poodle = Poodle(legs: 4)
poodle.speak()

let creamy = Persian(name: "Creamy", isTame: true, legs: 4)
creamy.speak()

let simba = Lion(name: "Simba", legs: 4, isTame: false)
simba.speak()


//: [Next](@next)
