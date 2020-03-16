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
let timeNow = DispatchTime.now()

let max: Double = Double(num).squareRoot()

// check if num can be divided by 2 or 3 or 5
if num % 2 == 0 || num % 3 == 0 || num % 5 == 0{
    isPrime = true
} else {
//    if not, then check only the prime between 7 to 30, then plus 30 by each iteration.
    for i in stride(from: 7, through: Int(max), by: 30) {
        if  num % i == 0
            || num % (i + 4) == 0
            || num % (i + 6) == 0
            || num % (i + 10) == 0
            || num % (i + 12) == 0
            || num % (i + 16) == 0
            || num % (i + 22) == 0
            || num % (i + 24) == 0{
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

let timeEnd = DispatchTime.now()
let timeElapsed = (timeEnd.rawValue - timeNow.rawValue) / 1000000000
print("Elapsed time \(timeElapsed) secs.")
