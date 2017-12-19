import UIKit

var str = "Hello, FizzBuss TDD"

// FizzBuzz code ================================================

func fizzBuzz(with number: Int) -> String {
    if isFizzBuzz(number: number) {
        return "FizzBuzz"
    }
    if isFizz(number: number) {
        return "Fizz"
    }
    if isBuzz(number: number) {
        return "Buzz"
    }
    return String(number)
}

func isFizzBuzz(number: Int) -> Bool {
    return isFizz(number: number) && isBuzz(number: number)
}

func isFizz(number: Int) -> Bool {
    return number % 3 == 0
}

func isBuzz(number: Int) -> Bool {
    return number % 5 == 0
}

// Test Spec. ====================================================

let spec = [
    (number:  1, expected: "1"),
    (number:  2, expected: "2"),
    (number:  3, expected: "Fizz"),
    (number:  4, expected: "4"),
    (number:  5, expected: "Buzz"),
    (number:  6, expected: "Fizz"),
    (number:  7, expected: "7"),
    (number:  8, expected: "8"),
    (number:  9, expected: "Fizz"),
    (number: 10, expected: "Buzz"),
    (number: 11, expected: "11"),
    (number: 12, expected: "Fizz"),
    (number: 13, expected: "13"),
    (number: 14, expected: "14"),
    (number: 15, expected: "FizzBuzz"),
    (number: 30, expected: "FizzBuzz"),
    (number: 50, expected: "Buzz")
]

// Test code =====================================================

for (number, expected) in spec {
    let actual = fizzBuzz(with: number).should(say: expected)
    print("input \(number) say \(actual)")
}
