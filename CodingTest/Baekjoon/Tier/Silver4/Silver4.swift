//
//  main.swift
//  Baekjoon
//
//  Created by 김유나 on 2023/11/12.
//

// 1920 번, Silver 4
//func binarySearch(arr: [Int], num: Int) -> Int {
//    if arr.isEmpty { return 0 }
//    if arr.count == 1 { return arr[0] == num ? 1 : 0 }
//    let mid = arr.count / 2
//    if arr[mid] == num { return 1 }
//    return binarySearch(arr: Array(arr[arr[mid] > num ? (0..<mid) : ((mid+1)..<arr.count)]), num: num)
//}
//let _ = readLine()!
//let a = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
//let _ = readLine()!
//readLine()!.split(separator: " ").forEach{print(binarySearch(arr: a, num: Int($0)!))}

//let friends = ["a", "b", "c", "d"]
//var friendsDic: [String:[String]] = Dictionary(uniqueKeysWithValues: friends.map{($0, [])})
//var receiveCount: [String:Int] = Dictionary(uniqueKeysWithValues: friends.map{($0, 0)})
//var finalCount: [String:Int] = Dictionary(uniqueKeysWithValues: friends.map{($0, 0)})
//let gifts = ["a b", "b c", "c d"]
//for gift in gifts {
//    let a = gift.split(separator: " ").map{String($0)}
//    print(a)
//    friendsDic[a[0]]?.append(a[1])
//    receiveCount[a[1]]! += 1
//}
//print(friendsDic)
//
//for i in 0..<friends.count {
//    for j in i+1..<friends.count {
//        let left = friendsDic[friends[i]]?.filter{$0 == friends[j]}.count
//        let right = friendsDic[friends[j]]?.filter{$0 == friends[i]}.count
//        print(friends[i], friends[j], left!, right!)
//        if let left = left, let right = right {
//            if left == right {
//                let leftPoint = friendsDic[friends[i]]!.count - receiveCount[friends[i]]!
//                let rightPoint = friendsDic[friends[j]]!.count - receiveCount[friends[j]]!
//                if leftPoint > rightPoint {
//                    finalCount[friends[i]]! += 1
//                } else if leftPoint < rightPoint {
//                    finalCount[friends[j]]! += 1
//                }
//            } else if left > right {
//                finalCount[friends[i]]! += 1
//            } else {
//                finalCount[friends[j]]! += 1
//            }
//        }
//    }
//}
//
//print(finalCount)
//print(finalCount.values.max()!)
