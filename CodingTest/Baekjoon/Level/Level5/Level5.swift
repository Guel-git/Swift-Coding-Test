//
//  main.swift
//  Baekjoon
//
//  Created by 김유나 on 2023/07/04.
//

// MARK: - 새로 배운 것
// 문자열 a 가 있을 때 a.index는 문자열 a의 index를 의미한다.
// a[a.startIndex]는 문자열 a의 첫번째 문자를 의미한다.
// a.endIndex는 문자열 a의 마지막 인덱스 번호를 의미하는데, index는 1부터 시작하기 때문에 a[a.endIndex]를 출력하면 배열 index의 범위를 넘어섰다는 에러가 뜬다. 문자열 a에서 마지막 문자를 뽑아내고 싶으면 a[a.index(before: a.endIndex)]로 작성해야 한다.
// 반대로 a[a.index(after: a.startIndex)]로 2번째 문자를 뽑아낼 수 있다.
// a.index(a.startIndex, offsetBy: 2) 는 a 문자열에서 첫번째 index에서 2만큼 떨어진 인덱스 번호(3)를 의미한다.
// Int(UnicodeScalar(a)!.value)로 a의 아스키코드를 얻을 수 있다
// 문자열 a를 a.reversed()로 뒤짚을 수 있다. (abc > cba)


import Foundation

// 27866 번, Bronze
//let a = readLine()!
//let b = Int(readLine()!)!
//print(a[a.index(a.startIndex, offsetBy: b-1)])

// 2743 번, Bronze
//print(readLine()!.count)

// 9086 번, Bronze
//let a = Int(readLine()!)!
//for _ in 1...a {
//    let b = readLine()!
//    print(b[b.startIndex], terminator: "")
//    print(b[b.index(before: b.endIndex)])
//}

// 11654 번, Bronze
//print(Int(UnicodeScalar(readLine()!)!.value))

// 11720 번, Bronze
//let _ = readLine()!
//let a = readLine()!.map{Int(String($0))!}
//var b = 0
//a.forEach {b=b+$0}
//print(b)

// 10809 번, Bronze
//var a = Array(repeating: -1, count: 26)
//let b = readLine()!
//var c = 0
//for i in b {
//    if a[Int(UnicodeScalar(String(i))!.value) - 97] == -1 {
//        a[Int(UnicodeScalar(String(i))!.value) - 97] = c
//    }
//    c = c + 1
//}
//a.forEach{ print($0, terminator: " ") }

// 2675 번, Bronze
//let a = Int(readLine()!)!
//for _ in 1...a {
//    let b = readLine()!.split(separator: " ")
//    for i in b[1] {
//        for _ in 1...Int(b[0])! {
//            print(i, terminator: "")
//        }
//    }
//    print("")
//}

// 2908 번, Bronze
//print(readLine()!.split(separator: " ").map{String($0.reversed())}.max()!)

// 5622 번, Bronze
//let a = readLine()!
//var b = 0
//for i in a {
//    switch i {
//    case "A", "B", "C":
//        b = b + 3
//    case "D", "E", "F":
//        b = b + 4
//    case "G", "H", "I":
//        b = b + 5
//    case "J", "K", "L":
//        b = b + 6
//    case "M", "N", "O":
//        b = b + 7
//    case "P", "Q", "R", "S":
//        b = b + 8
//    case "T", "U", "V":
//        b = b + 9
//    default:
//        b = b + 10
//    }
//}
//print(b)

// 11718 번, Bronze
//while let a = readLine() {
//    print(a)
//}
