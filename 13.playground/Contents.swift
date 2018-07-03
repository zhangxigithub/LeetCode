/*
https://leetcode.com/problems/longest-palindromic-substring/description/
*/

import UIKit


/*
 Symbol       Value
 I             1
 V             5
 X             10
 L             50
 C             100
 D             500
 M             1000
 */

    let symbols = [("I","V","X"),("X","L","C"),("C","D","M"),("M","","")]
    
    func intToRoman(_ num: Int) -> String {
        
        let array = Array(Array(String(num)).reversed())
        
        var result = ""
        for (i,s) in array.enumerated()
        {
            var string = ""
            let value = Int(String(s)) ?? 0
            switch value {
            case 1 : string = "1"
            case 2 : string = "11"
            case 3 : string = "111"
            case 4 : string = "12"
            case 5 : string = "2"
            case 6 : string = "21"
            case 7 : string = "211"
            case 8 : string = "2111"
            case 9 : string = "13"
            default:
                break
            }
            
            string = string.replacingOccurrences(of: "1", with: symbols[i].0)
            string = string.replacingOccurrences(of: "2", with: symbols[i].1)
            string = string.replacingOccurrences(of: "3", with: symbols[i].2)
            
            result = string + result
        }
        
        return result
    }





extension Character
{
    var intValue : Int
    {
        return ["I":1,"V":5,"X":10,"L":50,"C":100,"D":500,"M":1000][self] ?? 0
    }
}

func romanToInt(_ s: String) -> Int {
    
    var result = 0
    var lastChar : Character?
    
    for (i,c) in s.reversed().enumerated()
    {
        if lastChar == nil
        {
            lastChar = c
            result += lastChar!.intValue
            print(result)
            continue
        }
        if c.intValue < lastChar!.intValue
        {
            result -= c.intValue
            lastChar = nil
        }
        else if c.intValue > lastChar!.intValue
        {
            result += c.intValue
            if (i+1) < s.count
            {
                print(Array(s.reversed())[i+1],c,lastChar)
                if Array(s.reversed())[i+1].intValue > c.intValue
                {
                    print("clear")
                    lastChar = nil
                }else
                {
                    lastChar = c
                }
            }
        }
        else if c.intValue == lastChar!.intValue
        {
            result += c.intValue
        }
        print(result)
    }
    

    return result
}

romanToInt("MDCXCV")

intToRoman(1994)

/*
 "M MM XC IV"
 "M CM XC IV"
 Input:
 58
 Output:
 "VLXXX"
 Expected:
 "LVIII"
 */







