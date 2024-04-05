//
//  main.swift
//  Baekjoon
//
//  Created by 김유나 on 2023/07/14.
//

import Foundation

// MARK: - 새로 배운 것
// 빈 이중 배열: let a = [[형]]()
// n차원 배열 > 1차원 배열: flatMap ex. [[1, 2], [3, 4]] > [1, 2, 3, 4]
// 배열 중 nil 제거, 옵셔널 바인딩: compactMap
// 배열 중 첫번째 값 제거하며 pop: var a = [1, 2] print(a.removeFirst(), a) > 1 [2]

// 2738 번, Bronze 5
//let a = readLine()!.split(separator: " ").map{Int($0)!}
//var b: [[Int]] = Array(repeating: Array(repeating: 0, count: a[1]), count: a[0])
//var c: [[Int]] = Array(repeating: Array(repeating: 0, count: a[1]), count: a[0])
//for i in 0..<a[0] {
//    let d = readLine()!.split(separator: " ").map{Int($0)!}
//    for j in d.indices {
//        b[i][j] = d[j]
//    }
//}
//for i in 0..<a[0] {
//    let d = readLine()!.split(separator: " ").map{Int($0)!}
//    for j in d.indices {
//        c[i][j] = d[j]
//    }
//}
//for i in 0..<a[0] {
//    for j in 0..<a[1] {
//        print(b[i][j] + c[i][j], terminator: " ")
//    }
//    print("")
//}

// 2566 번, Bronze 3
//var a = Array(repeating: Array(repeating: 0, count: 9), count: 9)
//for i in 0..<9 {
//    let b = readLine()!.split(separator: " ").map{Int($0)!}
//    for j in 0..<9 {
//        a[i][j] = b[j]
//    }
//}
//let m = a.flatMap{ $0 }.max()!
//for i in 0..<9 {
//    for j in 0..<9 {
//        if m == a[i][j] {
//            print(m)
//            print(i+1, j+1)
//        }
//    }
//}

// 10798 번, Bronze 1
//var a = [[Character]]()
//var c: [Character] = []
//var m = 0
//for _ in 0..<5 {
//    let b = readLine()!
//    if b.count > m {
//        m = b.count
//    }
//    c = []
//    for j in b {
//        c.append(j)
//    }
//    a.append(c)
//}
//for _ in 0..<m {
//    for i in 0..<a.count {
//        if a[i].count > 0 {
//            print(a[i].removeFirst(), terminator: "")
//        }
//    }
//}

// 2563 번, Silver 5
//var a = Array(repeating: Array(repeating: 0, count: 100), count: 100)
//let b = Int(readLine()!)!
//for _ in 0..<b {
//    let c = readLine()!.split(separator: " ").map{Int($0)!}
//    for i in c[0]..<c[0]+10 {
//        for j in c[1]..<c[1]+10 {
//            a[i][j] = 1
//        }
//    }
//}
//print(a.flatMap{ $0 }.filter{ $0 == 1 }.count)
