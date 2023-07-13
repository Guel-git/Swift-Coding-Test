//
//  main.swift
//  Baekjoon
//
//  Created by 김유나 on 2023/07/12.
//

import Foundation

// MARK: - 새로 배운 것
// 트리 그리는 문제는 한 번에 print 하려고 하지말고 영역을 나눠서 풀자
// for _ in stride(from: 0, to: 5, by: 1) -> 0~4 까지 1개씩 출력
// a.replacingOccurrences(of: "b", with: "c"): a 문자열에 있는 b를 c로 바꿔라
// dict.values.max() : dictionary에 있는 value값 중 가장 큰 값
// dict.keys.max() : dictionary에 있는 key값 중 가장 큰 값

// 25083 번, Bronze
//print("         ,r\'\"7")
//print("r`-_   ,'  ,/")
//print(" \\. \". L_r\'")
//print("   `~\\/")
//print("      |")
//print("      |")

// 3003 번, Bronze
//let a = readLine()!.split(separator: " ").map{ Int($0)! }
//let b = [1, 1, 2, 2, 2, 8]
//for i in 0...a.count-1 {
//    print(b[i]-a[i], terminator: " ")
//}

// 2444 번, Bronze
//let a = Int(readLine()!)!
//for i in 0..<a-1 {
//    for _ in 0...a-i-2 {
//        print(" ", terminator: "")
//    }
//    for _ in 0...2*i {
//        print("*", terminator: "")
//    }
//    print("")
//}
//for _ in 1...2*a-1 { print("*", terminator: "")}
//print("")
//for i in stride(from: a-1, to: 0, by: -1) {
//    for _ in 1...a-i {
//        print(" ", terminator: "")
//    }
//    for _ in 1...2*i-1 {
//        print("*", terminator: "")
//    }
//    print("")
//}

// 10988 번, Bronze
//let a = readLine()!
//var i = 0
//var r = 1
//for _ in 0..<a.count/2 {
//    if a[a.index(a.startIndex, offsetBy: 0 + i)] != a[a.index(a.endIndex, offsetBy: -(1 + i))] {
//        r = 0
//    } else {
//        i = i + 1
//    }
//}
//print(r)
                     
// 1157 번, Bronze
//let word = readLine()!.uppercased()
//var dict: [Character: Int] = [:]
//for w in word {
//    if let value = dict[w] {
//        dict[w] = value + 1
//    } else {
//        dict[w] = 1
//    }
//}
//dict = dict.filter { $0.value == dict.values.max()! }
//print(dict.count > 1 ? "?" : dict.keys.first!)

// 2941 번, Silver 5
//var a = readLine()!
//let b = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
//for i in b.indices {
//    a = a.replacingOccurrences(of: b[i], with: "?")
//}
//print(a.count)

// 1316 번, Silver 5
//let a = Int(readLine()!)!
//var r = 0
//for _ in 1...a {
//    let b = readLine()!
//    var d: [Character] = []
//    var e: Character?
//    var f = 1
//    for c in b.indices {
//        if d.contains(b[c]) {
//            if e != b[c] {
//                f = 0
//                break
//            }
//        } else {
//            d.append(b[c])
//            e = b[c]
//        }
//    }
//    r = r + f
//}
//print(r)

// 25206 번, Silver 5
//let d = ["A+":4.5, "A0":4.0, "B+":3.5, "B0":3.0, "C+":2.5, "C0":2.0, "D+":1.5, "D0":1.0, "F":0.0]
//var a = 0.0
//var b = 0.0
//for _ in 1...20 {
//    let s = readLine()!.split(separator: " ")
//    if s[2] != "P" {
//        a += Double(s[1])! * d[String(s[2])]!
//        b += Double(s[1])!
//    }
//}
//print(a/b)
