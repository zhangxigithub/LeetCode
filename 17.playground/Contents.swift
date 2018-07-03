
class Solution {
    
    
    let table = ["2":["a","b","c"],
                 "3":["d","e","f"],
                 "4":["g","h","i"],
                 "5":["j","k","l"],
                 "6":["m","n","o"],
                 "7":["p","q","r","s"],
                 "8":["t","u","v"],
                 "9":["w","x","y","z"]]
    func letterCombinations(_ digits: String) -> [String] {
        
        var result = [String]()
        
        for key in digits
        {
            result = result * table[String(key)]!
        }
        
        return result
    }
}




extension Array where Iterator.Element == String
{
    static func *(left: [String], right: [String]) -> [String] {
        
        if left.count == 0
        {
            return right
        }
        if right.count == 0
        {
            return left
        }
        
        
        
        var result = [String]()
        for first in left
        {
            for second in right
            {
                result.append(first+second)
            }
        }
        return result
    }
}

let s = Solution().letterCombinations("23")
print(s)
