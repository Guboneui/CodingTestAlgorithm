//
//  main.swift
//  CodingTestAlgorithm
//
//  Created by 구본의 on 2022/01/04.
//

import Foundation

// MARK: - LV1 직사각형 별찍기
let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

// Array joined()를 통한 풀이
// for _ in 0..<b {
//     print(Array(repeating: "*", count: a).joined())
// }

// print의 terminator 디폴트 값 변경을 통한 풀이
for _ in 1...b {
    for _ in 1...a {
        print("*", terminator: "")
    }
    print("")
}
