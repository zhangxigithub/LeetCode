func longestCommonPrefix(_ strs: [String]) -> String {
    

    let length = strs.sorted { (s1, s2) -> Bool in
        return s1.count < s2.count
    }.first?.count ?? 0

    if length == 0 {return ""}

    var longest = String(strs.first![strs.first!.index(strs.first!.startIndex, offsetBy: 0) ..< strs.first!.index(strs.first!.startIndex, offsetBy: length)])
    
    for s in strs
    {
        while !s.hasPrefix(longest) {
            longest.removeLast()
        }
    }
    return longest
    
}


longestCommonPrefix(["abc","c","0","-1"])
