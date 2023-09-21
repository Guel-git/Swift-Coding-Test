//
//  main.swift
//  Baekjoon
//
//  Created by 김유나 on 2023/09/19.
//

// 24416 번, Bronze 1
//let a = Int(readLine()!)!
//var l = 2
//var n = 3
//for _ in 0..<a-4 {
//    let temp = n
//    n = l + n
//    l = temp
//}
//print(n, a-2)

// 9184 번, Silver 2
//var w = Array(repeating: Array(repeating: Array(repeating: 0, count: 21), count: 21), count: 21)
//func f(_ a: Int, _ b: Int, _ c: Int) -> Int {
//    if a <= 0 || b <= 0 || c <= 0 {
//        return 1
//    }
//    if a > 20 || b > 20 || c > 20 {
//        return f(20, 20, 20)
//    }
//
//    if w[a][b][c] != 0 {
//        return w[a][b][c]
//    }
//
//    if a < b && b < c {
//        w[a][b][c] = f(a, b, c-1) + f(a, b-1, c-1) - f(a, b-1, c)
//        return w[a][b][c]
//    }
//
//    w[a][b][c] = f(a - 1, b, c) + f(a - 1, b - 1, c) + f(a - 1, b, c - 1) - f(a - 1, b - 1, c - 1)
//    return w[a][b][c]
//}
//
//while let a = readLine()?.split(separator: " ").map({Int($0)!}), a != [-1, -1, -1] {
//    print("w(\(a[0]), \(a[1]), \(a[2])) =", f(a[0], a[1], a[2]))
//}

// 1904 번, Silver 3
//let n = Int(readLine()!)!
//var f: Int = 1
//var s: Int = 2
//var r = 0
//if n == 1 {
//    r = f
//} else if n == 2 {
//    r = s
//} else {
//    for _ in 3...n{
//        r = (f + s) % 15746
//        f = s % 15746
//        s = r
//    }
//}
//print(r)

// 9461 번, Silver 3
//let n = Int(readLine()!)!
//var r = String()
//for _ in 0..<n {
//    var arr = [1, 1, 1, 2, 2]
//    var i = 0
//    let a = Int(readLine()!)!
//    if a <= 5 {
//        r += "\(arr[a-1])\n"
//    } else {
//        for _ in 0..<a-5 {
//            arr.append(arr[i] + arr[arr.count - 1])
//            i += 1
//        }
//        r += "\(arr[arr.count - 1])\n"
//    }
//}
//print(r)
