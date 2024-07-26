//
//  Level3.swift
//  Baekjoon
//
//  Created by 김유나 on 2024/07/26.
//

// MARK: - 베스트 앨범, 2024.07.26
//import Foundation
//
//func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
//    var genreDict = [String:[Int]](), result = [Int]()
//    for i in 0..<genres.count {
//        genreDict[genres[i], default: [0]][0] += plays[i]
//        genreDict[genres[i]]!.append(i)
//    }
//    let sortedGenre = genreDict.sorted { $0.value[0] > $1.value[0] }
//    for (_, v) in sortedGenre {
//        let onlyNum = v[1..<v.count]
//        let sortedPlays = onlyNum.sorted { plays[$0] == plays[$1] ? $0 < $1 : plays[$0] > plays[$1] }
//        result += sortedPlays.count >= 2 ? sortedPlays[0...1] : sortedPlays[0..<sortedPlays.count]
//    }
//    return result
//}
