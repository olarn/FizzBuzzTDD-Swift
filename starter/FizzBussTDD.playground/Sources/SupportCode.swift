import Foundation

extension String {
    public func should(say expected: String) -> String {
        return expected == self ? self : "Wrong!"
    }
}
