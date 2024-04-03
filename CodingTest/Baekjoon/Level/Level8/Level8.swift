//
//  main.swift
//  Baekjoon
//
//  Created by 김유나 on 2023/07/14.
//

//import Foundation

// MARK: - 새로 배운 것
// Character("A").asciiValue 로 문자 "A"의 ascii code를 알 수 있음
// pow(밑, 승) ex. 2의 3승 > pow(2, 3) / pow 함수는 Foundation import 해야 함
// ceil - 올림, floor - 내림 / Foundation import 해야 함

// 2745 번, Bronze 2
//let a = readLine()!.split(separator: " ")
//let n = a[0].count
//var s = 0
//var b = 0
//for i in a[0] {
//    var c = 1
//    for _ in 0..<a[0].count - 1 - b {
//        c *= Int(a[1])!
//    }
//    if Int(i.asciiValue!) >= Int(UnicodeScalar("A").value) {
//        s += (Int(i.asciiValue!) - Int(UnicodeScalar("A").value) + 10) * c
//    } else {
//        s += Int(String(i))! * c
//    }
//    b = b + 1
//}
//print(s)

// 11005 번, Bronze 1
//let a = readLine()!.split(separator: " ").map{Int($0)!}
//var b = a[0]
//var c: [Int] = []
//while(true) {
//    c.append(b % a[1])
//    b = b / a[1]
//    if b < a[1] {
//        c.append(b)
//        break
//    }
//}
//if c[c.endIndex - 1] == 0 {
//    c.removeLast()
//}
//c.reversed().forEach {
//    if $0 >= 10 {
//        print(String(UnicodeScalar($0 + 55)!), terminator: "")
//    } else {
//        print($0, terminator: "")
//    }
//}

// 2720 번, Bronze 3
//let a = Int(readLine()!)!
//var b = [25, 10, 5, 1]
//for _ in 0..<a {
//    var d = Array(repeating: 0, count: 4)
//    var c = Int(readLine()!)!
//    for i in b.indices {
//        d[i] = c / b[i]
//        c = c % b[i]
//    }
//    d.forEach{ print($0, terminator: " ") }
//}

// 2903 번, Bronze 3
//print(pow(pow(2, Int(readLine()!)!) + 1, 2))

// 2292 번, Bronze 2
//let a = Int(readLine()!)!
//var b = 1
//while (true) {
//    if (a <= 3 * b * (b - 1) + 1) {
//        print(b)
//        break
//    }
//    b = b + 1
//}

// 1193 번, Silver 5
//let a = Int(readLine()!)!
//var n = 1
//while true {
//    let b = n * (n + 1)
//    let c = -1 * n * (n - 1)
//    if (2 * a <= b) {
//        let d = 1 + Int(0.5 * Double(b)) - a
//        let e = Int(0.5 * Double(c)) + a
//        if n % 2 == 1 {
//            print("\(d)/\(e)")
//        } else {
//            print("\(e)/\(d)")
//        }
//        break
//    }
//    n += 1
//}

// 2869 번, Bronze 1
//import Foundation
//var a = readLine()!.split(separator: " ").map{Double($0)!}
//print("\(Int(ceil((a[2]-a[1])/(a[0]-a[1]))))")
