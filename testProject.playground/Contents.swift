import Cocoa
func makeItCool(_input: String) -> String {
    let toReplaceDict:[String:String] = ["a":"@",
                                "i":"1",
                                "s":"$",
                                "o":"0",
                                "t":"+"]
    var output = _input
    for(from, to) in toReplaceDict{
        output = output.replacingOccurrences(of: from,
                                             with: to,
                                             options: NSString.CompareOptions.caseInsensitive)
    }
    return output
}
var input = "Today"
print("Input line is  -> \(input)\nOutput line is -> \(makeItCool(_input: input))")
