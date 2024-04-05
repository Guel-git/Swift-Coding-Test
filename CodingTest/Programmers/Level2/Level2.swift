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

// MARK: - JadenCase 문자열 만들기, 2024.04.04
// MARK: - Character("A").asciiValue! -> 문자로 아스키코드 찾기, String(UnicodeScalar(64)) -> 아스키코드로 문자 찾기
//func solution(_ s:String) -> String {
//    var isStart = true, newWord = String()
//    for i in s {
//        if isStart && i != " " {
//            isStart = false
//            newWord += i.asciiValue! >= 97 && i.asciiValue! <= 122 ? String(UnicodeScalar(i.asciiValue! - 32)) : String(i)
//        } else {
//            if i == " " { isStart = true }
//            newWord += String(i).lowercased()
//        }
//    }
//    return newWord
//}

// MARK: - 귤 고르기, 2024.04.05
// MARK: - 2n의 시간 복잡도
//import Foundation
//
//func solution(_ k:Int, _ tangerine:[Int]) -> Int {
//    var countDict = [Int:Int](), k = k, count = 0
//    for t in tangerine {
//        if countDict[t] == nil {
//            countDict[t] = 1
//        } else {
//            countDict[t]! += 1
//        }
//    }
//    let countArray = countDict.map {[$0.key, $0.value]}.sorted(by: { $0[1] > $1[1] })
//    for c in countArray {
//        count += 1
//        if c[1] >= k { return count }
//        k -= c[1]
//    }
//    return count
//}

// MARK: - 이진 변환 반복하기, 2024.04.05
// MARK: - 십진수 -> 이진수 변환 방법 기억하기
//import Foundation
//
//func solution(_ s:String) -> [Int] {
//    var newS = s, deleted = Int(), count = 0
//    while newS != "1" {
//        var leftLength = newS.filter{$0=="1"}.count, leftArray = [Int]()
//        deleted += newS.count - leftLength
//
//        while leftLength / 2 > 0 {
//            leftArray.append(leftLength%2)
//            leftLength = leftLength / 2
//        }
//        leftArray.append(leftLength%2)
//
//        leftArray = leftArray.reversed()
//        let stringArray = leftArray.map{String($0)}
//        newS = stringArray.joined()
//        count += 1
//    }
//
//    return [count, deleted]
//}

// MARK: - 롤케이크 자르기, 2024.04.05
// MARK: - 딕셔너리에서 key가 없어도 key를 생성하는 동시에 default 값을 지정해줄 수 있음(== nil 가 더이상 필요 X) -> dict[key, default: 0] += 1
// MARK: - Set(Array)는 모든 요소를 확인해야 하므로 시간복잡도는 O(n) -> 너무 남용하지 말기..
//import Foundation
//
//func solution(_ topping:[Int]) -> Int {
//    var leftTopping = [Int: Int](), rightTopping = [Int: Int](), count = 0
//
//    topping.forEach { rightTopping[$0, default: 0] += 1 }
//
//    for t in topping {
//        rightTopping[t]! -= 1
//        if rightTopping[t]! == 0 {
//            rightTopping.removeValue(forKey: t)
//        }
//
//        leftTopping[t, default: 0] += 1
//
//        if leftTopping.count == rightTopping.count { count += 1 }
//    }
//
//    return count
//}

// MARK: - 과제 진행하기, 2024.04.05
// MARK: - 시간을 비교하거나 더하는 연산이 필요하다면 가장 단위가 작은 값으로 변환해서 계산을 용이하게 하기
// MARK: - 고차함수 클로저의 경우 클로저 내에 연산이 많아질 경우, 파라미터 -> 리턴 값 in 형태로 접근해야 함
// MARK: - 구현 함수의 경우, 식이 길어지고 분기 처리가 많으며 배열 인덱스를 다루는 경우가 많기 때문에 높은 집중력과 좋은 컨디션이 필요하다 !
//import Foundation
//
//func solution(_ plans:[[String]]) -> [String] {
//    var plans = plans.map { item -> [String] in
//        let time = item[1].split(separator: ":").map{Int($0)!}
//        return [item[0], String(time[0] * 60 + time[1]), item[2]]
//    }
//    plans = plans.sorted(by: { Int($0[1])! < Int($1[1])! })
//
//    var post = [[String]](), done = [String]()
//    for i in 0..<plans.count-1 {
//        let thisEndTime = Int(plans[i][1])! + Int(plans[i][2])!, nextStartTime = Int(plans[i+1][1])!
//        if thisEndTime > nextStartTime {
//            post.append([plans[i][0], String(thisEndTime - nextStartTime)])
//        } else if thisEndTime < nextStartTime {
//            done.append(plans[i][0])
//            var leftTime = nextStartTime - thisEndTime
//            while leftTime > 0 && !post.isEmpty {
//                var last = post.removeLast()
//                if Int(last[1])! > leftTime {
//                    post.append([last[0], String(Int(last[1])! - leftTime)])
//                    break
//                }
//                done.append(last[0])
//                leftTime -= Int(last[1])!
//            }
//        } else {
//            done.append(plans[i][0])
//        }
//    }
//
//    done.append(plans[plans.index(before: plans.endIndex)][0])
//    post.reversed().forEach { done.append($0[0]) }
//    return done
//}

// MARK: - 두 원 사이의 정수쌍, 2024.04.05
// MARK: - 이중 포문이면 일단 안된다고 생각하자,, 수학 문제는 수식을 뽑아내고 이걸 최대한 활용하자 (여기서는 x와 반지름을 아니까 y^2 = r^2 - x^2 활용)
// MARK: - ceil은 소수 부분 올림 floor는 소수 부분 버림
//import Foundation
//
//func solution(_ r1:Int, _ r2:Int) -> Int64 {
//    var count = 0
//    for i in 1...r2 {
//        let min = ceil(sqrt(max(Double(r1*r1 - i*i), 0)))
//        let max = floor(sqrt(Double(r2*r2 - i*i)))
//        count += Int(max - min + 1)
//    }
//    return Int64(count * 4)
//}
