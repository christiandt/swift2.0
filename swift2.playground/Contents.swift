//: Playground - noun: a place where people can play

import UIKit


// variable
var hello = "Hello, playground"
hello = "testing"


// constant
let testlet = 30


// type-specification
let four: Float = 4


// type-converting
let label = "Width is "
let width = 4
let output = label + String(width)
print(output)


// calculations in string
let apples = 3
let oranges = 5

let applestring = "I have \(apples) apples"
let fruitstring = "I have \(oranges+apples) pieces of fruit"


// array
var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "Bottle of water"


// dictionary
var occupations = ["Malcom": "Captain", "Kaylee": "Mechanic"]
occupations["Jayne"] = "Public Relations"


// initiate ampty array/dict
let emptyArray = [String]()
let emptyDict = [String: Float]()


// with type inferred
shoppingList = []
occupations = [:]


// for-in
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores{
    if score > 50 {
        teamScore += 3
    }
    else {
        teamScore += 1
    }
}
print("Team Score is \(teamScore)")


// optional value
var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
optionalName = nil
var greeting = "Hello!"

if let name = optionalName{
    greeting = "Hello \(name)"
}
else{
    greeting = "I don't talk to strangers"
}
print(greeting)


// switch
let vegetable = "Red Pepper"
switch vegetable {
case "celery":
    let vegetableComment = "Add some raisins and make ants on a log."
case "cucumber", "watercress":
    let vegetableComment = "That would make a great tea sandwitch."
case let x where x.hasSuffix("Pepper"):
    let vegetableComment = "Is it a spicy \(x)?"
default:
    let vegetableComment = "Everything tastes good in soup."
}


// for-in
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25]
]
var largest = 0
for (kind, numbers) in interestingNumbers{
    for number in numbers{
        if number > largest{
            largest = number
        }
    }
}
print(largest)


// while
var m = 2
while m < 100{
    m = m * 2
}
print(m)


// do-while
var n = 2
repeat {
    n = n * 2
}
while n < 100
print(n)


// for range
var firstForLoop = 0
for i in 0..<4{
    firstForLoop += i
}
print(firstForLoop)

var secondForLoop = 0
for var i = 0; i < 4; ++i {
    secondForLoop += i
}
print(secondForLoop)


// function
func greet(name: String, day: String) -> String{
    return "Hello \(name), today is \(day)."
}
print(greet("Bob", day: "Tuesday"))


// tuple as return value
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    for score in scores{
        if score > max{
            max = score
        }
        else if score < min{
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}
let statistics = calculateStatistics([5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.1)


// variable number of arguments
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers{
        sum += number
    }
    return sum
}
print(sumOf(42, 597, 12))


// returning a function
func makeIncrementer() -> (Int -> Int){
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
print(increment(7))


// function as argument
func hasAnyMatches(list: [Int], condition: Int -> Bool) -> Bool{
    for item in list{
        if condition(item){
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool{
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(numbers, condition: lessThanTen)


// closure without name
numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})


// concise closure
let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)
let sortedNumbers = numbers.sort { $0 > $1 }
print(sortedNumbers)



// classes
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String{
        return "A shape with \(numberOfSides) sides."
    }
}

var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()


// class with initializer
class NamedShape{
    var numberOfSides: Int = 0
    var name: String
    init(name: String){
        self.name = name
    }
    func simpleDescription() -> String{
        return "A shape of \(numberOfSides) sides."
    }
}


// subclassing and overriding
class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double{
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
}

let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()


// getters and setters
class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}

var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)












