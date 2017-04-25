# Week 3 - Algorithms [📹](https://youtu.be/jUyQqLvg8Qw)

## Note
![note](/Week3/note_week3_0.jpg)

![note](/Week3/note_week3_1.jpg)

## Voca
- among : ~중에, 사이에
  - among the **challenges** in CS50,
- contiguous : 인접하는
  - it's an array, a **contiguous** block of memory.
- adjacently : 인접하여
  - the two red bars **adjacently** are the ones that are...
- intuition : 직감
  - this way is goo **intuition**
- intuitively : 직관적으로
  - ca you possibly, **intuitively** in the real world
- concrete : 구체적인
- convince : 설득하다, 확신시키다
  - let's just do a **concrete** example to **convince** you
- involve : 관련되다
- claim : 주장하다, 요구하다

## etc
- **Binary Search**[📹](https://youtu.be/5xlIPT1FRcA)
  - **미리 정렬된 자료** 를 대상으로 검색 범위를 반으로 감소시키는 과정을 반복해서 검색키를 찾는다.
  - 왼쪽에는 작은 값을, 오른쪽에는 큰값을 위치시킨다.
  - Pseudo Code
    - repeat until the array is of size 0:
      - calculate the middle point of the current array.
      - if the target is at the middle, stop.
      - otherwise, it the target is less than what's at the middle, repeat, changing the end point to be just to the left of the middle.
      - otherwise, if the target is greater than wha't at the middle, repeat, changing the start point to be just to the right of the middle.
  - 만약 배열에서 존재하지 않는 숫자를 타겟으로 지정하면 시작포인트가 끝나는 포인트 보다 더 큰 상황이 발생. 예를들어, 배열 8번째 부터 시작되는데 7번째에 끝나면 말이 되지 않는 상황. 이때 타겟이 없다고 결론을 낸다.
  - 최악의 시나리오 : 타겟 요소가 분할의 마지막에서 찾거나 혹은 배열안에 존재하지 않을 때에도, we have to divide a list of n elements in half repeatedly to find the target element. -> O(log n)
  - Best-case scenario : 전체 배열에서 타켓이 가운데에 위치해있을 경우 -> Ω(1)
  - binary search is a lot better that linear search but you have to deal with the process of sorting your array first before you can leverage the power of binary search.

``` c
//순환으로 구현
int binarySearchRecursive(int value[], int start, int end, int key)
{
  int ret = FAIL;
  int middle = 0;
  //검색 데이터가 유효하다면 로직을 수행
  if (start <= end) {
    middle = (start + end) / 2;
    if (key == value[middle]) {
      ret = middle;
    }
    else if (key < value[middle]) {
      ret = binarySearchRecursive(value, start, middle -1, key);
    }
    else {
      ret = binarySearchRecursive(value, middle + 1, end, key);
    }
  }
  return ret;
}
```
- **BubbleSort**[📹](https://youtu.be/Ui97-_n5xjo)
  - the idea of the Algorithm is to move higher valued elements generally towards the right and lower value elements generally towards the left.
  - In Pseudocode:
    - Set swap counter to a non-zero value
    - Repeat until the swap counter is 0:
      - Reset swap counter to 0
      - Look at each adjacent pair
        - if two adjacent elements are not in order, swap them and add one to the swap counter
  - 최고의 시나리오 : 완전 정렬 되었을 경우 O(0) = 0, Ω(1)
  - 평균 및 최악 : 역순으로 정렬되었을 경우 모두 n(n-1)/2회 실시하게 됨 -> O(n^2)
  - 버블 솔트는 그렇게 빠른 정렬 알고리즘은 아니다.
```swift
var array = [5,3,4,6,8,2,9,1,7,10,11]
var sortedArray = NSMutableArray(array: array)
var sortedAboveIndex = array.count
var swapCounter = 0

repeat {
  var lastSwapIndex = 0

  for i in 1..<sortedAboveIndex {
    if (sortedArray[i - 1] as! Int) > (sortedArray[i] as! Int) {
      sortedArray.exchangeObject(at: i, withObjectAt: i-1)
      lastSwapIndex = i
      swapCounter += 1
    }
  }

  sortedAboveIndex = lastSwapIndex

} while (sortedAboveIndex != 0)
```

- **Computational Complexity**[📹](https://youtu.be/IM9sHGlYV5A)

![complexity](/Week3/complexity0.png)
  - O(1) : a constant time algorithm  

```swift
func forForyou(a: Int) {
  return 4
}
func addTwoNums(a:Int, b:Int){
  return a+b
}
```

  - O(n) : linear time
    - Alway takes n operations in the worst case.
    - what's runtime?

```c
for (int j=0; j<m, j++){
  //loop body that run in O(1)
  //worst case is O(m)
}

for (int j=0; j<p, j++){
  for (int k=0; k<p; k++){
    //loop body that run in O(1)  
    //worst case is O(p^2)
  }
}
```
  - 시간 복잡도 표현(Notation)
    - Big O : 실행 시간 상한 표현 (가장 많이 쓰임) -> 최악의 시간 계산
    - Ω : 실행 시간 하한 표현 -> 운좋을때 걸리는시간
    - Θ : 실행 시간 평균 표현
- **Insertion sort**[📹](https://youtu.be/TwGb6ohsvUU)
  - In pseudocode:
    - call the first element of the array "sort"
    - repeat until all element are sorted:
      - look at the next unsorted element. Insert into the "sorted" portion by shifting the requisite number of elements.
    - worst case : running time is O(n^2)
    - best case : running time is Ω(n)

- **Linear Search**[📹](https://youtu.be/vZWfKBdSgXI)
  - 처음부터 시작해서 타겟을 찾을때까지 계속 진행
  - worst case : 타겟이 맨 마지막에 위치해 있을 경우 O(n)
  - best case : 타겟이 맨 처음에 위치해 있을 경우 Ω(1)

- **Merge Sort**[📹](https://youtu.be/sWtYJv_YXbo)
  - In pseudocode :
    on input of n elements
        if n < 2
            return
        else
            sort left half of elements
            sort right half of elements
            merge sorted halves
  - Merge sort leverages something called **recursion**
  - worst & best case : O(nlogn)
  - Merge sort is got a very fundamental different from selection sort, bubble sort, insertion sort,. it's really clever and powerful.

```swift
func mergeSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }
    let middleIndex = array.count / 2
    let leftArray = mergeSort(Array(array[0..<middleIndex]))
    let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
    return merge(leftPile: leftArray, rightPile: rightArray)
}

func merge(leftPile:[Int], rightPile:[Int]) -> [Int] {
    var leftIndex = 0
    var rightIndex = 0

    var orderedPile = [Int]()

    while leftIndex < leftPile.count && rightIndex < rightPile.count {

        if leftPile[leftIndex] < rightPile[rightIndex] {
            orderedPile.append(leftPile[leftIndex])
            leftIndex += 1
        }
        else if leftPile[leftIndex] > rightPile[rightIndex] {
            orderedPile.append(rightPile[rightIndex])
            rightIndex += 1
        }
        else {
            orderedPile.append(leftPile[leftIndex])
            leftIndex += 1
            orderedPile.append(rightPile[rightIndex])
            rightIndex += 1
        }
    }

    while leftIndex < leftPile.count  {
        orderedPile.append(leftPile[leftIndex])
        leftIndex += 1
    }
    while rightIndex < rightPile.count {
        orderedPile.append(rightPile[rightIndex])
        rightIndex += 1
    }
    print(orderedPile)
    return orderedPile

}
```

- **Selection Sort**[📹](https://youtu.be/lx9G71uLXIg)
  - for i from 0 to n-1
    find smallest element between i'th and n-1'th
    swap smallest with i'th element
  - worst & best case : O(n^2)
```swift
func selectionSort(_ array: [Int]) -> [Int] {
  guard array.count > 1 else { return array }
  var a = array                   

  for x in 0 ..< a.count - 1 {   

    var lowest = x
    for y in x + 1 ..< a.count {   
      if a[y] < a[lowest] {
        lowest = y
      }
    }

    if x != lowest {               
      swap(&a[x], &a[lowest])
    }
  }
  return a
}
```

- [코딩도장](http://codingdojang.com/) : 여러 문제를 풀어볼 수 있는 곳
- [Swift algorithm club](https://github.com/raywenderlich/swift-algorithm-club) : 스위프트로된 알고리즘 코드를 볼 수 있는 곳
