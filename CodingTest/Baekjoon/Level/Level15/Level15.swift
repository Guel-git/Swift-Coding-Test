//
//  main.swift
//  Baekjoon
//
//  Created by 김유나 on 2023/08/18.
//

// MARK: - 새로 배운 것
// 두 수의 최대 공약수 구하는 방법
// 두 수의 최소 공배수는 두 수의 곱 / 최대 공약수
// 소수를 구하는 방법 1) 2~루트n + 1 까지 돌리는 방법
// 소수를 구하는 방법 2) n만큼의 배열 만들어서 2를 제외한 2의 배수 삭제, 3 제외한 3의 배수 삭제 ... n까지 진행하여 탐색 횟수를 줄인다

//import Foundation

// 1934 번, Bronze 1
//func gcd(_ a: Int, _ b: Int) -> Int {
//    if a % b == 0 {
//        return b
//    } else {
//        return gcd(b, a % b)
//    }
//}
//let a = Int(readLine()!)!
//for _ in 0..<a {
//    let b = readLine()!.split(separator: " ").map{Int($0)!}
//    print(b[0]*b[1]/gcd(b[0], b[1]))
//}

// 13241 번, Silver 5
//func gcd(_ a: Int, _ b: Int) -> Int {
//    if a % b == 0 {
//        return b
//    } else {
//        return gcd(b, a % b)
//    }
//}
//let a = readLine()!.split(separator: " ").map{Int($0)!}
//print(a[0]*a[1] / gcd(a[0], a[1]))

// 1735 번, Silver 3
//func gcd(_ a: Int, _ b: Int) -> Int {
//    if a % b == 0 {
//        return b
//    } else {
//        return gcd(b, a % b)
//    }
//}
//let a = readLine()!.split(separator: " ").map{Int($0)!}
//let b = readLine()!.split(separator: " ").map{Int($0)!}
//let c = gcd(a[0] * b[1] + a[1] * b[0], a[1] * b[1])
//print((a[0] * b[1] + a[1] * b[0])/c, a[1] * b[1]/c)

// 2485 번, Silver 4
//func gcd(_ a: Int, _ b: Int) -> Int {
//    if a % b == 0 {
//        return b
//    } else {
//        return gcd(b, a % b)
//    }
//}
//let num = Int(readLine()!)!
//var a = [Int]()
//var b = [Int]()
//for i in 0..<num {
//    a.append(Int(readLine()!)!)
//    if i == 0 { continue }
//    b.append(a[i] - a[i-1])
//}
//var gcd = b[0]
//for i in 1..<num-1 {
//    gcd = gcd(gcd, b[i])
//}
//print((a[num - 1] - a[0]) / gcd + 1 - num)

// 4134 번, Silver 4
//import Foundation
//func isPrimeNumber(_ a: Int) -> Bool {
//    if a < 2 { return false }
//    for i in 2..<Int(sqrt(Double(a)) + 1) {
//        if a % i == 0 { return false }
//    }
//    return true
//}
//func findSmallestPrime() {
//    var n = Int(readLine()!)!
//    while !isPrimeNumber(n) {
//        n += 1
//    }
//    print(n)
//}
//let t = Int(readLine()!)!
//for _ in 0..<t { findSmallestPrime() }

// 1929 번, Silver 3
//import Foundation
//func isPrime(_ a: Int) -> Bool {
//    if a < 2 { return false }
//    for i in 2..<Int(sqrt(Double(a)) + 1) {
//        if a % i == 0 { return false }
//    }
//    return true
//}
//let a = readLine()!.split(separator: " ").map{Int($0)!}
//for i in a[0]...a[1] { if isPrime(i) { print(i) }}

// 4948 번, Silver 2
//import Foundation
//func isPrimeNumber(_ n: Int) -> Bool {
//    if n < 2 { return false }
//    for i in 2..<Int(sqrt(Double(n)) + 1) {
//        if n % i == 0 { return false }
//    }
//    return true
//}
//while true {
//    let a = Int(readLine()!)!
//    if a == 0 { break }
//    var r = 0
//    for i in a+1...a*2 {
//        if isPrimeNumber(i) { r += 1 }
//    }
//    print(r)
//}

// 17103 번, Silver 2
//import Foundation
//func isPrime(_ n: Int) -> [Bool] {
//    var c = Array(repeating: true, count: n+1)
//    c[0] = false
//    c[1] = false
//    for i in 2..<Int(sqrt(Double(n)))+1 {
//        if c[i] {
//            var j = 2
//            while i * j <= n {
//                c[i * j] = false
//                j += 1
//            }
//        }
//    }
//    return c
//}
//let a = Int(readLine()!)!
//for _ in 0..<a {
//    var c = 0
//    let b = Int(readLine()!)!
//    let arr = isPrime(b)
//    for i in 2...b/2 {
//        if arr[i] && arr[b-i] { c += 1 }
//    }
//    print(c)
//}

// 13909 번, Silver 5
//let n = Int(readLine()!)!
//var k = 0
//var i = 1
//while i * i <= n {
//    k += 1
//    i += 1
//}
//print(k)
