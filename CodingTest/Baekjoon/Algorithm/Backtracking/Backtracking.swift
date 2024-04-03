//
//  main.swift
//  Baekjoon
//
//  Created by 김유나 on 2023/09/07.
//

//import Foundation

// 15649 번, Silver 3
//let NM = readLine()!.split(separator: " ").map{Int($0)!}
//var result = [Int]()
//
//backTracking()
//
//func backTracking() {
//    if result.count == NM[1] {
//        print(result.map({String($0)}).joined(separator: " "))
//        return
//    }
//
//    for i in 1...NM[0] {
//        if !result.contains(i) {
//            result.append(i)
//            backTracking()
//            result.removeLast()
//        }
//    }
//}

// 15650 번, Silver 3
//let NM = readLine()!.split(separator: " ").map{Int($0)!}
//var result = [Int]()
//
//backTracking()
//
//func backTracking() {
//    if result.count == NM[1] {
//        print(result.map({String($0)}).joined(separator: " "))
//        return
//    }
//
//    for i in 1...NM[0] {
//        if !result.contains(i) && i > result.max() ?? 0 {
//            result.append(i)
//            backTracking()
//            result.removeLast()
//        }
//    }
//}

// 15651 번, Silver 3
//let NM = readLine()!.split(separator: " ").map{Int($0)!}
//var result = [Int]()
//var str = ""
//backTracking()
//print(str)
//func backTracking() {
//    if result.count == NM[1] {
//        str += result.map{String($0)}.joined(separator: " ") + "\n"
//        return
//    }
//
//    for i in 1...NM[0]{
//        if i >= result.max() ?? 0 {
//            result.append(i)
//            backTracking()
//            result.removeLast()
//        }
//    }
//}

// 9663 번, Gold 4
//let N = Int(readLine()!)!
//var count = 0
//var board = Array(repeating: 0, count: N)
//var visited = Array(repeating: false, count: N)
//
//func backtracking(row: Int) {
//    if row == N {
//        count += 1
//        return
//    }
//    
//    for
//    
//}
//print(count)
