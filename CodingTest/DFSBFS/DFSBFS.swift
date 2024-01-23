//
//  main.swift
//  Baekjoon
//
//  Created by 김유나 on 2023/08/28.
//

//import Foundation

// 1260 번, Silver 2
//func dfs(_ tree: [Int:[Int]]) {
//    var visitedQueue = [Int]()
//    var willVisitStack = [treeInfo[2]]
//
//    while !willVisitStack.isEmpty {
//        let node = willVisitStack.removeLast()
//        if visitedQueue.contains(node) { continue }
//
//        visitedQueue.append(node)
//        willVisitStack += tree[node] ?? []
//        print(node, terminator: " ")
//    }
//}
//func bfs(_ tree: [Int:[Int]]) {
//    var visitedQueue = [Int]()
//    var willVisitQueue = [treeInfo[2]]
//
//    while !willVisitQueue.isEmpty {
//        let node = willVisitQueue.removeFirst()
//        if visitedQueue.contains(node) { continue }
//
//        visitedQueue.append(node)
//        willVisitQueue += tree[node] ?? []
//        print(node, terminator: " ")
//    }
//}
//let treeInfo = readLine()!.split(separator: " ").map{Int($0)!}
//var tree: [Int: [Int]] = Dictionary(uniqueKeysWithValues: (1...treeInfo[0]).map { ($0, []) })
//for _ in 0..<treeInfo[1] {
//    let nodes = readLine()!.split(separator: " ").map{Int($0)!}
//    tree[nodes[0]]?.append(nodes[1])
//    tree[nodes[1]]?.append(nodes[0])
//}
//var increaseTree = [Int:[Int]]()
//var decreaseTree = [Int:[Int]]()
//tree.keys.forEach { increaseTree[$0] = tree[$0]?.sorted() }
//tree.keys.forEach { decreaseTree[$0] = tree[$0]?.sorted(by: >) }
//dfs(decreaseTree)
//print("")
//bfs(increaseTree)

// 2178 번, Silver 1
//let NM = readLine()!.split(separator: " ").map{Int($0)!}
//
//var tree = [[Int]]()
//for _ in 0..<NM[0] {
//    tree.append(Array(readLine()!).map{Int(String($0))!})
//}
//
//var willVisit = [(Int, Int)]()
//var length = Array(repeating: Array(repeating: 0, count: NM[1]), count: NM[0])
//length[0][0] = 1
//
//func bfs(_ r: Int, _ c: Int) {
//    tree[r][c] = 0
//    willVisit.append((r, c))
//
//    while !willVisit.isEmpty {
//        let node: (Int, Int) = willVisit.removeFirst()
//        for i in [(1, 0), (-1, 0), (0, 1), (0, -1)] {
//            let (nx, ny) = (node.0 + i.0, node.1 + i.1)
//            if nx >= 0 && nx < NM[0] && ny >= 0 && ny < NM[1] && tree[nx][ny] == 1 {
//                tree[nx][ny] = 0
//                willVisit.append((nx, ny))
//                length[nx][ny] = length[node.0][node.1] + 1
//            }
//        }
//    }
//}
//bfs(0, 0)
//print(length[NM[0]-1][NM[1]-1])

// 2606 번, Silver 3
//let node = Int(readLine()!)!
//let line = Int(readLine()!)!
//var tree: [Int : [Int]] = Dictionary(uniqueKeysWithValues: (1...node).map{($0, [])})
//for _ in 0..<line {
//    let nodes = readLine()!.split(separator: " ").map{Int($0)!}
//    tree[nodes[0]]?.append(nodes[1])
//    tree[nodes[1]]?.append(nodes[0])
//}
//func dfs(_ start: Int) -> Int {
//    var visitedQueue = [Int]()
//    var willVisitStack = [start]
//
//    while !willVisitStack.isEmpty {
//        let node = willVisitStack.removeLast()
//        if !visitedQueue.contains(node) {
//            visitedQueue.append(node)
//            willVisitStack += tree[node] ?? []
//        }
//    }
//
//    return visitedQueue.count - 1
//}
//print(dfs(1))

// 2667 번, Silver 1
//func dfs(_ x: Int, _ y: Int) -> Int {
//    var willVisit: [(Int, Int)] = [(x, y)]
//    var length = 1
//    tree[x][y] = 0
//
//    while !willVisit.isEmpty {
//        let node: (Int, Int) = willVisit.removeLast()
//        for i in [(-1, 0), (1, 0), (0, 1), (0, -1)] {
//            let (nx, ny) = (node.0 + i.0, node.1 + i.1)
//            if nx >= 0 && nx < n && ny >= 0 && ny < n && tree[nx][ny] == 1 {
//                tree[nx][ny] = 0
//                willVisit.append((nx, ny))
//                length += 1
//            }
//        }
//    }
//    return length
//}
//let n = Int(readLine()!)!
//var tree = [[Int]]()
//for _ in 0..<n {
//    tree.append(Array(readLine()!).map{Int(String($0))!})
//}
//var estateNum = [Int]()
//for i in 0..<n {
//    for j in 0..<n {
//        if tree[i][j] == 1 {
//            estateNum.append(dfs(i, j))
//        }
//    }
//}
//print(estateNum.count)
//estateNum.sorted().forEach{ print($0) }

// 7569 번, Gold 5
//func bfs(_ start: [(Int, Int, Int)]) -> Int {
//    var willVisit: [(Int, Int, Int)] = start
//
//    while !willVisit.isEmpty {
//        var willVisitThisTime = willVisit
//        let willVisitCount = willVisit.count
//        willVisit = []
//        for _ in 0..<willVisitCount {
//            let node = willVisitThisTime.removeLast()
//            for i in [(-1, 0, 0), (1, 0, 0), (0, -1, 0), (0, 1, 0), (0, 0, -1), (0, 0, 1)] {
//                let (nh, nn, nm) = (node.0 + i.0, node.1 + i.1, node.2 + i.2)
//                if nh >= 0 && nn >= 0 && nm >= 0 && nh < MNH[2] && nn < MNH[1] && nm < MNH[0] && box[nh][nn][nm] == 0 {
//                    box[nh][nn][nm] = 1
//                    willVisit.append((nh, nn, nm))
//                }
//            }
//        }
//        days += 1
//    }
//
//    return days
//}
//let MNH = readLine()!.split(separator: " ").map{Int($0)!}
//var box = [[[Int]]]()
//var start: [(Int, Int, Int)] = []
//var days = -1
//for _ in 0..<MNH[2] {
//    var mn = [[Int]]()
//    for _ in 0..<MNH[1] {
//        mn.append(readLine()!.split(separator: " ").map{Int($0)!})
//    }
//    box.append(mn)
//}
//if !box.joined().flatMap({$0}).contains(0) { print(0) }
//else {
//    for m in 0..<MNH[2] {
//        for n in 0..<MNH[1] {
//            for h in 0..<MNH[0] {
//                if box[m][n][h] > 0 {
//                    start.append((m, n, h))
//                }
//            }
//        }
//    }
//    days = bfs(start)
//    if box.joined().flatMap({$0}).contains(0) {
//        print(-1)
//    } else {
//        print(days)
//    }
//}

// 24479 번, Silver 2
// 1. 입력 정리
//let VER = readLine()!.split(separator: " ").map{Int($0)!}
//var tree = Dictionary(uniqueKeysWithValues: (1...VER[0]).map{($0, [Int]())})
//for _ in 0..<VER[1] {
//    let value = readLine()!.split(separator: " ").map{Int($0)!}
//    tree[value[0]]!.append(value[1])
//    tree[value[1]]!.append(value[0])
//}
//// 2. dfs 구현
//func dfs(start: Int) -> Dictionary<Int, Int> {
//    var visitedQueue = [Int:Int]()
//    var willVisitStack: [Int] = [start]
//    var count = 1
//
//    while !willVisitStack.isEmpty {
//        let node = willVisitStack.removeLast()
//        if visitedQueue[node] != nil { continue }
//
//        visitedQueue[node] = count
//        count += 1
//        willVisitStack += tree[node]!.sorted(by: >)
//    }
//
//    return visitedQueue
//}
//
//// 3. 결과 출력
//let visitedQueue = dfs(start: VER[2])
//for i in 1...VER[0] {
//    print(visitedQueue[i] ?? 0)
//}

// 24480 번, Silver 2
//let NLS = readLine()!.split(separator: " ").map{Int($0)!}
//var tree = Dictionary(uniqueKeysWithValues: (1...NLS[0]).map{($0, [Int]())})
//for _ in 0..<NLS[1] {
//    let line = readLine()!.split(separator: " ").map{Int($0)!}
//    tree[line[0]]!.append(line[1])
//    tree[line[1]]!.append(line[0])
//}
//func dfs(_ start: Int) -> Dictionary<Int, Int> {
//    var visitedQueue = [Int:Int]()
//    var willVisitStack = [start]
//    var count = 1
//
//    while !willVisitStack.isEmpty {
//        let node = willVisitStack.removeLast()
//        if visitedQueue[node] != nil { continue }
//
//        visitedQueue[node] = count
//        count += 1
//        willVisitStack += tree[node]!.sorted()
//    }
//
//    return visitedQueue
//}
//let visitedQueue = dfs(NLS[2])
//for i in 1...NLS[0] {
//    print(visitedQueue[i] ?? 0)
//}

// 24444 번, Silver 2
//let NLS = readLine()!.split(separator: " ").map{Int($0)!}
//var tree = Dictionary(uniqueKeysWithValues: (1...NLS[0]).map{($0, [Int]())})
//
//for _ in 0..<NLS[1] {
//    let line = readLine()!.split(separator: " ").map{Int($0)!}
//    tree[line[0]]!.append(line[1])
//    tree[line[1]]!.append(line[0])
//}
//
//func bfs(_ start: Int) -> Dictionary<Int, Int> {
//    var visitedQueue = [Int:Int]()
//    var willVisitQueue = [start]
//    var count = 1
//    var index = 0
//
//    while willVisitQueue.count - 1 >= index {
//        let node = willVisitQueue[index]
//        index += 1
//        if visitedQueue[node] != nil { continue }
//
//        visitedQueue[node] = count
//        count += 1
//        willVisitQueue += tree[node]!.sorted()
//    }
//
//    return visitedQueue
//}
//
//let visited = bfs(NLS[2])
//for i in 1...NLS[0] {
//    print(visited[i] ?? 0)
//}

// 24445 번, Silver 2
//let NLS = readLine()!.split(separator: " ").map{Int($0)!}
//var tree = Dictionary(uniqueKeysWithValues: (1...NLS[0]).map{($0, [Int]())})
//
//for _ in 0..<NLS[1] {
//    let line = readLine()!.split(separator: " ").map{Int($0)!}
//    tree[line[0]]!.append(line[1])
//    tree[line[1]]!.append(line[0])
//}
//
//func bfs(_ start: Int) -> Dictionary<Int, Int> {
//    var visitedQueue = [Int:Int]()
//    var willVisitQueue = [start]
//    var count = 1
//    var index = 0
//    
//    while willVisitQueue.count - 1 >= index {
//        let node = willVisitQueue[index]
//        index += 1
//        if visitedQueue[node] != nil { continue }
//        
//        visitedQueue[node] = count
//        count += 1
//        willVisitQueue += tree[node]!.sorted(by: >)
//    }
//    
//    return visitedQueue
//}
//
//let visited = bfs(NLS[2])
//for i in 1...NLS[0] {
//    print(visited[i] ?? 0)
//}

// 1697 번, Silver 1
//struct Queue {
//    var q = [Int]()
//    
//    mutating func push(_ item: Int) {
//        q.append(item)
//    }
//    
//    mutating func pop() -> Int {
//        q.reverse()
//        if let a = q.popLast() {
//            q.reverse()
//            return a
//        }
//        return 0
//    }
//    
//    func isEmpty() -> Bool {
//        return q.isEmpty
//    }
//}
//
//func bfs(_ s: Int, _ e: Int) -> Int {
//    var queue = Queue()
//    queue.push(s)
//    
//    while !queue.isEmpty() {
//        let node = queue.pop()
//        if node == e { break }
//        
//        if node > 0 && !visited[node-1] {
//            queue.push(node-1)
//            visited[node-1] = true
//            depth[node-1] = depth[node] + 1
//        }
//        
//        if node < 100000 && !visited[node+1] {
//            queue.push(node+1)
//            visited[node+1] = true
//            depth[node+1] = depth[node] + 1
//        }
//        
//        if node * 2 < 100001 && !visited[2*node] {
//            queue.push(2*node)
//            visited[2*node] = true
//            depth[2*node] = depth[node] + 1
//        }
//    }
//    return depth[k]
//}
//
//let nk = readLine()!.split(separator: " ").map{Int($0)!}
//let n = nk[0], k = nk[1]
//var visited = Array(repeating: false, count: 100001)
//var depth = Array(repeating: 0, count: 100001)
//print(bfs(n, k))

// 1012 번, Silver 2
//let t = Int(readLine()!)!
//var farm = [[Bool]]()
//var M = 0, N = 0
//for _ in 0..<t {
//    let mnk = readLine()!.split(separator: " ").map{Int($0)!}
//    M = mnk[0]
//    N = mnk[1]
//    farm = Array(repeating: Array(repeating: false, count: M), count: N)
//    var count = 0
//
//    for _ in 0..<mnk[2] {
//        let xy = readLine()!.split(separator: " ").map{Int($0)!}
//        farm[xy[1]][xy[0]] = true
//    }
//
//    for y in 0..<N {
//        for x in 0..<M {
//            if farm[y][x] {
//                dfs(y, x)
//                count += 1
//            }
//        }
//    }
//
//    print(count)
//}
//
//private func dfs(_ y: Int, _ x: Int) {
//    if farm[y][x] {
//        farm[y][x] = false
//        for (dy, dx) in [(-1, 0), (1, 0), (0, 1), (0, -1)] {
//            if 0 <= y+dy && y+dy < N && 0 <= x+dx && x+dx < M && farm[y+dy][x+dx] {
//                dfs(y+dy, x+dx)
//            }
//        }
//    }
//}

// 11274 번, Silver 2
//let NM = readLine()!.split(separator: " ").map{Int($0)!}
//var dic: [Int:[Int]] = Dictionary(uniqueKeysWithValues: (1...NM[0]).map{($0, [])})
//var count = 0
//for _ in 0..<NM[1] {
//    let UV = readLine()!.split(separator: " ").map{Int($0)!}
//    dic[UV[0]]?.append(UV[1])
//    dic[UV[1]]?.append(UV[0])
//}
//for i in 1...NM[0] {
//    if let dicI = dic[i] {
//        if !dicI.isEmpty {
//            dfs(i)
//        }
//        count += 1
//    }
//}
//print(count)
//private func dfs(_ s: Int) {
//    var didVisit = [Int]()
//    var willVisit: [Int] = [s]
//
//    while !willVisit.isEmpty {
//        let node = willVisit.removeLast()
//        if didVisit.contains(node) { continue }
//
//        didVisit.append(node)
//        willVisit += dic[node] ?? []
//    }
//
//    for node in didVisit {
//        dic[node] = nil
//    }
//}
