class Solution {
    func isValid(_ s: String) -> Bool
    {
        var table = [Character]()
        
        for c in s
        {
            print(c)
            switch c {
            case "[","{","(":
                table.append(c)
            default:
                var right : Character!
                if c == ")" {right = Character("(")}
                if c == "}" {right = Character("{")}
                if c == "]" {right = Character("[")}
                
                if table.last == right
                {
                    table.removeLast()
                }else
                {
                    return false
                }
                /*
                if let index = table.index(of: right)
                {
                    print(index)
                    table.remove(at: index)
                }else
                {
                    return false
                }
                */
            }
        }
        
        return table.count == 0
    }
}


Solution().isValid("()[]{}")
