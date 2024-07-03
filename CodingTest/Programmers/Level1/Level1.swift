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
