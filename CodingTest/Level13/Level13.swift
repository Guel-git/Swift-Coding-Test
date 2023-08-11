//
//  main.swift
//  Baekjoon
//
//  Created by 김유나 on 2023/08/02.
//

// MARK: - 새로 배운 것
// - sort(): 원본을 오름차순으로 정렬
// - sorted(): 사본을 만들어 오름차순으로 정렬
// - a.sort(by: >): 내림차순으로 원본 정렬
// - 좌표형 (Int, Int), 좌표형을 요소로 가지고 있는 배열 [(Int, Int)]
// - 클로저를 사용한 sort: b.sort(by: { $0.1 > $1.1 }) y 좌표를 기준으로 내림차순

//import Foundation

// 2750 번, Bronze 2
//let a = Int(readLine()!)!
//var b: [Int] = []
//for _ in 1...a {
//    b.append(Int(readLine()!)!)
//}
//b.sorted().forEach { print($0) }

// 2587 번, Bronze 2
//var a = [Int]()
//for _ in 1...5 {
//    a.append(Int(readLine()!)!)
//}
//print(a.reduce(0, +) / 5)
//print(a.sorted()[2])

// 25305 번, Bronze 2
//let a = readLine()!.split(separator: " ").map{Int($0)!}
//var b = readLine()!.split(separator: " ").map{Int($0)!}
//print(b.sorted(by: >)[a[1]-1])

// 2751 번, Silver 5
//let a = Int(readLine()!)!
//var b = [Int]()
//for _ in 0..<a {
//    b.append(Int(readLine()!)!)
//}
//b.sorted(by: <).forEach{ print($0) }

// 1427 번, Silver 5
//let a = readLine()!
//var b = [Int]()
//for i in 0..<a.count {
//    b.append(Int(String(a[a.index(a.startIndex, offsetBy: i)]))!)
//}
//b.sorted(by: >).forEach{print($0, terminator: "")}

// 11650 번, Silver 5
//let a = Int(readLine()!)!
//var b = [(Int, Int)]()
//for _ in 0..<a {
//    let c = readLine()!.split(separator: " ").map{Int($0)!}
//    b.append((c[0], c[1]))
//}
//b.sort(by: {
//    $0.0 == $1.0 ? $0.1 < $1.1 : $0.0 < $1.0
//})
//b.forEach{print($0, $1)}

// 11651 번, Silver 5
//let a = Int(readLine()!)!
//var b = [(Int, Int)]()
//for _ in 0..<a {
//    let c = readLine()!.split(separator: " ").map{Int($0)!}
//    b.append((c[0], c[1]))
//}
//b.sort(by: {
//    $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 < $1.1
//})
//b.forEach{print($0, $1)}

// 1181 번, Silver 5
//let a = Int(readLine()!)!
//var b = Set<String>()
//for _ in 0..<a {
//    b.insert(readLine()!)
//}
//b.sorted(by: {
//    $0.count == $1.count ? $0 < $1 : $0.count < $1.count
//}).forEach{print($0)}

// 10814 번, Silver 5
//let a = Int(readLine()!)!
//var b = [(Int, String)]()
//for _ in 0..<a {
//    let c = readLine()!.split(separator: " ")
//    b.append((Int(c[0])!, String(c[1])))
//}
//b.sorted(by: {
//    $0.0 < $1.0
//}).forEach{print($0, $1)}

// 18870 번, Silver 2
//let a = readLine()!
//let b = readLine()!.split(separator: " ").map{Int($0)!}
//let c = b.sorted()
//var d: [Int:Int] = [c[0]:0]
//var e = 1
//for i in 1..<c.count {
//    if c[i-1] != c[i] {
//        d[c[i]] = e
//        e += 1
//    }
//}
//for i in 0..<b.count {
//    print(d[b[i]]!, terminator: " ")
//}
