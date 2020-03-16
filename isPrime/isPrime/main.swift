import Foundation
print("Please enter a positive integer: ")
let input: Int? = Int(readLine()!)
if input == nil {
    print("Input was not a number")
    exit(1)
}

let num: Int = input!
if num < 1 {
    print("Number was not positive")
    exit(2)
} else if num < 4 {
    print("\(num) is prime")
    exit(0)
}

var isPrime: Bool = true
let max: Double = Double(num).squareRoot()
print(max)
// check if num is odd or even
if num % 2 == 0 {
    isPrime = true
} else {
    for i in stride(from: 3, through: Int(max), by: 2) {
        print(i)
        if num % i == 0 {
            isPrime = false
            break
        }
    }
}

if (isPrime) {
    print("\(num) is prime")
}
else {
    print("\(num) is not prime")
}
