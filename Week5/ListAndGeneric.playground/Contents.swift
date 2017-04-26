//: Playground - noun: a place where people can play

import Foundation

//리스트

public class LinkedListNode<T> {
    
    var value: T
    var next: LinkedListNode?
    weak var previous: LinkedListNode?
    
    public init(value: T) {
        self.value = value
    }
}

public class LinkedList<T> {
    public typealias Node = LinkedListNode<T>
    
    //we're using a typealias so inside LinkedList we can write the shorter Node instead of LinkedListNode<T>.
    
    var head: Node?
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var first: Node? {
        return head
    }
    
    public var last: Node? {
        //If you're new to Swift, you've probably seen if let but maybe not if var. It does the same thing -- it unwraps the head optional and puts the result in a new local variable named node. The difference is that node is not a constant but an actual variable, so we can change it inside the loop.
        
        if var node = head {
            while case let next? = node.next {
                node = next
            }
            return node
        }
        else {
            return nil
        }
    }

    public func append(value: T) {
        
        let newNode = Node(value: value)
        if let lastNode = last {
            newNode.previous = lastNode
            lastNode.next = newNode
        }
        else {
            head = newNode
        }
    }
    //One way to speed up count from O(n) to O(1) is to keep track of a variable that counts how many nodes are in the list. Whenever you add or remove a node, you also update this variable.
    public var count: Int {
        if var node = head {
            var c = 1
            while case let next? = node.next {
                node = next
                c += 1
            }
            return c
        }
        else {
            return 0
        }
    }
    
    public func nodeAt(_ index: Int) -> Node? {
        if index >= 0 {
            var node = head
            var i = index
            while node != nil {
                if i == 0 { return node }
                i -= 1
                node = node!.next
            }
        }
        return nil
    }
    
    public subscript(index: Int) -> T {
        let node = nodeAt(index)
        assert(node != nil)
        return node!.value
    }
    
    private func nodesBeforeAndAfter(index: Int) -> (Node?,Node?) {
        var i = index
        var next = head
        var prev: Node?
        
        while next != nil && i > 0 {
            i -= 1
            prev = next
            next = next!.next
        }
        assert(i == 0)
        
        return (prev,next)
    }
    
    public func insert(_ value: T, atIndex index: Int) {
        let (prev,next) = nodesBeforeAndAfter(index: index)
        let newNode = Node(value: value)
        newNode.previous = prev
        newNode.next = next
        prev?.next = newNode
        next?.previous = newNode
        
        if prev == nil {
            head = newNode
        }
    }
    public func removeAll() {
        head = nil
    }
    public func remove(node: Node) -> T {
        let prev = node.previous
        let next = node.next
        
        if let prev = prev {
            prev.next = next
        }
        else {
            head = next
        }
        next?.previous = prev
        
        node.previous = nil
        node.next = nil
        return node.value
    }
    public func removeLast() -> T {
        assert(!isEmpty)
        return remove(node: last!)
    }
    public func removeAt(_ index: Int) -> T {
        let node = nodeAt(index)
        assert(node != nil)
        return remove(node: node!)
    }
}

let list = LinkedList<String>()
list.isEmpty
list.first
list.append(value: "Hello")
list.isEmpty
list.first!.value
list.last!.value
/*
          +---------+
 head --->|         |---> nil
          | "Hello" |
  nil <---|         |
          +---------+
 */
list.append(value: "World")
list.first!.value
list.last!.value
/*
          +---------+    +---------+
 head --->|         |--->|         |---> nil
          | "Hello" |    | "World" |
  nil <---|         |<---|         |
          +---------+    +---------+
 */

list.nodeAt(0)!.value
list[0]
list.insert("Swift", atIndex: 1)
list[1]
list.remove(node: list.first!)
list.count






//제네릭
//not using generic
struct IntStack {
    var items = [Int]()
    mutating func push(_ item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
}
var integerStack = IntStack()
integerStack.push(3)
integerStack.push(5)
integerStack.push(3)
print(integerStack.items)
integerStack.pop()
print(integerStack.items)

//using generic 
struct Stack<Element> {
    var items = [Element]()
    mutating func push(_ item: Element){
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

var doubleStack = Stack<Double>()
doubleStack.push(1.0)
doubleStack.push(2.0)
doubleStack.pop()

//Stack item array를 Any타입으로 정의하는 것보다 제네릭을 사용했을 때 훨씬 유연하고 광범위하게 사용할 수 있으며, Element 타입을 정해주면 그 타입에만 동작하도록 제한할 수 있어 더욱 안전하고 의도된 대로 기능을 사용하도록 유도할 수 있습니다.
var anyStack = Stack<Any>()
anyStack.push("1")
anyStack.push(1)
anyStack.pop()

//익스텐션을 토해 제네릭을 사용하는데 기능을 추가하고자 한다면, 정의에 타입 매개변수를 명시하지 않음. 대신 원래의 제네릭 정의에 명시된 타입 매개변수를 익스텐션에서 사용 가능함.
extension Stack {
    var topElement: Element? {
        return self.items.last
    }
}

//타입제약은 클래스타입 또는 프로토콜로만 줄 수 있습니다. 열거형, 구조체 타입은 사용 될 수 없음.
