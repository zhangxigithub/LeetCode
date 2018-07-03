

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


let lists = [ListNode.listFromArray(array: []),
             ListNode.listFromArray(array: [1])]

class Solution {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode?
    {
        var pointers = lists
        let result = ListNode(0)
        var current :ListNode? = result

        while current != nil
        {
            var min : (indexes:[Int],value:Int)?
            for (i,p) in pointers.enumerated()
            {
                if p == nil { continue }
                if min == nil
                {
                    min = (indexes:[i],value:p!.val)
                }else
                {
                    if p!.val < min!.value
                    {
                        min = (indexes:[i],value:p!.val)
                    }else if p!.val == min!.value
                    {
                        min!.indexes.append(i)
                    }
                }
            }
            print(min)
            if min != nil
            {
                for index in min!.indexes {
                    print(pointers[index]?.val)
                    current?.next = pointers[index]
                    current = current?.next
                    
                    pointers[index] = pointers[index]?.next
                }
            }else
            {
                current = nil
            }
        }
        return result.next
    }
}



let list = Solution().mergeKLists(lists)

var node = list
while node != nil {
    print(node!.val)
    node = node?.next
}






