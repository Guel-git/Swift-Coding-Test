//
//  main.swift
//  Baekjoon
//
//  Created by 김유나 on 2023/07/27.
//

// MARK: - 새로 배운 것들
// for 문을 돌릴 때 시간 복잡도를 줄이기 위해 최소 반복 횟수를 찾자

//import Foundation

// 2798 번, Bronze 2
//let a = readLine()!.split(separator: " ").map{Int($0)!}
//let b = readLine()!.split(separator: " ").map{Int($0)!}
//var c = 0
//for i in 0..<a[0] {
//    for j in i+1..<a[0] {
//        for k in j+1..<a[0] {
//            if b[i] + b[j] + b[k] <= a[1] && b[i] + b[j] + b[k] > c {
//                c = b[i] + b[j] + b[k]
//            }
//        }
//    }
//}
//print(c)

// 2231 번, Bronze 2
//let a = Int(readLine()!)!
//var b = true
//for i in 1..<a {
//    var c = i
//    var d: [Int] = []
//    while c > 0 {
//        d.append(c % 10)
//        c = c / 10
//    }
//    var e = 0
//    for i in 0..<d.count {
//        e += d[i]
//    }
//    e += i
//    if e == a {
//        d.reversed().forEach { print($0, terminator: "")}
//        b = false
//        break
//    }
//}
//if b { print(0) }

// 19532 번, Bronze 2
//let a = readLine()!.split(separator: " ").map{Double($0)!}
//print(Int((a[1]*a[5]-a[2]*a[4])/(a[1]*a[3]-a[0]*a[4])),Int((a[2]*a[3]-a[0]*a[5])/(a[1]*a[3]-a[0]*a[4])))

// 1018 번, Silver 4
//let a = [["W", "B", "W", "B", "W", "B", "W", "B"],
//         ["B", "W", "B", "W", "B", "W", "B", "W"],
//         ["W", "B", "W", "B", "W", "B", "W", "B"],
//         ["B", "W", "B", "W", "B", "W", "B", "W"],
//         ["W", "B", "W", "B", "W", "B", "W", "B"],
//         ["B", "W", "B", "W", "B", "W", "B", "W"],
//         ["W", "B", "W", "B", "W", "B", "W", "B"],
//         ["B", "W", "B", "W", "B", "W", "B", "W"]]
//let b = [["B", "W", "B", "W", "B", "W", "B", "W"],
//        ["W", "B", "W", "B", "W", "B", "W", "B"],
//        ["B", "W", "B", "W", "B", "W", "B", "W"],
//        ["W", "B", "W", "B", "W", "B", "W", "B"],
//        ["B", "W", "B", "W", "B", "W", "B", "W"],
//        ["W", "B", "W", "B", "W", "B", "W", "B"],
//        ["B", "W", "B", "W", "B", "W", "B", "W"],
//        ["W", "B", "W", "B", "W", "B", "W", "B"]]
//let c = readLine()!.split(separator: " ").map{Int($0)!}
//var d = [[String]]()
//for _ in 0..<c[0] {
//    d.append(readLine()!.map{String($0)})
//}
//var e = 64
//for i in 0...c[0]-8 {
//    for j in 0...c[1]-8 {
//        var f = 0
//        var g = 0
//        for k in 0..<8 {
//            for l in 0..<8 {
//                if a[k][l] != d[i+k][j+l] {
//                    f += 1
//                }
//                if b[k][l] != d[i+k][j+l] {
//                    g += 1
//                }
//            }
//        }
//        e = min(e, f, g)
//    }
//}
//print(e)

// 1436 번, Silver 5
//let a = Int(readLine()!)!
//var c = 0
//for i in 666...10000000 {
//    var n = i
//    while n >= 666 {
//        if n % 1000 == 666 {
//            c += 1
//            break
//        }
//        n /= 10
//    }
//    if c == a {
//        print(i)
//        break
//    }
//}

// 2839 번, Silver 4
//let a = Int(readLine()!)!
//var b: [Int] = []
//for i in 1...1666 {
//    for j in 0..<i+1 {
//        if 3 * j + 5 * (i - j) == a {
//            b.append(i)
//        }
//    }
//}
//b.isEmpty ? print(-1) : print(b.min()!)
