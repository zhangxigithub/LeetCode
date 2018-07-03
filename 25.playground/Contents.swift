

public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init(_ val: Int) {
          self.val = val
          self.next = nil
      }
    
    
    static func listFromArray(array:[Int]) -> ListNode?
    {
        if array.count == 0 {return nil}
        let result = ListNode(array.first!)
        var current:ListNode? = result
        for i in 1 ..< array.count
        {
            current?.next = ListNode(array[i])
            current = current?.next
        }
        return result
    }
    
    func printList()
    {
        var p:ListNode? = self
        while p != nil
        {
            print(p!.val)
            p = p!.next
        }
    }
    
    func reverse(k:Int) -> (head:ListNode?,tail:ListNode?,full:Bool)
    {
        var tail = self
        
        var h : ListNode?
        var p    : ListNode?
        
        h = self
        p = h?.next
        h?.next = nil
        
        var count = 1
        
        while p != nil && count < k{
            let pNext = p?.next
            p?.next = h
            h = p
            p = pNext
            count += 1
        }
        print(count)

        return (head:h,tail:tail,full:(count == k))
    }
    func k(k:Int)-> ListNode?
    {
        var result:ListNode? = self
        var count = 1
        while count < k && result != nil{
            result = result?.next
            count += 1
        }
        print("k value : ",result?.val)
        return result
    }
 }


let list = ListNode.listFromArray(array: [1,2,3,4,5])

class Solution {
    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode?
    {
        
        
        
        return nil
    }
}
//print(list?.k(k: 3)?.val)
//print(list?.reverse(k: 5).full)
Solution().reverseKGroup(list, 3)?.printList()
