//
//  main.swift
//  Baekjoon
//
//  Created by 김유나 on 2023/07/20.
//

// MARK: - 새로 배운 것
// 반복문의 반복 횟수는 최대한 줄이자.
// 소수를 구하는 문제 같은 경우 1은 소수가 아니고 2, 3은 무조건 소수이므로 반복할 때 1, 2, 3을 고려하면 시간이 훨씬 줄어든다
// 어떤 값에 배열의 모든 요소를 더하기(빼기, 곱하기, 나누기): reduce
// 소수 구하기: 에라토스테네스의 체 알고리즘 - 2부터 자기 자신을 제외하고 자신의 배수를 제거하기, 남은 수가 소수

//import Foundation

// 5086 번, Bronze 3
//while true {
//    let a = readLine()!.split(separator: " ").map{Int($0)!}
//    if a[0] == a[1] {
//        break
//    } else if a[0] > a[1] {
//        if a[0] % a[1] == 0 {
//            print("multiple")
//        } else {
//            print("neither")
//        }
//    } else {
//        if a[1] % a[0] == 0 {
//            print("factor")
//        } else {
//            print("neither")
//        }
//    }
//}

// 2501 번, Bronze 2
//var a = readLine()!.split(separator: " ").map{Int($0)!}
//var b = 1
//while true {
//    if a[0] % b == 0 {
//        a[1] -= 1
//        if a[1] == 0 {
//            print(b)
//            break
//        }
//        if a[0] == b {
//            print("0")
//            break
//        }
//    }
//    b += 1
//}

// 9506 번, Bronze 1
//while true {
//    let a = Int(readLine()!)!
//    var b = 1
//    var c: [Int] = []
//    if a == -1 {
//        break
//    } else {
//        while true {
//            if a == b {
//                if c.reduce(0, +) == a {
//                    print("\(a) = ", terminator: "")
//                    c.forEach {
//                        if c[c.endIndex - 1] == $0 {
//                            print($0)
//                        } else {
//                            print($0, terminator: " + ")
//                        }
//                    }
//                } else {
//                    print("\(a) is NOT perfect.")
//                }
//                break
//            }
//            if a % b == 0 {
//                c.append(b)
//            }
//            b += 1
//        }
//    }
//}

// 1978 번, Bronze 2
//let a = Int(readLine()!)!
//let b = readLine()!.split(separator: " ").map{Int($0)!}
//var e = 0
//for i in 0..<a {
//    var c = 1
//    var d = 0
//    while true {
//        if b[i] % c == 0 {
//            d += 1
//        }
//        if b[i] == c {
//            break
//        }
//        c += 1
//    }
//    if d == 2 {
//        e += 1
//    }
//}
//print(e)

// 2581 번, Bronze 2
//let a = Int(readLine()!)!
//let b = Int(readLine()!)!
//var e: [Int] = []
//for i in a...b {
//    var c = true
//    if i == 1 { continue }
//    for j in 2..<i {
//        if i % j == 0 {
//            c = false
//            break
//        }
//    }
//    if c {
//        e.append(i)
//    }
//}
//e.isEmpty ? print(-1) : print("\(e.reduce(0, +))\n\(e.min()!)")

// 11653 번, Bronze 1
//var b = Int(readLine()!)!
//var c = 2
//while b > 1 {
//    if b < c * c {
//        print(b)
//        break
//    }
//    if b % c == 0 {
//        print(c)
//        b /= c
//    } else {
//        c += 1
//    }
//}
