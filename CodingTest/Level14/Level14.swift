//
//  main.swift
//  Baekjoon
//
//  Created by 김유나 on 2023/08/11.
//

// MARK: - 새로 배운 것
// 배열의 요소 기반 탐색 시간은 O(n), 딕셔너리 요소 기반 탐색 시간은 일반적으로 O(1)
// 딕셔너리에서는 요소가 index인 셈이므로
// 이진 탐색: 정렬된 배열에서 중간값을 기준으로 찾고자 하는 값과 동일하면 true, 작으면 시작~중간-1에 대해, 크면 중간+1~끝에 대해 재귀함수 호출
// swift 문자열은 int형을 입력으로 받는 서브 스크립트가 정의되어 있지 않다 > index 형식이라는 걸로 변환 필요
// String.Index(encodedOffset: 1): start 로부터 1만큼 떨어져 있는 index
// let a = "abcde" print(a[String.Index(encodedOffset: 0)..<String.Index(encodedOffset: 2)]) // ab
// 배열 b = [1, 2, 3]을 가지고 딕셔너리 [1:true, 2:true, 3:true] 만들기
// let d = Dictionary(uniqueKeysWithValues: b.map {($0, true)})

//import Foundation

// 10815 번, Silver 5
//private func solve() {
//    let n = Int(readLine()!)!
//    let a = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
//    let m = Int(readLine()!)!
//    let b = readLine()!.split(separator: " ").map{Int($0)!}
//    var c = Array(repeating: 0, count: m)
//
//    for i in 0..<m {
//        if binarySearch(0, n - 1, a, b[i]) {
//            c[i] = 1
//        }
//    }
//
//    c.forEach{print($0, terminator: " ")}
//}
//
//private func binarySearch(_ left: Int, _ right: Int, _ arr: [Int], _ num: Int) -> Bool {
//    if left > right {
//        return false
//    }
//
//    var result = false
//    let middle = (left + right) / 2
//    if arr[middle] > num {
//        result = binarySearch(left, middle - 1, arr, num)
//    } else if arr[middle] < num {
//        result = binarySearch(middle + 1, right, arr, num)
//    } else {
//        result = true
//    }
//    return result
//}
//solve()

// 14425 번, Silver 3
//let a = readLine()!.split(separator: " ").map{Int($0)!}
//var b = Set<String>()
//var c = [String]()
//var d = 0
//for _ in 0..<a[0] {
//    b.insert(readLine()!)
//}
//for _ in 0..<a[1] {
//    let c = readLine()!
//    d += b.contains(c) ? 1 : 0
//}
//print(d)

// 7785 번, Silver5
//let a = Int(readLine()!)!
//var b = [String:Bool]()
//for _ in 0..<a {
//    let c = readLine()!.split(separator: " ").map{String($0)}
//    if b.keys.contains(c[0]) {
//        b[c[0]]?.toggle()
//    } else {
//        b[c[0]] = true
//    }
//}
//b.filter{$0.value == true}.sorted(by: {$0.key > $1.key}).forEach{print($0.key)}

// 1620 번, Silver 4
//let a = readLine()!.split(separator: " ").map{Int($0)!}
//var b = [String:String]()
//var c = [String:String]()
//for i in 1...a[0] {
//    let d = readLine()!
//    b[String(i)] = d
//    c[d] = String(i)
//}
//for _ in 0..<a[1] {
//    let e = readLine()!
//    print(b[e] ?? c[e]!)
//}

// 10816 번, Silver 4
//let _ = readLine()!
//let a = readLine()!.split(separator: " ").map{Int($0)!}
//let _ = readLine()!
//let b = readLine()!.split(separator: " ").map{Int($0)!}
//var c = [Int:Int]()
//for i in a {
//    if c.keys.contains(i) {
//        c[i]! += 1
//    } else {
//        c[i] = 1
//    }
//}
//for j in b {
//    if c.keys.contains(j) {
//        print(c[j]!, terminator: " ")
//    } else {
//        print(0, terminator: " ")
//    }
//}

// 1764 번, Silver 4
//let a = readLine()!.split(separator: " ").map{Int($0)!}
//var b = [String:Bool]()
//var c = [String]()
//for _ in 0..<a[0] {
//    b[readLine()!] = true
//}
//for _ in 0..<a[1] {
//    let e = readLine()!
//    if b[e] != nil {
//        c.append(e)
//    }
//}
//print(c.count)
//c.sorted().forEach{print($0)}

// 1269 번, Silver 4
//let a = readLine()!.split(separator: " ").map{Int($0)!}
//let b = readLine()!.split(separator: " ").map{String($0)}
//let c = readLine()!.split(separator: " ").map{String($0)}
//let d = Dictionary(uniqueKeysWithValues: b.map{($0, false)})
//var e = 0
//c.forEach{if d[$0] != nil { e += 1 }}
//print(a[0] + a[1] - 2 * e)

// 11478 번, Silver 3
//let a = Array(readLine()!)
//var c = Set<String>()
//for i in 0..<a.count {
//    var b = ""
//    for j in i..<a.count {
//        b += String(a[j])
//        c.insert(b)
//    }
//}
//print(c.count)
