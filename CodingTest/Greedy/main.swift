//
//  main.swift
//  Baekjoon
//
//  Created by 김유나 on 2023/09/21.
//

// 11047 번, Silver 4
//let a = readLine()!.split(separator: " ").map{Int($0)!}
//var r = a[1]
//var m = [Int]()
//for _ in 0..<a[0] {
//    m.append(Int(readLine()!)!)
//}
//m = m.reversed()
//var n = 0
//for i in m {
//    n += r / i
//    r = r % i
//}
//print(n)

// 1931 번, Silver 1
//let count = Int(readLine()!)!
//var time = [(Int, Int)]()
//var standard = -1
//var result = 0
//for _ in 0..<count {
//    let con = readLine()!.split(separator: " ").map{Int($0)!}
//    time.append((con[0], con[1]))
//}
//time.sort(by: { (a: (Int, Int), b: (Int, Int)) -> Bool in
//    return a.1 == b.1 ? a.0 < b.0 : a.1 < b.1
//})
//for i in time {
//    if i.0 >= standard {
//        standard = i.1
//        result += 1
//    }
//}
//print(result)

// 11399 번, Silver 4
//let n = Int(readLine()!)!
//let arr = readLine()!.split(separator: " ").map{Int($0)!}
//let sorted = arr.sorted(by: >)
//var sum = 0
//for i in 1...n {
//    sum += i * sorted[i-1]
//}
//print(sum)

// 1541 번, Silver 2
//let string = readLine()!
//var isPositive = true
//if string.hasPrefix("-") { isPositive = false }
//let list = string.split(separator: "-").map{String($0)}
//var sum = 0
//for i in 0..<list.count {
//    if isPositive && i == 0 {
//        sum += list[i].contains("+") ? list[i].split(separator: "+").map{Int($0)!}.reduce(0, +) : Int(list[i])!
//        continue
//    }
//    sum -= list[i].contains("+") ? list[i].split(separator: "+").map{Int($0)!}.reduce(0, +) : Int(list[i])!
//}
//print(sum)

// 20044 번, Silver 4
//let num = Int(readLine()!)!
//let arr = readLine()!.split(separator: " ").map{Int($0)!}
//var sorted = arr.sorted()
//var sumArr = [Int]()
//for _ in 0..<num {
//    let last = sorted.removeLast()
//    sorted = sorted.reversed()
//    let first = sorted.removeLast()
//    sorted = sorted.reversed()
//    sumArr.append(first + last)
//}
//print(sumArr.min()!)

// 2891 번, Silver 5
//let NSR = readLine()!.split(separator: " ").map{Int($0)!}
//var ss = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
//let rr = readLine()!.split(separator: " ").map{Int($0)!}
//var dic = Dictionary(uniqueKeysWithValues: (1...NSR[0]).map{($0, 0)})
//var count = 0
//for i in rr { dic[i] = 1 }
//var ssCount = 0
//for i in ss {
//    if dic[i] == 1 {
//        dic[i]! -= 1
//        ss.remove(at: ssCount)
//    } else {
//        ssCount += 1
//    }
//}
//for i in ss {
//    if dic[i] == 1 { dic[i]! -= 1 }
//    else if i > 1 && dic[i-1] == 1 { dic[i-1]! -= 1 }
//    else if i < NSR[0] && dic[i+1] == 1 { dic[i+1]! -= 1 }
//    else { count += 1 }
//}
//print(count)
