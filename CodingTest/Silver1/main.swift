//
//  main.swift
//  Baekjoon
//
//  Created by 김유나 on 2024/02/19.
//

//import Foundation

// 2531 번, Silver 1 -> 시간초과
//let input = readLine()!.split(separator: " ").map{Int($0)!}
//let n = input[0], k = input[2], c = input[3]
//var belt = [Int](), sushi = [Int](), max = 0, e = k - 1
//for _ in 0..<k {
//    belt.append(Int(readLine()!)!)
//}
//sushi = belt
//for i in 0..<n-1 {
//    let sc = Set(sushi + [c]).count
//    if sc > max { max = sc }
//
//    if i < n-k { belt.append(Int(readLine()!)!) }
//
//    sushi = sushi.reversed()
//    sushi.removeLast()
//    sushi = sushi.reversed()
//    e = (e + 1) % n
//    sushi.append(belt[e])
//}
//let sc = Set(sushi + [c]).count
//if sc > max { max = sc }
//print(max)

// 13335 번, 트럭, Silver 1
//let nwl = readLine()!.split(separator: " ").map{Int($0)!}
//let w = nwl[1], l = nwl[2]
//var a = readLine()!.split(separator: " ").map{Int($0)!}
//var sum = 0, count = 0, bridge = Array(repeating: 0, count: w)
//while !a.isEmpty {
//    sum -= bridge.removeFirst()
//    if sum + a[0] <= l && bridge.filter { $0 != 0 }.count < w {
//        let truck = a.removeFirst()
//        bridge.append(truck)
//        sum += truck
//    } else { bridge.append(0) }
//    count += 1
//}
//print(count + w)

// 14889 번, 스타트와 링크, Silver 1
//let n = Int(readLine()!)!
//var chosen = Array(repeating: false, count: n)
//var result = Int.max
//
//var s = [[Int]]()
//for _ in 0..<n {
//    s.append(readLine()!.split(separator: " ").map{Int($0)!})
//}
//
//private func dfs(_ chosenCount: Int, _ start: Int) {
//    if chosenCount == n/2 {
//        var team1 = 0, team2 = 0
//        for i in 0..<n {
//            for j in i+1..<n {
//                if chosen[i] && chosen[j] {
//                    team1 += s[i][j] + s[j][i]
//                }
//                if !chosen[i] && !chosen[j] {
//                    team2 += s[i][j] + s[j][i]
//                }
//            }
//        }
//        result = min(result, abs(team1-team2))
//        return
//    }
//    for i in start..<n {
//        if !chosen[i] {
//            chosen[i] = true
//            dfs(chosenCount+1, i)
//            chosen[i] = false
//            if chosenCount + i == 0 { return }
//        }
//    }
//}
//dfs(0, 0)
//print(result)

// 1446 번, 지름길, Silver 1
//let ND = readLine()!.split(separator: " ").map{Int($0)!}
//let N = ND[0], D = ND[1]
//var set = Set<[Int]>()
//
//let firstInput = readLine()!.split(separator: " ").map{Int($0)!}
//if firstInput[1] <= D && firstInput[1] - firstInput[0] > firstInput[2] {
//    set.insert([firstInput[0], firstInput[1], firstInput[2]])
//}
//print(set)
//
//for _ in 0..<N-1 {
//    let input = readLine()!.split(separator: " ").map{Int($0)!}
//    if input[1] - input[0] <= input[2] || input[1] > D { continue }
//    var flag = false
//    for a in set {
//        print("input", input, "a", a)
//        if input[0] == a[1] || input[1] == a[0] {
//            set = set.filter{ $0 != a }
//            set.insert([min(input[0], a[0]), max(input[1], a[1]), input[2]+a[2]])
//            flag = true
//            print("0", set)
//        } else if input[0] <= a[1] && input[0] >= a[0] {
//            set = set.filter{ $0 != a }
//            set = set.filter{ $0 != input }
//            set.insert([a[0], input[1], min(a[2]+input[1]-a[1], input[2]+input[0]-a[0])])
//            flag = true
//            print("1", set)
//        } else if input[1] <= a[1] && input[1] >= a[0] {
//            set = set.filter{ $0 != a }
//            set = set.filter{ $0 != input }
//            set.insert([input[0], a[1], min(input[2]+a[1]-input[1], a[2]+a[0]-input[0])])
//            flag = true
//            print("2", set)
//        } else {
//            if !flag { set.insert([input[0], input[1], input[2]]) }
//            print("3", set)
////            break
//        }
//    }
//}
//var list = Array(set)
//list = list.sorted(by: { $0[0] < $1[0] })
//print(list)
//
//var end = 0, result = 0
//for i in list {
//    print("빈공간", i[0] - end)
//    result += i[2] + i[0] - end
//    end = i[1]
//}
//
//result += D - end
//print(result)

// 20922 번, 겹치는 건 싫어, Silver 1
//let NK = readLine()!.split(separator: " ").map{Int($0)!}
//let list = readLine()!.split(separator: " ").map{Int($0)!}
//
//var dict = [list[0]:1]
//var max = [Int](), s = 0, e = 1, count = 0
//
//while e < NK[0] {
//    if dict[list[e]] == nil { dict[list[e]] = 0 }
//    dict[list[e]]! += 1
//
//    if dict[list[e]]! > NK[1] {
//        max.append(e - s)
//        while dict[list[e]]! > NK[1] {
//            dict[list[s]]! -= 1
//            s += 1
//        }
//    }
//
//    e += 1
//}
//max.append(e - s)
//print(max.max()!)

// 11286 번, 절댓값 힙, Silver 1
//let n = Int(readLine()!)!
//var list = [Int]()
//for _ in 0..<n {
//    let input = Int(readLine()!)!
//    if input != 0 {
//        list.append(input)
//    } else {
//        list = list.sorted(by: {
//            abs($0) == abs($1) ? $0 > $1 : abs($0) > abs($1)
//        })
//        print(list.popLast() ?? 0)
//    }
//}
//struct PriorityQueue<T> {
//    private var heap: [T] = []
//    private let ordered: (T, T) -> Bool
//
//    init(by ordered: @escaping (T, T) -> Bool) {
//        self.ordered = ordered
//    }
//
//    mutating func enqueue(_ element: T) {
//        heap.append(element)
//        siftUp(from: heap.count - 1)
//    }
//
//    mutating func dequeue() -> T? {
//        guard !heap.isEmpty else { return nil }
//        heap.swapAt(0, heap.count - 1)
//        let removed = heap.removeLast()
//        siftDown(from: 0)
//        return removed
//    }
//
//    private mutating func siftUp(from index: Int) {
//        var childIndex = index
//        let child = heap[childIndex]
//        var parentIndex = (childIndex - 1) / 2
//
//        while childIndex > 0 && ordered(child, heap[parentIndex]) {
//            heap[childIndex] = heap[parentIndex]
//            childIndex = parentIndex
//            parentIndex = (childIndex - 1) / 2
//        }
//
//        heap[childIndex] = child
//    }
//
//    private mutating func siftDown(from index: Int) {
//        var parentIndex = index
//        while true {
//            let leftChildIndex = 2 * parentIndex + 1
//            let rightChildIndex = 2 * parentIndex + 2
//            var optionalSwapIndex: Int?
//
//            if leftChildIndex < heap.count && ordered(heap[leftChildIndex], heap[parentIndex]) {
//                optionalSwapIndex = leftChildIndex
//            }
//
//            if rightChildIndex < heap.count && ordered(heap[rightChildIndex], heap[optionalSwapIndex ?? parentIndex]) {
//                optionalSwapIndex = rightChildIndex
//            }
//
//            guard let swapIndex = optionalSwapIndex else { break }
//
//            heap.swapAt(parentIndex, swapIndex)
//            parentIndex = swapIndex
//        }
//    }
//}
//
//var pq = PriorityQueue<Int> { abs($0) == abs($1) ? $0 < $1 : abs($0) < abs($1) }
//let n = Int(readLine()!)!
//
//for _ in 0..<n {
//    let input = Int(readLine()!)!
//    if input != 0 {
//        pq.enqueue(input)
//    } else {
//        print(pq.dequeue() ?? 0)
//    }
//}
