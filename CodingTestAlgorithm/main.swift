//
//  main.swift
//  CodingTestAlgorithm
//
//  Created by 구본의 on 2022/01/04.
//

import Foundation

// MARK: - LV1 직사각형 별찍기

//let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
//let (a, b) = (n[0], n[1])
//
//// Array joined()를 통한 풀이
//// for _ in 0..<b {
////     print(Array(repeating: "*", count: a).joined())
//// }
//
//// print의 terminator 디폴트 값 변경을 통한 풀이
//for _ in 1...b {
//    for _ in 1...a {
//        print("*", terminator: "")
//    }
//    print("")
//}

// MARK: - LV1 행렬의 덧셈

//let arr1 = [[1,2],[2,3]]
//let arr2 = [[3,4],[5,6]]
//
//var arr3: [[Int]] = Array(repeating: Array(repeating: 0, count: arr1[0].count), count: arr1.count)
//
//for i in 0..<arr3.count {
//    for j in 0..<arr3[0].count {
//        arr3[i][j] = arr1[i][j] + arr2[i][j]
//    }
//}
//print(arr3)
//
//let k = zip(arr1, arr2).map{zip($0, $1).map{$0 + $1}}
//print(k)
//
// func solution1(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
//
//     return zip(arr1, arr2).map{zip($0, $1).map{$0 + $1}}
// }
//
//func solution2(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
//    var newArr: [[Int]] = Array(repeating: Array(repeating: 0, count: arr1[0].count), count: arr1.count)
//    for i in 0..<newArr.count {
//        for j in 0..<newArr[0].count {
//            newArr[i][j] = arr1[i][j] + arr2[i][j]
//        }
//    }
//
//    return newArr
//}

// MARK: - LV1 평균 구하기

//let arr = [1, 2, 3, 4]
//
//var k = arr.reduce(0, +)
//print(Double(k) / Double(arr.count))

// MARK: - LV1 x만큼 간격이 있는 n개의 숫자

//let x = -2
//let n = 5
//
//var newArr = Array(repeating: 0, count: n)
//for i in 1...n {
//    newArr[i-1] = x*(i)
//}
//print(newArr)
//
//print(Array(1...5).map{ Int64($0 * x)})

// MARK: - LV1 핸드폰 번호 가리기

//let phoneNum: String = "01033334444"
//print(String(repeating: "*", count: phoneNum.count - 4) + phoneNum.suffix(4))

// MARK: - LV1 하샤드 수

//let x: Int = 13
//var a: Int = 0
//print((x % String(x).map { Int(String($0))! }.reduce(0, +) == 0) ? true : false)

// MARK: - LV1 콜라츠 추측

var num: Int = 626331
var count: Int = 0

if num == 1 {
    print(1)
}
while count <= 500 {
    if num % 2 == 0 {
        num = num / 2
    } else {
        num = (num * 3) + 1
    }
    
    count += 1
    
    if num == 1 {
        print(count)
        break
    }
    
    if count > 500 {
        print(-1)
        break
    }
    
    
}
