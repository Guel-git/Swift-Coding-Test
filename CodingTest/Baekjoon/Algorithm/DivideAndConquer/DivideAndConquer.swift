//
//  main.swift
//  Baekjoon
//
//  Created by 김유나 on 2023/09/25.
//

// 2630 번, Silver 2
//let num = Int(readLine()!)!
//var arr = [[Int]]()
//var whiteNum = 0
//var blueNum = 0
//for _ in 0..<num {
//    arr.append(readLine()!.split(separator: " ").map{Int($0)!})
//}
//func divide(_ rs: Int, _ re: Int, _ cs: Int, _ ce: Int) {
//    var sum = 0
//    for i in rs...re {
//        for j in cs...ce {
//            sum += arr[i][j]
//        }
//    }
//
//    if sum == 0 {
//        whiteNum += 1
//        return
//    }
//    if sum == (re - rs + 1) * (ce - cs + 1) {
//        blueNum += 1
//        return
//    }
//
//    let rm = (re - rs + 1) / 2
//    let cm = (ce - cs + 1) / 2
//
//    divide(rs, rs + rm - 1, cs, cs + cm - 1)
//    divide(rs, rs + rm - 1, cs + cm, ce)
//    divide(rs + rm, re, cs, cs + cm - 1)
//    divide(rs + rm, re, cs + cm, ce)
//}
//divide(0, num - 1, 0, num - 1)
//print("\(whiteNum)\n\(blueNum)")

// 1992 번, Silver 1
//let num = Int(readLine()!)!
//var arr = [[Int]]()
//for _ in 0..<num {
//    arr.append(Array(readLine()!).map{Int(String($0))!})
//}
//func divide(_ rs: Int, _ re: Int, _ cs: Int, _ ce: Int) -> String {
//    var sum = 0
//    for i in rs...re {
//        for j in cs...ce {
//            sum += arr[i][j]
//        }
//    }
//
//    if sum == 0 {
//        return "0"
//    }
//
//    if sum == (re - rs + 1) * (ce - cs + 1) {
//        return "1"
//    }
//
//    let rm = (re - rs + 1) / 2 + rs
//    let cm = (ce - cs + 1) / 2 + cs
//
//    return "(" + divide(rs, rm - 1, cs, cm - 1) + divide(rs, rm - 1, cm, ce) + divide(rm, re, cs, cm - 1) + divide(rm, re, cm, ce) + ")"
//}
//print(divide(0, num - 1, 0, num - 1))

// 1780 번, Silver 2
//let num = Int(readLine()!)!
//var arr = [[Int]]()
//var minus = 0
//var zero = 0
//var plus = 0
//for _ in 0..<num {
//    arr.append(readLine()!.split(separator: " ").map{Int($0)!})
//}
//func divide(_ rs: Int, _ re: Int, _ cs: Int, _ ce: Int) {
//    var sum = 0
//    var isZero = true
//    for i in rs...re {
//        for j in cs...ce {
//            sum += arr[i][j]
//            if sum != 0 {
//                isZero = false
//            }
//        }
//    }
//    if sum == 0 && isZero {
//        zero += 1
//        return
//    }
//    if sum == (re - rs + 1) * (ce - cs + 1) {
//        plus += 1
//        return
//    }
//    if sum == -1 * (re - rs + 1) * (ce - cs + 1) {
//        minus += 1
//        return
//    }
//    let rm1 = rs + (re - rs + 1) / 3
//    let rm2 = rs + (re - rs + 1) / 3 * 2
//    let cm1 = cs + (ce - cs + 1) / 3
//    let cm2 = cs + (ce - cs + 1) / 3 * 2
//    divide(rs, rm1 - 1, cs, cm1 - 1)
//    divide(rs, rm1 - 1, cm1, cm2 - 1)
//    divide(rs, rm1 - 1, cm2, ce)
//    divide(rm1, rm2 - 1, cs, cm1 - 1)
//    divide(rm1, rm2 - 1, cm1, cm2 - 1)
//    divide(rm1, rm2 - 1, cm2, ce)
//    divide(rm2, re, cs, cm1 - 1)
//    divide(rm2, re, cm1, cm2 - 1)
//    divide(rm2, re, cm2, ce)
//}
//divide(0, num - 1, 0, num - 1)
//print("\(minus)\n\(zero)\n\(plus)")

// 1629 번, Silver 1
// 핵심1: ab % c => a % c * b % c 이다
// 핵심2: a에 n승 하는 것은 O(n)이고 숫자가 너무 커지면 overflow가 발생한다
// a^n * a^m = a^(n+m) 을 활용해 O(log2N)로 시간을 줄일 수 있다
//let a = readLine()!.split(separator: " ").map{Int($0)!}
//func pow(_ n: Int) -> Int {
//    if n == 0 { return 1 }
//
//    if n % 2 == 0 {
//        let tmp = pow(n/2)
//        return tmp % a[2] * tmp % a[2]
//    } else {
//        let tmp = pow((n-1)/2)
//        return tmp % a[2] * tmp % a[2] * a[0] % a[2]
//    }
//}
//print(pow(a[1]))
