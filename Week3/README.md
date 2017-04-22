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
- Binary Search[📹](https://youtu.be/5xlIPT1FRcA)
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
- 
