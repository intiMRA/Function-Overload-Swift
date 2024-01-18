//: [Previous](@previous)

import Foundation

class Dog {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    @_disfavoredOverload
    func eat() {
        print("A Dog named \(name) eats food everyday")
    }
}

class GoldenRetriever: Dog {
    func eat(food: String = "dog food") {
        print("A GoldenRetriever named \(name) eats \(food) everyday")
    }
}

let dog = Dog(name: "Rex")
dog.eat()
let retriever = GoldenRetriever(name: "Max")
retriever.eat()

