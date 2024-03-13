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
