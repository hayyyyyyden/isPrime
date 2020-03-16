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

// check if num can be divided by 2 or 3
if num % 2 == 0 || num % 3 == 0{
    isPrime = true
} else {
//    if not, then check only 6k+1 and 6k+5, because 6k+2,6k+3,6k+4 can all be divided by 2 or 3, thus filter out to speed up.
    for i in stride(from: 5, through: Int(max), by: 6) {
        if num % i == 0 || num % (i + 2) == 0 {
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
