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

// 1912 번, Silver 2
//let n = Int(readLine()!)!
//let arr = readLine()!.split(separator: " ").map{Int($0)!}
//var dp = Array(repeating: -1001, count: 100000)
//
//dp[0] = arr[0]
//
//for i in 1..<n {
//    dp[i] = max(arr[i], dp[i-1] + arr[i])
//}
//print(dp.max()!)

// 1149 번, Silver 1
// i번째 집까지의 최소 비용은 R: (i-1)번째의 G와 B의 최솟값 + i번째 비용, G: (i-1)번째의 R과 B의 최솟값 + i번째 비용, B: (i-1)번째의 R과 G의 최솟값 + i번째 비용
//let n = Int(readLine()!)!
//var dp = [[0, 0, 0]]
//
//for i in 1..<n+1 {
//    let rgb = readLine()!.split(separator: " ").map{Int($0)!}
//    dp.append([min(dp[i-1][1], dp[i-1][2]) + rgb[0], min(dp[i-1][0], dp[i-1][2]) + rgb[1], min(dp[i-1][0], dp[i-1][1]) + rgb[2]])
//}
//
//print(dp[n].min()!)

// 1932 번, Silver 1
//let n = Int(readLine()!)!
//var dp = [[Int(readLine()!)!]]
//
//for i in 1..<n {
//    let row = readLine()!.split(separator: " ").map{Int($0)!}
//    var tmpDP = [dp[i-1][0] + row[0]]
//    for j in 1..<i {
//        tmpDP.append(max(dp[i-1][j-1], dp[i-1][j]) + row[j])
//    }
//    tmpDP.append(dp[i-1][i-1] + row[i])
//    dp.append(tmpDP)
//}
//print(dp[n-1].max()!)

// 2579 번, Silver 3
//let n = Int(readLine()!)!
//var dp = [[Int]]()
//var first = Int(readLine()!)!
//if n == 1 {
//    print(first)
//} else if n == 2 {
//    let second = Int(readLine()!)!
//    print(first+second)
//} else {
//    let second = Int(readLine()!)!
//    dp = [[0, first, first], [first, first+second, second]]
//    for i in 2..<n {
//        let a = Int(readLine()!)!
//        dp.append([max(dp[i-1][1], dp[i-1][2]), dp[i-1][2] + a, max(dp[i-2][1], dp[i-2][2]) + a])
//    }
//    print(max(dp[n-1][1], dp[n-1][2]))
//}

