//
//  Recursion.swift
//  Baekjoon
//
//  Created by 김유나 on 2023/09/04.
//

//import Foundation

// 27433 번, Bronze 5
//func factorial(_ n: Int) -> Int {
//    return n <= 1 ? 1 : n * factorial(n-1)
//}
//let input = Int(readLine()!)!
//print(factorial(input))

// 10870 번, Bronze 2
//func fibo(_ n: Int) -> Int { return n < 2 ? n : fibo(n-1) + fibo(n-2) }
//let input = Int(readLine()!)!
//print(fibo(input))

// 25501 번, Bronze 2
//func recursion(_ s: [Character], _ l: Int, _ r: Int) -> Int {
//    c += 1
//    if l >= r { return 1 }
//    if s[l] != s[r] { return 0 }
//    return recursion(s, l+1, r-1)
//}
//let n = Int(readLine()!)!
//var c = 0
//for _ in 0..<n {
//    let s = readLine()!.map {$0}
//    c = 0
//    print(recursion(s, 0, s.count - 1), c)
//}

// 24060 번, Silver 3
//let NK = readLine()!.split(separator: " ").map{Int($0)!}
//let num = readLine()!.split(separator: " ").map{Int($0)!}
//var k = [Int]()
//func mergeSort(_ arr: [Int]) -> [Int] {
//    guard arr.count > 1 else { return arr }
//
//    let m = arr.count / 2
//    let left = mergeSort(Array(arr[0..<m]))
//    let right = mergeSort(Array(arr[m..<arr.count]))
//
//    return merge(left, right)
//}
//func merge(_ left: [Int], _ right: [Int]) -> [Int] {
//    var final = [Int]()
//    var i = 0, j = 0
//
//    while (i < left.count && j < right.count) {
//        if left[i] < right[j] {
//            final.append(left[i])
//            i += 1
//        } else {
//            final.append(right[j])
//            j += 1
//        }
//    }
//
//    left[i..<left.count].forEach { final.append($0) }
//    right[j..<right.count].forEach { final.append($0) }
//
//    k += final
//
//    return final
//}
//mergeSort(num)
//print(k)
//print(k.count < NK[1] ? -1 : k[NK[1]-1])

// 4779 번, Silver 3
//import Foundation
//var result = [Int: Bool]()
//func canto(_ s: Int, _ e: Int) {
//    if e == s { return }
//
//    let amount = (e - s + 1) / 3
//    canto(s, s + amount - 1)
//    (s + amount..<s + amount*2).forEach{ result[$0] = false }
//    canto(s + amount*2, e)
//}
//while let input = readLine(), let inputNum = Double(input) {
//    let count = Int(pow(3, inputNum))
//    var cantoResult = ""
//    result = Dictionary(uniqueKeysWithValues: (0..<count).map{($0, true)})
//    canto(0, count-1)
//    (0..<count).forEach { cantoResult += result[$0]! ? "-" : " "}
//    print(cantoResult)
//}

// 2447 번, Gold 5
//func star(_ s1: Int, _ s2: Int, _ e1: Int, _ e2: Int) {
//    if e1 - s1 < 2 { return }
//    let amount = (e1 - s1 + 1) / 3
//    for i in s1 + amount..<s1 + 2 * amount {
//        for j in s2 + amount..<s2 + 2 * amount {
//            result[i][j] = false
//        }
//    }
//    for i in 0..<3 {
//        for j in 0..<3 {
//            star(s1 + amount * i, s2 + amount * j, s1 + amount * (i + 1) - 1, s2 + amount * (j + 1) - 1)
//        }
//    }
//}
//let n = Int(readLine()!)!
//var starResult = ""
//var result = Array(repeating: Dictionary(uniqueKeysWithValues: (0..<n).map{ ($0, true)} ), count: n)
//star(0, 0, n-1, n-1)
//for i in 0..<n {
//    for j in 0..<n {
//        starResult += result[i][j]! ? "*" : " "
//    }
//    starResult += "\n"
//}
//print(starResult)

// 11729 번, Silver 1
//func hanoi(_ n: Int, _ from: Int, _ to: Int, _ assist: Int) {
//    if n == 1 {
//        answer += "\(from) \(to)\n"
//        count += 1
//        return
//    }
//
//    hanoi(n - 1, from, assist, to)
//
//    answer += "\(from) \(to)\n"
//    count += 1
//
//    hanoi(n - 1, assist, to, from)
//}
//let N = Int(readLine()!)!
//var count = 0
//var answer = ""
//hanoi(N, 1, 3, 2)
//print(count)
//print(answer)
