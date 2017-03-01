/*:

 ## Cardinals 

 If you want cardinals (1, 2 ...) then a .stringsdict and a utility routine are your answer. 

 The keys **n.friends** and **n.items** only appear in the .stringsdict, no .strings file is needed.
  */
import Foundation

func tr(_ key: String, _ args: CVarArg...) -> String {
    let format = NSLocalizedString(key, comment: "")
    return String(format: format, locale: Locale.current, arguments: args)
}

var f0 = tr("n.friends")
var f1 = tr("n.friends",1)
var f2 = tr("n.friends",2)

var i = tr("n.items")

//: [But what about Ordinals? 1st, 2nd, 3rd...?](@next)
