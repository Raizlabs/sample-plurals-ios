/*:
 [back to Cardinal page](@previous)

 ## Ordinals

 If you want ordinals (1st, 2nd, 3rd...) then a .stringsdict is no use to you, you need NSNumberFormatter
 */
import Foundation

let fmtr = NumberFormatter()
fmtr.numberStyle = .ordinal

let s1 = fmtr.string(from: 1)
let s2 = fmtr.string(from: 2)
let s3 = fmtr.string(from: 3)
let s4 = fmtr.string(from: 4)
let s101 = fmtr.string(from: 101)
let s111 = fmtr.string(from: 111)

// or (look in the Debugger Console for output
for i: NSNumber in [1,2,3,4,101,111] {
    if let result = fmtr.string(from: i) {
        print(result)
    }
}

fmtr.locale = Locale(identifier: "fr")

let f1 = fmtr.string(from: 1)
let f2 = fmtr.string(from: 2)
let f101 = fmtr.string(from: 101)
let f111 = fmtr.string(from: 111)

print("\nen Francais")
for i: NSNumber in [1,2,3,4,101,111] {
    if let result = fmtr.string(from: i) {
        print(result)
    }
}

