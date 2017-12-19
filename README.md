# FizzBuzzTDD-Swift

FizzBuzz Project for TDD in Swift language on Xcode Playground.

Starter is a beginning project to play.
Finish is a final code.

I provided func should(say:) in "Sources" folder under playground file. So that you can fun with TDD without Xcode test framework.

```
extension String {
    
    public func should(say expected: String) -> String {
        if expected != self {
            return "Wrong!"
        }
        else {
            return self
        }
    }
}
```

###### Example :-
```
func fizzBuzz(with number: Int) -> String {
    return "1"
}

fizzBuzz(with: 1).should(say: "1")  // should print "1" in playground runtime pane.
fizzBuzz(with: 2).should(say: "2")  // should ptint "Wrong" in playground runtime pane.
```
