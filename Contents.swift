//: [Previous](@previous)

import Foundation

protocol Animal {
    func eat(food: String, kgs: Int)
    func eat(food: String)
}

extension Animal {
    func eat(food: String = "corn") {
        self.eat(food: food)
    }
}

class Dog: Animal {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    func eat(food: String = "dog food", kgs: Double = 1.1) {
        print("\(name) eats precisely \(kgs) kgs of \(food) everyday")
    }
    
    func eat(food: String = "dog food", kgs: Int = 1) {
        print("\(name) eats \(kgs) kgs of \(food) everyday")
    }
    
    func eat(food: String = "dog food") {
        print("\(name) eats \(food) everyday")
    }
}

class GoldenRetriever: Dog {
    override func eat(food: String = "dog food", kgs: Double = 1.1) {
        print("A golden retriever named \(name) eats precisely \(kgs) kgs of \(food) everyday")
    }
}

let dog = Dog(name: "Rex")
dog.eat(food: "meat", kgs: 1.8)
let retriever = GoldenRetriever(name: "Max")
retriever.eat(food: "meat", kgs: 4.0)

