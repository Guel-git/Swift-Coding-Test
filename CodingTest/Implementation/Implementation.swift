//
//  main.swift
//  Baekjoon
//
//  Created by 김유나 on 2023/12/31.
//

import Foundation

// 1268 번, Bronze 1
//let studentNum = Int(readLine()!)!
//var graph = [[Int]]()
//for _ in 0..<studentNum {
//    graph.append(readLine()!.split(separator: " ").map{Int($0)!})
//}
//var score = Dictionary(uniqueKeysWithValues: (1...studentNum).map{($0, Set<Int>())})
//for student in 0..<studentNum {
//    for grade in 0..<5 {
//        let classNum = graph[student][grade]
//        for other in 0..<studentNum {
//            if student != other && graph[other][grade] == classNum { score[student+1]?.insert(other+1) }
//        }
//    }
//}
//var maxCount = 0
//score.values.forEach {
//    if $0.count > maxCount {
//        maxCount = $0.count
//    }
//}
//print(score.filter { $0.value.count == maxCount }.keys.min()!)
