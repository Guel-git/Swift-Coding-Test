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
