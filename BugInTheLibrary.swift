import Foundation
var string = " "
while let mass: String = readLine() {
    string += mass + "\n"
}
if string.isEmpty == true{
    print(" ")
} else {
    let splitMass = string.components(separatedBy: "\n")
var massOut = [String](repeating: " ", count: splitMass.count)
for var char in splitMass {
    for i in char {
        if i.isNumber {
            let num = Int(String(i))
            let index = char.firstIndex(of: i)
                char.remove(at: index!)
                massOut[num! - 1] = char
        }
    }
}
print(massOut.joined(separator: "\n"))
}
