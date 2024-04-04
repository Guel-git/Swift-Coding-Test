//
//  Level2.swift
//  Baekjoon
//
//  Created by 김유나 on 2024/04/03.
//

// MARK: - 마법의 엘리베이터, 2024.04.03
// MARK: - 다양한 예외 케이스 넣어보며 디버깅 하기
//import Foundation
//
//func solution(_ storey:Int) -> Int {
//    var count = 0, new = storey
//    while new > 0 {
//        let one = new % 10
//        if one == 5 {
//            if new % 100 / 10 >= 5 {
//                new = (new + (10 - one)) / 10
//                count += 10 - one
//            } else {
//                new = (new - one) / 10
//                count += one
//            }
//        } else if one < 5 {
//            new = (new - one) / 10
//            count += one
//        } else {
//            new = (new + (10 - one)) / 10
//            count += 10 - one
//        }
//    }
//    return count
//}


// MARK: - 혼자서 하는 틱택토, 2024.04.03
//import Foundation
//
//func won(_ b: [[String]], _ c: String) -> Bool {
//    for row in b {
//        if row == [c, c, c] { return true }
//    }
//
//    for i in 0..<3 {
//        if [b[0][i], b[1][i], b[2][i]] == [c, c, c] { return true }
//    }
//
//    if [b[0][0], b[1][1], b[2][2]] == [c, c, c] { return true }
//    if [b[2][0], b[1][1], b[0][2]] == [c, c, c] { return true }
//
//    return false
//}
//
//func solution(_ board:[String]) -> Int {
//    let board = board.map { Array($0).map {String($0)}}
//    var oCount = 0, xCount = 0
//    for row in board {
//        for i in row {
//            if i == "X" {
//                xCount += 1
//            } else if i == "O" {
//                oCount += 1
//            }
//        }
//    }
//    if !(xCount == oCount || xCount + 1 == oCount) { return 0 }
//
//    let oWon = won(board, "O"), xWon = won(board, "X")
//    if oWon && xWon { return 0 }
//    if oWon && xCount + 1 != oCount { return 0 }
//    if xWon && xCount != oCount { return 0 }
//
//    return 1
//}

// MARK: - 뒤에 있는 큰 수 찾기, 2024.04.03
// MARK: - 이중 for문 피할 수 있는 방법 찾기 -> 스택 이용
//import Foundation
//
//func solution(_ numbers: [Int]) -> [Int] {
//    var result = Array(repeating: -1, count: numbers.count), notFound = [Int]()
//
//    for (index, value) in numbers.enumerated() {
//        while !notFound.isEmpty && value > numbers[notFound.last!] {
//            result[notFound.removeLast()] = value
//        }
//
//        notFound.append(index)
//    }
//
//    return result
//}

// MARK: - 미로 탈출, 2024.04.04
// MARK: - bfs를 이용해서 풀이, 몇 depth인지 파악하는 부분이 관건 / 처음에는 levelArray라는 배열을 만들어서 같은 층의 모든 노드를 방문할 때마다 count를 하나씩 올림
// MARK: - 하지만 시간 초과 발생 -> 단순하게 접근하자 ! visited 배열을 선언하듯 distance 배열을 선언하여 떨어진 거리 값을 모두 저장
//import Foundation
//
//var map = [[String]]()
//func solution(_ maps:[String]) -> Int {
//    map = maps.map {Array($0).map{String($0)}}
//    var s = (100, 100), l = (100, 100)
//    for i in 0..<map.count {
//        for j in 0..<map[i].count {
//            if map[i][j] == "S" { s = (i, j) }
//            if map[i][j] == "L" { l = (i, j) }
//        }
//    }
//
//    let stoL = bfs(s, "L"), ltoE = bfs(l, "E")
//    if stoL == -1 || ltoE == -1 { return -1 }
//
//    return stoL + ltoE
//}
//
//func bfs(_ s: (Int, Int), _ e: String) -> Int {
//    var willVisit = [s], distance = Array(repeating: Array(repeating: -1, count: map[0].count), count: map.count)
//    distance[s.0][s.1] = 0
//    while !willVisit.isEmpty {
//        let node: (Int, Int) = willVisit.removeFirst()
//
//        for (x, y) in [(0, 1), (-1, 0), (0, -1), (1, 0)] {
//            let nx = node.0 + x, ny = node.1 + y
//            if nx >= 0 && nx < map.count && ny >= 0 && ny < map[0].count && map[nx][ny] != "X" && distance[nx][ny] == -1 {
//                if map[nx][ny] == e {
//                    return distance[node.0][node.1] + 1
//                }
//                willVisit.append((nx, ny))
//                distance[nx][ny] = distance[node.0][node.1] + 1
//            }
//        }
//    }
//    return -1
//}
