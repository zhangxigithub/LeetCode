class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        
        switch n {
        case 0:
            return [""]
        case 1:
            return ["()"]
        case 2:
            return ["()()","(())"]
        case 3:
            return ["()()()","((()))","(())()","()(())","(()())"]
        default:
            var result = [String]()
            let strings = generateParenthesis(n-1)
            for s in strings
            {
                 var array = Array(s)
                
                
                for i in 0 ..< array.count {
                   for j in 0 ..< array.count
                   {
                        array.insert("(", at: i)
                        array.insert(")", at: j)
                        if isValid(array: array)
                        {
                            result.append(stringValue(array: array))
                        }
                    }
                }

            }
            return Array(result)
        }
    }
    
    
    func isValid(array:Array<Character>) -> Bool
    {
        var table = [Character]()
        for c in array
        {
            if c == "("
            {
                table.append(c)
            }else
            {
                if c == ")" && table.count > 0
                {
                    table.removeLast()
                }else
                {
                    return false
                }
            }
        }
         return table.count == 0
    }
    
    func stringValue(array:Array<Character>) -> String
    {
        var result = ""
        for c in array
        {
            result += String(c)
        }
        return result
    }
    
}


print(Solution().generateParenthesis(4))

