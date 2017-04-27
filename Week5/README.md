# Week 5 - Data Structures [📹](https://youtu.be/pA-8eBZvN1E)

## Note
![note](/Week5/note_week5_0.jpg)

![note](/Week5/note_week5_1.jpg)

## Voca
- sophisticated
- ingredient
- assume
- commit
- restrict
- mindful
- stitch
- distinction
- compelling
- look for
- look at
- defer
- compress
- devolve

## etc
- **List** [🔗](https://github.com/raywenderlich/swift-algorithm-club/tree/master/Linked%20List)
  - Singly linked list [📹](https://youtu.be/ZoG2hOIoTnA)
  ```
  +--------+    +--------+    +--------+    +--------+
  |        |    |        |    |        |    |        |
  | node 0 |--->| node 1 |--->| node 2 |--->| node 3 |
  |        |    |        |    |        |    |        |
  +--------+    +--------+    +--------+    +--------+
  ```
  - 단순 연결 리스트는 특정 노드에서 이전 노드에 접근하기 위해서는 첫번째 노드부터 새로 순회(Iteration)해야한다.
  - Doubly linked list
  ```
  +--------+    +--------+    +--------+    +--------+
  |        |--->|        |--->|        |--->|        |
  | node 0 |    | node 1 |    | node 2 |    | node 3 |
  |        |<---|        |<---|        |<---|        |
  +--------+    +--------+    +--------+    +--------+
  ```
  - **Singly vs doubly linked lists**
    - A singly linked list uses a little less memory than a doubly linked list because it doesn't need to store all those `previous` pointers.
    - But if you have a node and you need to find its previous node, you're screwed. You have to start at the head of the list and iterate through the entire list until you get to the right node. For many tasks, a doubly linked list makes things easier.

- [Generic](http://minsone.github.io/mac/ios/swift-generics-summary)
- **SubScript**
  - 클래스, 구조 그리고 열거형은 서브스크립트를 정의할 수 있는데 컬렉션, 리스트 또는 순열의 멤버 항목에 접근하기 위한 단축키임. 서브스크립트를 사용하여 설정과 검색을 위해 메소드를 나눌 필요 없이 인덱스로 값을 설정하고 검색함. 예를 들어 someArray[index]로 배열 인스턴스 항목과 someDictionary[key]로 딕셔너리 인스턴스 항목을 접근할 수 있음.

  ```swift
  subscript(index: Int) -> Int {
    get {
        // return an appropriate subscript value here
    }
    set(newValue) {
        // perform a suitable setting action here
    }
  }
  ```
  - 읽기 전용 프로퍼티를 구현할 때는 get set 키워드를 사용하지 않고 적절한 값만 반환해주는 형태로 구현해도 됨

  ```swift
  subscript(index: Int) -> Int {
    // 적절한 서브스크립트 결과값 반환
  }
  ```
- **assert**
  - assert() 라는 함수는 C언어 시절 부터 예기치 못한 에러를 잡기 위한 무기(?)로써 활용되어 왔다. 문제가 생길 것 같으면 일부러 자살(?)하기 위한 무기가 바로 assert()이다.
  - Assertion 은 `코드가 실행될 때 반드시 만족해야 하는 조건을 코드 상에 명시해 놓는 것` 이라고 생각한다. 그래서 코드가 정상적으로 실행되면 문제가 없는 것이고 만약 Assertion 을 통해 문제가 발생한다면 어딘가 문제가 있다는 의미가 되어서 디버깅에 좋은 자료가 된다.
  - 만약 디버깅 모드에서 assert() 등을 통해 앱이 죽으면 죽은 위치가 확실하게 잡힌다. 이 점을 이용하면 버그를 미연에 방지하거나 디버그에 유용한 정보로 쓸 수 있다.
- **Queue**
  - 자료를 차례대로 저장하는 자료구조. 자료반환은 큐의 제일 앞에서만 가능하고 자료추가는 큐의 제일 끝에서만 가능하다.
  - 인큐(En-Queue): 새로운 자료를 큐에 추가하는 것
  - 디큐(De-Queue): 큐에서 자료를 꺼내는 것
  - 큐의 크기가 3인데 4번째 자료를 추가하려고 하면 넘침(overflow) 현상이 발생하여 추가될 수 없다.
  - 공백상태에서 디큐 연산이 호출되면 부족(underflow)현상이 발생했다고 한다.
  - Peek : De-Queue와 비슷하지만, 제거하지 않고 그냥 반환한다.
- **Hash Table**
  - Hash table allows you to store and retrieve objects by a "key".
  - Hash Table combine the random access ability of an **array** with the dynamism of a **linked list**.
  - All these operations take a constant amount of time, so inserting, retrieving, and removing are all O(1).
  - A common way to handle collisions is to use chaining. The array looks as follows:
  ```
  buckets:
	+-----+
	|  0  |
	+-----+     +----------------------------+
	|  1  |---> | hobbies: Programming Swift |
	+-----+     +----------------------------+
	|  2  |
	+-----+     +------------------+     +----------------+
	|  3  |---> | firstName: Steve |---> | lastName: Jobs |
	+-----+     +------------------+     +----------------+
	|  4  |
	+-----+
  ```
  - With chaining, keys and their values are not stored directly in the array. Instead, each array element is a list of zero or more key/value pairs. The array elements are usually called the buckets and the lists are called the chains. Here we have 5 buckets, and two of these buckets have chains. The other three buckets are empty.
  - Insertions can start to tend toward Θ(1)
  - Deletion can start to tend toward Θ(1)
  - Lookup can start to tend toward Θ(1)
  - A hash table amounts to a combination of two thing with which we're quite familiar.
    - 1) a **hash function**, which return an nonnegative integer value called a _hash code_.
    - 2) an **array** capable of storing data of the type we with to place into the data structure.
  - a collision occurs when two pieces of data, when run through the hash function, yield the same hash code.
  - Resolving collisions: Linear probing
  - Linear probing is subject to a problem called **clustering**. Once there's a miss, two adjacent cells will contain data, making it more likely in the future that the cluster will grow.
  - Resolving collisions: **Chaining**
