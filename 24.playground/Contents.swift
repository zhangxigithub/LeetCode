

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
 }


let list = ListNode.listFromArray(array: [1,2,3,4])

class Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        
        var result : ListNode?
        
        var l,i,j,k : ListNode?
        
        l = ListNode(0)
        l?.next = head
        i = l?.next
        j = i?.next
        k = j?.next
        
        result = l

        while j != nil
        {
            l?.next = j
            j?.next = i
            i?.next = k
            

            l = i
            i = l?.next
            j = i?.next
            k = j?.next
        }

        return result?.next
    }
}

Solution().swapPairs(list)?.printList()




