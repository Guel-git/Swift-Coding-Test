//
//  main.swift
//  Baekjoon
//
//  Created by 김유나 on 2023/08/14.
//

// 선택 정렬
//import Foundation
//let array = [2, 4, 3, 5, 1, 6]
//let sortedArray = selectionSort(array)
//print(array, sortedArray)
//
//private func selectionSort(_ arr: [Int]) -> [Int] {
//    var array = arr
//    for i in 0..<array.count-1 {
//        var min = array[i]
//        var index = i
//        for j in i+1..<array.count {
//            if min > array[j] {
//                min = array[j]
//                index = j
//            }
//        }
//        array.swapAt(i, index)
//    }
//    return array
//}

// 삽입 정렬
//import Foundation
//let start = DispatchTime.now()
//let array = [2, 3, 4, 6, 5, 1]
//let sortedArray = insertionSort(array)
//print(array, sortedArray)
//
//private func insertionSort(_ arr: [Int]) -> [Int] {
//    var array = arr
//
//    for j in 1..<array.count {
//        for i in 0..<j {
//            if array[i] > array[j] {
//                array.insert(array[j], at: i)
//                array.remove(at: j+1)
//                continue
//            }
//        }
//    }
//    return array
//}
//let end = DispatchTime.now()
//let time = end.uptimeNanoseconds - start.uptimeNanoseconds
//print(time)

// 버블 정렬
//import Foundation
//let start = DispatchTime.now()
//let array = [2, 3, 4, 6, 5, 1]
//let sortedArray = bubbleSort(array)
//print(array, sortedArray)
//
//private func bubbleSort(_ arr: [Int]) -> [Int] {
//    var array = arr
//    var left = array.count - 1
//
//    while (left > -1) {
//        for i in 0..<left {
//            if array[i] > array[i+1] {
//                array.swapAt(i, i+1)
//            }
//        }
//        left -= 1
//    }
//    return array
//}
//let end = DispatchTime.now()
//let timeElapsed = end.uptimeNanoseconds - start.uptimeNanoseconds
//print(timeElapsed)

// 합병 정렬
//let array = [2, 3, 4, 6, 5, 1, 0]
//let sortedArray = mergeSort(array)
//print(sortedArray)
//
//private func mergeSort(_ arr: [Int]) -> [Int] {
//    guard arr.count > 1 else { return arr }
//
//    let m = arr.count / 2
//    let left = mergeSort(Array(arr[0..<m]))
//    let right = mergeSort(Array(arr[m..<arr.count]))
//
//    return merge(left, right)
//}
//
//private func merge(_ left: [Int], _ right: [Int]) -> [Int] {
//    var i = 0
//    var j = 0
//    var final = [Int]()
//
//    while (i < left.count && j < right.count) {
//        if left[i] < right[j] {
//            final.append(left[i])
//            i += 1
//        } else {
//            final.append(right[j])
//            j += 1
//        }
//    }
//
//    right[j..<right.count].forEach { final.append($0) }
//    left[i..<left.count].forEach { final.append($0) }
//
//    return final
//}

// 퀵 정렬
//let array = [2, 3, 4, 6, 5, 1, 0]
//let sortedArray = quickSort(array)
//print(sortedArray)
//
//private func quickSort(_ arr: [Int]) -> [Int] {
//    guard let first = arr.first, arr.count > 1 else { return arr }
//    var left = [Int]()
//    var right = [Int]()
//
//    for i in 1..<arr.count {
//        if arr[i] < first {
//            left.append(arr[i])
//        } else {
//            right.append(arr[i])
//        }
//    }
//
//    return quickSort(left) + [first] + quickSort(right)
//}


