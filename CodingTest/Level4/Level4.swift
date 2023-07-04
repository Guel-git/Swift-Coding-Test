//
//  main.swift
//  CodingTest
//
//  Created by 김유나 on 2023/07/03.
//

// MARK: - 새로 배운 것
// split(separator: " "): 공백을 기준으로 입력값을 나눠 배열에 저장
// print("a", terminator: " "): 줄바꿈 대신 print 값 뒤에 띄어쓰기
// 중복 요소를 없애고 싶으면 배열 대신 Set<형> 사용
// 나눗셈(몫) 계산할 때 소숫점 아래도 계산하고 싶으면 Double형으로 변환
// 배열 각 요소에 직접 변화를 주고 싶으면 a.map{$0/2}, for문처럼 사용하고 싶으면 a.forEach{print($0)}

import Foundation

// 10807 번
//var numOfNums = Int(readLine()!)!
//let nums = readLine()!.split(separator: " ")
//let find = Int(readLine()!)!
//
//for num in nums {
//    if Int(num) != find {
//        numOfNums = numOfNums - 1
//    }
//}
//
//print(numOfNums)

// 10871 번
//if let numAndFind = readLine()?.split(separator: " ").map({Int($0)!}) {
//    if let array = readLine()?.split(separator: " ").map({Int($0)!}) {
//        array.forEach { if $0 < numAndFind[1] { print($0, terminator: " ") }}
//    }
//}

// 10818 번
//if let _ = readLine() {
//    if let array = readLine()?.split(separator: " ").map({Int($0)!}), let max = array.max(), let min = array.min() {
//        print(min, max)
//    }
//}

// 2562 번
//var max = 0
//var maxIndex = 0
//for index in 1...9 {
//    if let num = Int(readLine()!) {
//        if num > max {
//            max = num
//            maxIndex = index
//        }
//    }
//}
//print(max)
//print(maxIndex)

// 10810 번
//if let basketTrial = readLine()?.split(separator: " ").map({Int($0)!}) {
//    var basket = Array(repeating: 0, count: basketTrial[0])
//    for _ in 1...basketTrial[1] {
//        if let array = readLine()?.split(separator: " ").map({Int($0)!}) {
//            for i in array[0]...array[1] {
//                basket[i-1] = array[2]
//            }
//        }
//    }
//    basket.forEach { print($0, terminator: " ")}
//}

// 10813 번
//if let basketTrial = readLine()?.split(separator: " ").map({Int($0)!}) {
//    var basket = (1...basketTrial[0]).map { $0 }
//    for _ in 1...basketTrial[1] {
//        if let array = readLine()?.split(separator: " ").map({Int($0)!}) {
//            var temp = basket[array[0]-1]
//            basket[array[0]-1] = basket[array[1]-1]
//            basket[array[1]-1] = temp
//        }
//    }
//    basket.forEach{ print($0, terminator: " ")}
//}

// 5597 번
//var array = (1...30).map{ $0 }
//for _ in 1...28 {
//    if let num = Int(readLine()!) {
//        array[num-1] = 0
//    }
//}
//array.forEach { if ($0 != 0) { print($0)}}

// 3052 번
//var array: Set<Int> = []
//for _ in 1...10 {
//    array.insert(Int(readLine()!)! % 42)
//}
//print(array.count)

// 10811 번
//if let a = readLine()?.split(separator: " ").map({Int($0)!}) {
//    var b = (1...a[0]).map{$0}
//    for _ in 1...a[1] {
//        if let c = readLine()?.split(separator: " ").map({Int($0)!}) {
//            let d = (c[0]...c[1]).map{b[$0 - 1]}
//            for i in 0...c[1]-c[0] {
//                b[c[0] + i - 1] = d[c[1] - c[0] - i]
//            }
//        }
//    }
//    b.forEach { print($0, terminator: " ")}
//}

// 1546 번
//if let n = Double(readLine()!) {
//    if let a = readLine()?.split(separator: " ").map({Double($0)!}) {
//        let m = Double(a.max()!)
//        var s = 0.0
//        a.forEach {s += $0/m*100}
//        print(s/n)
//    }
//}
