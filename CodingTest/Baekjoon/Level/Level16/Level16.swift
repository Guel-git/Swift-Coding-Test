//
//  main.swift
//  Baekjoon
//
//  Created by 김유나 on 2023/08/26.
//

// MARK: - 새로 배운 것
// removeFirst는 시간복잡도가 O(n)임 > 시간 초과
// 방법 1) reversed() 사용해서 removeLast 사용 후 다시 reversed() (reversed()는 O(1))
// 방법 2) 포인터를 사용해 시작 위치를 이동 -> 빠르지만 스택(배열)이 계속 늘어남
// if (조건a) && (조건b) 에서 a와 b의 순서도 중요함 (배열 index 관련된 거라면 더더욱 조심)
// dropLast()는 마지막 요소를 제거하고 나머지를 반환하는 반면,
// popLast()와 removeLast()는 마지막 요소를 제거하고 제거한 요소를 반환함
// popLast()는 옵셔널에 쌓여 반환되지만, removeLast()는 그렇지 않음
// 빈 배열에 removeLast()를 할 경우 컴파일 에러 발생

// 28278 번, Silver 4
//let n = Int(readLine()!)!
//var arr = [Int]()
//for _ in 0..<n {
//    let instruct = readLine()!.split(separator: " ").map{Int($0)!}
//    switch instruct[0] {
//    case 1:
//        arr.append(instruct[1])
//        break
//    case 2:
//        print(arr.popLast() ?? -1)
//        break
//    case 3:
//        print(arr.count)
//        break
//    case 4:
//        print(arr.isEmpty ? 1 : 0)
//        break
//    case 5:
//        print(arr.isEmpty ? -1 : arr[arr.index(before: arr.endIndex)])
//        break
//    default:
//        break
//    }
//}

// 10773 번, Silver 4
//let n = Int(readLine()!)!
//var arr = [Int]()
//for _ in 0..<n {
//    let a = Int(readLine()!)!
//    if a == 0 {
//        arr.removeLast()
//    } else {
//        arr.append(a)
//    }
//}
//print(arr.reduce(0, +))

// 9012 번, Silver 4
//func validate() -> Bool {
//    var arr = [Character]()
//    let a = readLine()!
//    for i in a {
//        if i == "(" {
//            arr.append(i)
//        } else {
//            if arr.isEmpty {
//                return false
//            }
//            arr.removeLast()
//        }
//    }
//    return arr.isEmpty
//}
//let n = Int(readLine()!)!
//for _ in 0..<n { print(validate() ? "YES" : "NO") }

// 4949 번, Silver 4
//func validate(_ a: String) -> Bool {
//    var arr = [Character]()
//    for i in a {
//        switch i {
//        case "(", "[":
//            arr.append(i)
//            break
//        case ")":
//            if arr.isEmpty || arr[arr.index(before: arr.endIndex)] != "(" { return false }
//            arr.removeLast()
//            break
//        case "]":
//            if arr.isEmpty || arr[arr.index(before: arr.endIndex)] != "[" { return false }
//            arr.removeLast()
//            break
//        default:
//            break
//        }
//    }
//    return arr.isEmpty
//}
//while true {
//    let a = readLine()!
//    if a == "." { break }
//    print(validate(a) ? "yes" : "no")
//}

// 12789 번, Silver 3
//func isInOrder(_ s: [Int]) -> Bool {
//    for n in s {
//        if a != n { return false }
//        a += 1
//    }
//    return true
//}
//let n = Int(readLine()!)!
//let nums = readLine()!.split(separator: " ").map{Int($0)!}
//var i = 0
//var a = 1
//var stack = [Int]()
//while i < n {
//    if nums[i] == a {
//        a += 1
//        i += 1
//    } else if !stack.isEmpty && stack[stack.endIndex - 1] == a {
//        stack.removeLast()
//        a += 1
//    } else {
//        stack.append(nums[i])
//        i += 1
//    }
//}
//if !stack.isEmpty {
//    print(isInOrder(stack.reversed()) ? "Nice" : "Sad")
//} else {
//    print("Nice")
//}

// 2164 번, Silver 4
//let n = Int(readLine()!)!
//var arr = Array(1...n)
//var i = 0
//var f = true
//while i != arr.count {
//    if !f { arr.append(arr[i]) }
//    i += 1
//    f.toggle()
//}
//print(arr[i-1])

// 11866 번, Silver 5
//let a = readLine()!.split(separator: " ").map{Int($0)!}
//var arr = Array(1...a[0])
//var i = a[1] - 1
//var answer = "<"
//while arr.count > 0 {
//    answer += "\(arr[i]), "
//    arr.remove(at: i)
//    i += a[1] - 1
//    while i >= arr.count && !arr.isEmpty {
//        i = i - arr.count
//    }
//}
//answer.removeLast(2)
//answer += ">"
//print(answer)

// 28279 번, Silver 4
//let n = Int(readLine()!)!
//var arr = [Int]()
//var answer = ""
//for _ in 0..<n {
//    let a = readLine()!.split(separator: " ").map{Int($0)!}
//    switch a[0] {
//    case 1:
//        arr = arr.reversed()
//        arr.append(a[1])
//        arr = arr.reversed()
//        break
//    case 2:
//        arr.append(a[1])
//        break
//    case 3:
//        if arr.isEmpty {
//            answer += "-1\n"
//        } else {
//            arr = arr.reversed()
//            answer += "\(arr.removeLast())\n"
//            arr = arr.reversed()
//        }
//        break
//    case 4:
//        answer += arr.isEmpty ? "-1\n" : "\(arr.removeLast())\n"
//        break
//    case 5:
//        answer += "\(arr.count)\n"
//        break
//    case 6:
//        answer += arr.isEmpty ? "1\n" : "0\n"
//        break
//    case 7:
//        answer += arr.isEmpty ? "-1\n" : "\(arr[0])\n"
//        break
//    case 8:
//        answer += arr.isEmpty ? "-1\n" : "\(arr[arr.endIndex - 1])\n"
//        break
//    default: continue
//    }
//}
//print(answer)
