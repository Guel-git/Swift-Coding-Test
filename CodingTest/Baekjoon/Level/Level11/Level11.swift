//
//  main.swift
//  Baekjoon
//
//  Created by 김유나 on 2023/07/26.
//

// MARK: - 새로 배운 것
// n중 for문의 시간 복잡도는 시그마의 중첩으로 구하는 게 편함
// 빅오 - 최고차항 표시
// 사전적 정의는 O(g(n)) = {f(n) | 모든 n ≥ n0에 대하여 f(n) ≤ c × g(n)인 양의 상수 c와 n0가 존재한다}

//import Foundation

// 24262 번, Bronze 5
// n이 얼마든 수행 횟수는 1, 차수는 0임
//print("1\n0")

// 24263 번, Bronze 4
//print("\(readLine()!)\n1")

// 24264 번, Bronze 3
//let a = Int(readLine()!)!
//print("\(a*a)\n2")

// 24265 번, Bronze 3
//let a = Double(readLine()!)!
//print("\(Int(0.5*a*(a-1)))\n2")

// 24266 번, Bronze 3
//let a = Int(readLine()!)!
//print("\(a*a*a)\n3")

// 24267 번, Bronze 2
//let a = Int(readLine()!)!
//print("\(((a-2)*(a-1)*a)/6)\n3")

// 24313 번, Silver 5
//let a = readLine()!.split(separator: " ").map{Int($0)!}
//let b = Int(readLine()!)!
//let c = Int(readLine()!)!
//if a[0] > b {
//    print(0)
//} else {
//    print(a[0]*c + a[1] <= b*c ? 1 : 0)
//}
