//
//  main.swift
//  Baekjoon
//
//  Created by 김유나 on 2024/02/19.
//

//import Foundation

// 2531 번, Silver 1 -> 시간초과
//let input = readLine()!.split(separator: " ").map{Int($0)!}
//let n = input[0], k = input[2], c = input[3]
//var belt = [Int](), sushi = [Int](), max = 0, e = k - 1
//for _ in 0..<k {
//    belt.append(Int(readLine()!)!)
//}
//sushi = belt
//for i in 0..<n-1 {
//    let sc = Set(sushi + [c]).count
//    if sc > max { max = sc }
//
//    if i < n-k { belt.append(Int(readLine()!)!) }
//
//    sushi = sushi.reversed()
//    sushi.removeLast()
//    sushi = sushi.reversed()
//    e = (e + 1) % n
//    sushi.append(belt[e])
//}
//let sc = Set(sushi + [c]).count
//if sc > max { max = sc }
//print(max)
