//
//  Gold5.swift
//  Baekjoon
//
//  Created by 김유나 on 2024/03/13.
//

// 14891 번, 톱니바퀴, Gold 5
//var dict: [Int:[Int]] = Dictionary(uniqueKeysWithValues: (1...4).map{($0, [])})
//for i in 1...4 {
//    let wheel = readLine()!
//    wheel.indices.forEach { if wheel[$0] == "1" { dict[i]?.append(wheel.distance(from: wheel.startIndex, to: $0)) }}
//}
//
//let n = Int(readLine()!)!
//for _ in 0..<n {
//    let input = readLine()!.split(separator: " ").map{Int($0)!}
//
//    var rotate = Array(repeating: 0, count: 5)
//    rotate[input[0]] = input[1]
//
//    var plus = input[0] + 1, minus = input[0] - 1
//    var plusD = -input[1], minusD = -input[1]
//
//    while plus < 5 {
//        if dict[plus]?.contains(6) != dict[plus-1]?.contains(2) {
//            rotate[plus] = plusD
//            plus += 1
//            plusD = -plusD
//        } else { break }
//    }
//
//    while minus > 0 {
//        if dict[minus]?.contains(2) != dict[minus+1]?.contains(6) {
//            rotate[minus] = minusD
//            minus -= 1
//            minusD = -minusD
//        } else { break }
//    }
//
//    for i in 1...4 {
//        if rotate[i] == 1 {
//            (0..<dict[i]!.count).forEach { dict[i]![$0] = dict[i]![$0] < 7 ? dict[i]![$0] + 1 : 0 }
//        } else if rotate[i] == -1 {
//            (0..<dict[i]!.count).forEach { dict[i]![$0] = dict[i]![$0] > 0 ? dict[i]![$0] - 1 : 7 }
//        }
//    }
//}
//
//let score = [1, 2, 4, 8]
//var result = 0
//for i in 1...4 {
//    if dict[i]!.contains(0) {
//        result += score[i-1]
//    }
//}
//print(result)

// 15686 번, 치킨 배달, Gold5
//var house = [(Int, Int)](), chickenNum = 0, map = [[Int]]()
//let NM = readLine()!.split(separator: " ").map{Int($0)!}
//for i in 0..<NM[0] {
//    let row = readLine()!.split(separator: " ").map{Int($0)!}
//    row.indices.forEach {
//        if row[$0] == 1 { house.append((i, $0)) }
//        if row[$0] == 2 { chickenNum += 1 }
//    }
//    map.append(row)
//}
//var distance: [Int: [Int]] = Dictionary(uniqueKeysWithValues: (1...chickenNum).map{($0, [])})
//var start = 1
//for i in 0..<NM[0] {
//    for j in 0..<NM[0] {
//        if map[i][j] == 2 {
//            for (r, c) in house {
//                let dis = abs(r-i) + abs(c-j)
//                distance[start]?.append(dis)
//            }
//            start += 1
//        }
//    }
//}
//var visited = Array(repeating: false, count: chickenNum)
//var result = [Int]()
//private func dfs(_ chosenCount: Int, _ start: Int) {
//    if chosenCount == NM[1] {
//        var minSum = 0
//        for j in 0..<house.count {
//            var min = Int.max
//            for i in 1...chickenNum {
//                if visited[i-1] && min > distance[i]![j] {
//                    min = distance[i]![j]
//                }
//            }
//            minSum += min
//        }
//        result.append(minSum)
//        return
//    }
//    for i in start..<chickenNum {
//        if !visited[i] {
//            visited[i] = true
//            dfs(chosenCount+1, i)
//            visited[i] = false
//        }
//    }
//}
//dfs(0, 0)
//print(result.min()!)

// MARK: - 무인도 여행, 2024.04.05
// MARK: - 튜플은 equatable 하지 않기 때문에 2차원 배열을 사용한 bfs/dfs 문제의 경우 didVisit: [(Int, Int)]보다 이라는 visited: [[Bool]] 배열을 사용해 방문 여부를 파악하는 게 용이하다
//import Foundation
//
//var map = [[String]]()
//var wc = 0, hc = 0
//
//func solution(_ maps:[String]) -> [Int] {
//    map = maps.map{Array($0).map{String($0)}}
//    wc = map[0].count
//    hc = map.count
//
//    var result = [Int](), flag = false
//    for i in 0..<hc {
//        for j in 0..<wc {
//            if map[i][j] != "X" {
//                result.append(dfs(i, j))
//                flag = true
//            }
//        }
//    }
//    return flag ? result.sorted(by: <) : [-1]
//}
//
//
//func dfs(_ i: Int, _ j: Int) -> Int {
//    var willVisit: [(Int, Int)] = [(i, j)]
//    var visited = Array(repeating: Array(repeating: false, count: wc), count: hc)
//    var count = 0
//    
//    while !willVisit.isEmpty {
//        let node = willVisit.removeLast()
//        if visited[node.0][node.1] { continue }
//        
//        for (x, y) in [(1, 0), (-1, 0), (0, 1), (0, -1)] {
//            if 0 <= node.0 + x && node.0 + x < hc && 0 <= node.1 + y && node.1 + y < wc && map[node.0 + x][node.1 + y] != "X" {
//                willVisit.append((node.0 + x, node.1 + y))
//            }
//        }
//        visited[node.0][node.1] = true
//        count += Int(map[node.0][node.1])!
//        map[node.0][node.1] = "X"
//    }
//                        
//    return count
//}
