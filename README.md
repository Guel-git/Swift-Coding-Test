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
