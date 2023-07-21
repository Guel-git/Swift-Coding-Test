//
//  main.swift
//  Baekjoon
//
//  Created by 김유나 on 2023/07/21.
//

//import Foundation

// 27323 번, Bronze 5
//print(Int(readLine()!)!*Int(readLine()!)!)

// 1085 번, Bronze 3
//var a = readLine()!.split(separator: " ").map{Int($0)!}
//a[2] -= a[0]
//a[3] -= a[1]
//print(a.min()!)

// 3009번, Bronze 3
//let a = readLine()!.split(separator: " ").map{Int($0)!}
//let b = readLine()!.split(separator: " ").map{Int($0)!}
//let c = readLine()!.split(separator: " ").map{Int($0)!}
//var d: [Int] = []
//for i in 0...1 {
//    if a[i] == b[i] {
//        d.append(c[i])
//    } else if a[i] == c[i] {
//        d.append(b[i])
//    } else if b[i] == c[i] {
//        d.append(a[i])
//    }
//}
//print(d[0], d[1])

// 15894 번, Bronze 3
//print(Int(readLine()!)!*4)

// 9063 번, Bronze 3
//let a = Int(readLine()!)!
//var b = [Int]()
//var c = [Int]()
//for _ in 0..<a {
//    let d = readLine()!.split(separator: " ").map{Int($0)!}
//    b.append(d[0])
//    c.append(d[1])
//}
//print((b.max()! - b.min()!) * (c.max()! - c.min()!))

// 10101 번, Bronze 4
//if let a = Int(readLine()!), let b = Int(readLine()!), let c = Int(readLine()!) {
//    if a + b + c == 180 {
//        if a == b && b == c {
//            print("Equilateral")
//        } else if a == b || b == c || c == a {
//            print("Isosceles")
//        } else {
//            print("Scalene")
//        }
//    } else {
//        print("Error")
//    }
//}

// 5073 번, Bronze 3
//while true {
//    let a = readLine()!.split(separator: " ").map{Int($0)!}
//    if a[0] == 0 {
//        break
//    }
//    if a.max()! < (a.reduce(0, +) - a.max()!) {
//        if a[0] == a[1] && a[1] == a[2] {
//            print("Equilateral")
//        } else if a[0] == a[1] || a[1] == a[2] || a[2] == a[0] {
//            print("Isosceles")
//        } else {
//            print("Scalene")
//        }
//    } else {
//        print("Invalid")
//    }
//}

// 14215 번, Bronze 3
//var a = readLine()!.split(separator: " ").map{Int($0)!}
//let b = a.reduce(0, +) - a.max()!
//if a.max()! >= b {
//    a = a.filter{$0 != a.max()!}
//    a.append(b - 1)
//}
//print(a.reduce(0, +))
