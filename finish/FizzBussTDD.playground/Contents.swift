import UIKit

var str = "Hello, FizzBuss TDD"

// FizzBuzz code =====================================================

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

// Test code =====================================================

fizzBuzz(with: 1).should(say: "1")
fizzBuzz(with: 2).should(say: "2")
fizzBuzz(with: 3).should(say: "Fizz")
fizzBuzz(with: 4).should(say: "4")
fizzBuzz(with: 5).should(say: "Buzz")
fizzBuzz(with: 6).should(say: "Fizz")
fizzBuzz(with: 7).should(say: "7")
fizzBuzz(with: 8).should(say: "8")
fizzBuzz(with: 9).should(say: "Fizz")
fizzBuzz(with: 10).should(say: "Buzz")
fizzBuzz(with: 11).should(say: "11")
fizzBuzz(with: 12).should(say: "Fizz")
fizzBuzz(with: 13).should(say: "13")
fizzBuzz(with: 14).should(say: "14")
fizzBuzz(with: 15).should(say: "FizzBuzz")
fizzBuzz(with: 30).should(say: "FizzBuzz")


