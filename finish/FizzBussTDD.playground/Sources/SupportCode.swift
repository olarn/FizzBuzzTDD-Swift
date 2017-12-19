import Foundation

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
