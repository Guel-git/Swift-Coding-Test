## 백준 단계별 문제

[Level 4]
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

[Level 5]
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
