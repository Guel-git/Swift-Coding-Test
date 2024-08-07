//
//  Level1.swift
//  Baekjoon
//
//  Created by 김유나 on 2024/07/03.
//

//import Foundation
// MARK: - 기사단원의 무기, 2024.07.03
// MARK: - 숫자 n의 약수의 개수는 1~sqrt(n)개를 나눠 보면 알 수 있음
// MARK: - 9와 같이 동일한 숫자의 곱으로 이루어진 숫자도 존재하기에 약수를 Set 형태로 저장한다.
//import Foundation
//
//func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
//    var sum = 0
//    for i in 1...number {
//        var s = Set<Int>()
//        for j in 1...Int(sqrt(Double(i))) {
//            if i % j == 0 {
//                s.insert(j)
//                s.insert(i/j)
//            }
//        }
//        sum += s.count > limit ? power : s.count
//    }
//    return sum
//}

// MARK: - 과일 장수, 2024.07.03
// MARK: - 내림차순 정렬 -> 박스별로 마지막(가장 작은) 숫자만 확인 후 계산
//import Foundation
//
//func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
//    let ns = score.sorted { return $0 > $1 }
//    var i = 1, sum = 0
//    while m * i - 1 < ns.count {
//        sum += ns[m*i-1] * m
//        i += 1
//    }
//    return sum
//}

// MARK: - 푸드 파이트 대회, 2024.07.12
// MARK: - array와 동일하게 string도 동일 요소의 반복으로 정의할 수 있음 -> String(repeating: "a", count: 2)
// MARK: - array와 동일하게 string도 reversed()를 사용할 수 있음
//import Foundation
//
//func solution(_ food:[Int]) -> String {
//    var s = String()
//    for i in 1..<food.count {
//        s += String(repeating: String(i), count: food[i]/2)
//    }
//    s += "0" + s.reversed()
//    return s
//}

// MARK: - 없는 숫자 더하기, 2024.07.18
//import Foundation
//
//func solution(_ numbers:[Int]) -> Int {
//    var sortedNum = numbers.sorted(), index = 0, answer = 0, numCount = numbers.count
//    compareRange: for i in 0...9 {
//        if i == sortedNum[index] {
//            index += 1
//            if numCount == index {
//                for l in i+1..<10 {
//                    answer += l
//                }
//                break compareRange
//            }
//        } else {
//            answer += i
//        }
//    }
//    return answer
//}

// MARK: - x만큼 간격이 있는 n개의 숫자, 2024.07.23
//func solution(_ x:Int, _ n:Int) -> [Int] {
//    var now = x, arr = [x]
//    for _ in 1..<n {
//        now += x
//        arr.append(now)
//    }
//    return arr
//}

// MARK: - 문자열 내 마음대로 정렬하기, 2024.07.24
//func solution(_ strings:[String], _ n:Int) -> [String] {
//    var sortedStrings = strings.sorted {
//        $0[$0.index($0.startIndex, offsetBy: n)] == $1[$1.index($1.startIndex, offsetBy: n)] ? $0 < $1 : $0[$0.index($0.startIndex, offsetBy: n)] < $1[$1.index($1.startIndex, offsetBy: n)]
//    }
//    return sortedStrings
//}

// MARK: - 숫자 문자열과 영단어, 2024.07.24
// MARK: - UnicodeScalar(문자열).value로 문자와 숫자 구별
//import Foundation
//
//func solution(_ s:String) -> Int {
//    var dict = ["zero":"0", "one":"1", "two":"2", "three":"3", "four":"4", "five":"5", "six":"6", "seven":"7", "eight":"8", "nine":"9"]
//    var stack = String(), answer = String()
//    for c in s {
//        if UnicodeScalar(String(c))!.value >= 97 && UnicodeScalar(String(c))!.value <= 122 {
//            stack += String(c)
//            if dict.keys.contains(stack) {
//                answer += dict[stack]!
//                stack = String()
//            }
//        } else {
//            answer += String(c)
//        }
//    }
//    return Int(answer)!
//}
