## 진저야 ~ 공부했음 끄적여 🫤

<details>
<summary><b>Level 4</b></summary>
<div>
  
- split(separator: " "): 공백을 기준으로 입력값을 나눠 배열에 저장
  
  ```swift
  // 입력값: a b
  if let array = readLine()?.split(separator: " ") {
    print(array)
  }
  // ["a", "b"]
  ```
- print("a", terminator: " "): 줄바꿈 대신 print 값 뒤에 띄어쓰기
- 중복 요소를 없애고 싶으면 배열 대신 집합(Set<형>) 사용
- 나눗셈(몫) 계산할 때 소숫점 아래도 계산하고 싶으면 Double로 형변환
- 배열 각 요소를 직접 수정하고 싶으면 a.map{$0/2}, for문처럼 사용하고 싶으면 a.forEach{print($0)}
</div>
</details>

<details>
<summary><b>Level 5</b></summary>
<div>
  
- 문자열 a 가 있을 때, a.index는 문자열 a의 index
- a.startIndex는 문자열 a의 첫번째 index 번호
  
  ```swift
  let a = '12345'
  print(a[a.startIndex])
  // 1
  ```
- a.endIndex는 문자열 a의 마지막 Index 번호
  
  ```swift
  print(a[a.endIndex])
  // error !
  ```
- 인덱스 번호는 1부터 시작되기 때문에 endIndex는 index 범위를 넘어섬
  
  ```swift
  print(a[a.index(before: a.endIndex)])
  // 5
  ```
- a.index(after: a.startIndex)
  
  ```swift
  print(a[a.index(after: a.startIndex)])
  // 2
  ```
- index를 기준으로 offset을 지정해줄 수도 있음
  
  ```swift
  print(a[a.index(a.startIndex, offsetBy: 2)])
  // 3
  ```
- 아스키코드

  ```swift
  let b = "A"
  print(UnicodeScalar(b)!.value)
  // 65
  ```
- 문자열 순서 바꾸기

  ```swift
  print(a.reversed())
  // 54321
  ```
</div>
</details>

<details>
<summary><b>Level 6</b></summary>
<div>
  
- 별 그리는 문제는 한 번에 print 하려고 하지말고 영역을 나눠서 풀자, String(repeating:... 보다 한 변수에 추가해서 최소 횟수로 프린트하는 게 효율적
- for 반복문

  ```swift
  for i in stride(from: 0, to: 5, by: 1) {
    print(i)
  }
  // 0 1 2 3 4
  ```
- replacingOccurrences: 문자열의 특정 문자 교체
  ```swift
  let a = "ab"
  let b = a.replacingOccurrences(of: "b", with: "a")
  print(b)
  // aa
  ```
- dictionary의 key와 value
  ```swift
  let d = [1:2, 3:4]
  print(d.keys.max()!) // 3
  print(d.values.max()!) // 4
  ```
</div>
</details>

<details>
<summary><b>Level 7</b></summary>
<div>

- 비어있는 2차원 배열 선언
  ```swift
   var a = [[Int]]()
  ```
- n차원 배열을 1차원 배열로 풀어쓰기: flatMap
  ```swift
  var a = [[1, 2], [3, 4]]
  print(a.flatMap{ $0 })
  // [1, 2, 3, 4]
  ```
- 배열 중 nil값 제거, 옵셔널 바인딩: compactMap
  ```swift
  var a: Int? = [1, nil, 2]
  print(a.compactMap{ $0 })
  // [1, 2]
  ```
- 배열 중 첫번째 요소 제거 + pop 기능: removeFirst()
  ```swift
  var a = [1, 2]
  print(a.removeFirst(), a)
  // 1 [2]
  ```
  파이썬의 pop처럼 제거된 요소를 프린트하거나 다른 변수에 넣을 수 있다.
</div>
</details>

<details>
<summary><b>Level 8</b></summary>
<div>

- ascii code 구하기
  ```swift
  print(Character("A").asciiValue)
  // 65
  ```
- 제곱수 구하기
  ```swift
  import Foundation
  pow(2, 3)
  // 8 (밑 2, 승 3)
  // 65
  ```
- 실수의 올림과 내림
  ```swift
  import Foundation
  print(ceil(0.6)) // 1.0
  print(floor(0.6)) // 0.0
  // 65
  ```
</div>
</details>

<details>
<summary><b>Level 9</b></summary>
<div>

- 반복문의 반복 횟수는 최.대.한 짧게 !
- for in 문과 map, filter, reduce의 실행 시간은 크게 차이 나지 않는다 .. !
- 소수를 구하는 문제의 경우, 1은 소수가 아니고 2와 3은 소수이므로 1, 2, 3에 대한 처리를 위에서 먼저 하면 반복 횟수를 줄일 수 있다
- 어떤 값에 특정 배열의 모든 요소들을 더하기/빼기/곱하기/나누기: reduce
  ```swift
  let a = [1, 2, 3]
  print(a.reduce(0, +)) // 0에 1, 2, 3을 모두 더해라 > 6
  print(a.reduce(6, -)) // 6에서 1, 2, 3을 모두 빼라 > 0
  print(a.reduce(1, *)) // 1에 1, 2, 3을 모두 곱해라 > 6
  print(a.reduce(6, /)) // 6에서 1, 2, 3을 나눠라 > 1
  ```
- 에라토스테네스의 체 알고리즘
  - 소수를 구하는 유명한 알고리즘으로 2부터 자기 자신을 제외한 자신의 배수를 제거한다 (2는 4, 6, 8, ..., 3은 6, 9, 12, ...) > 남은 수가 소수
</div>
</details>

<details>
<summary><b>Level 11</b></summary>
<div>

- n중 for문의 시간 복잡도는 시그마의 중첩으로 구하는 게 편하다 (식으로 나타내기)
- 빅오의 사전적 정의는 O(g(n)) = {f(n) | 모든 n ≥ n0에 대하여 f(n) ≤ c × g(n)인 양의 상수 c와 n0가 존재한다} 이다
- 일반적으로 최고차항을 나타낸다
</div>
</details>

<details>
<summary><b>Level 13</b></summary>
<div>

- 원본을 오름차순으로 정렬
  ```swift
  var a = [5, 3, 1]
  a.sort()
  print(a) // [1, 3, 5]
  ```
- 사본을 만들어 오름차순으로 정렬
  ```swift
  var a = [5, 3, 1]
  var b = a.sorted()
  print(a, b) // [5, 3, 1] [1, 3, 5]
  ```
- 정렬 규칙 결정
  ```swift
  var a = [1, 3, 5]
  a.sort(by: >)
  print(a) // [5, 3, 1]
  ```

- 좌표형 (Int, Int), 좌표형을 요소로 가지고 있는 배열 [(Int, Int)]
- 클로저를 사용한 sort
  ```swift
  b.sort(by: { $0.1 > $1.1 }) // y 좌표를 기준으로 내림차순
  ```
</div>
</details>

<details>
<summary><b>Level 14</b></summary>
<div>
  
- 배열의 요소 기반 탐색 시간은 O(n), 딕셔너리 요소 기반 탐색 시간은 일반적으로 O(1) (딕셔너리에서는 요소가 index인 셈)
- 이진 탐색: 정렬된 배열에서 중간값을 기준으로 찾고자 하는 값과 동일하면 true, 작으면 시작 ~ 중간-1에 대해, 크면 중간+1 ~ 끝에 대해 재귀함수 호출
- swift 문자열은 int형을 입력으로 받는 서브 스크립트가 정의되어 있지 않다 > index 형식이라는 걸로 변환 필요
  ```swift
  let a = "abcde"
  print(a[String.Index(encodedOffset: 0)..<String.Index(encodedOffset: 2)]) // ab
  print(a[a.index(a.startIndex, offsetBy: 0)..<a.index(a.startIndex, offsetBy: 2)]) // ab
  print(a[a.firstIndex(of: "a")!..<a.firstIndex(of: "c")!]) // ab
  ```
- 배열을 딕셔너리로 재구성하기: uniqueKeysWithValues
  ```swift
  let a = ["i", "am", "hungry"]
  let b = Dictionary(uniqueKeysWithValues: a.map{($0, false)}) // ["am": false, "hungry": false, "i": false]
  let c = Dictionary(uniqueKeysWithValues: zip(a, 1...3)) // ["hungry": 3, "i": 1, "am": 2]
  ```
</div>
</details>
