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

//var num: Int = 626331
//var count: Int = 0
//
//if num == 1 {
//    print(1)
//}
//while count <= 500 {
//    if num % 2 == 0 {
//        num = num / 2
//    } else {
//        num = (num * 3) + 1
//    }
//
//    count += 1
//
//    if num == 1 {
//        print(count)
//        break
//    }
//
//    if count > 500 {
//        print(-1)
//        break
//    }
//
//
//}


// MARK: - LV1 최대공약수와 최소공배수


//func gcd(_ a: Int, _ b: Int) -> Int {
//    let k: Int = a % b
//    return k == 0 ? min(a, b) : gcd(b, k)
//}
//
//func lcm(_ a: Int, _ b: Int) -> Int {
//    return a * b / gcd(a, b)
//}
//
//func solution(_ a: Int, _ b: Int) -> [Int] {
//    return [gcd(a, b), lcm(a, b)]
//}
//
//print(solution(2, 5))

// MARK: - LV1 짝수와 홀수

//func solution(_ num: Int) -> String {
//    return num % 2 == 0 ? "Even" : "Odd"
//
//}

// MARK: - LV1 제일 작은 수 제거하기

//func solution(_ arr: [Int]) -> [Int] {
//    var newArr = arr
//    newArr.remove(at: newArr.firstIndex(of: newArr.min()!)!)
//    return newArr.count == 0 ? [-1] : newArr
//}

// MARK: - LV1 정수 제곱근 판별

//func solution(_ n: Int64) -> Int64 {
//    let result = Int64(sqrt(Double(n)))
//    print(type(of: result * result == n ? (result + 1) * (result + 1) : -1))
//    return result * result == n ? (result + 1) * (result + 1) : -1
//}
//
//print(solution(121))

// MARK: - LV1 정수 내림차순으로 배치하기

//func solution(_ n: Int64) -> Int64 {
//
//    return Int64(String(n).map{String($0)}.sorted(by: >).joined(separator: ""))!
//}
//
//print(solution(123))

// MARK: - LV1 자연수 뒤집어 배열로 만들기

//func solution(_ n: Int64) -> [Int] {
//    return String(n).map{Int(String($0))!}.reversed()
//}
//
//print(solution(12345))

// MARK: - LV1 자릿수 더하기

//func solution(_ n: Int) -> Int {
//
//    return String(n).map{Int(String($0))!}.reduce(0, +)
//}
//
//print(solution(987))

// MARK: - LV1 이상한 문자 만들기

//func solution(_ s:String) -> String {
//    var k = s.components(separatedBy: " ")
//    if k.count == 0 {
//        return ""
//    } else {
//        for i in 0..<k.count {
//            var result: String = ""
//            for j in 0..<k[i].count {
//                var text: String = ""
//                let index = k[i].index(k[i].startIndex, offsetBy: j)
//                if j % 2 == 0 {
//                    text = String(k[i][index].uppercased())
//                } else {
//                    text = String(k[i][index].lowercased())
//                }
//                result += text
//            }
//            k[i] = result
//        }
//
//        return k.joined(separator: " ")
//    }
//
//
//}
//print(solution("abc abc"))


// MARK: - LV1 약수의 합

//func solution(_ n:Int) -> Int {
//
//    var list: [Int] = []
//    if n == 0 {
//        return 0
//    } else {
//        for i in 1...n {
//            if n % i == 0 {
//                list.append(i)
//            }
//        }
//
//        return list.reduce(0, +)
//    }
//
//}
//
//print(solution(12))
//
//func solution2(_ n: Int) -> Int {
//    guard n != 0 else { return 0 }
//    return Array(1...n).filter{n % $0 == 0}.reduce(0, +)
//}
//
//print(solution2(12))

// MARK: - LV1 문자열을 정수로 바꾸기

//func solution(_ s: String) -> Int {
//
//    return Int(s)!
//}
//
//print(solution("-1234"))

// MARK: - LV1 수박수박수박수박수박수?

//func solution(_ n: Int) -> String {
//    return String(repeating: "수박", count: n / 2)+"\(n % 2 == 0 ? "" : "수")"
//}
//
//print(solution(5))

// MARK: - LV1 소수 찾기

//func solution(_ n: Int) -> Int {
//    var numberArray = Array(repeating: 0, count: n+1)
//    var count = 0
//
//    for i in 2...n {
//        if numberArray[i] == 0 {
//            count += 1
//        }
//
//        for i in stride(from: i, through: n, by: i) {
//            numberArray[i] = 1
//        }
//    }
//    return count
//}
//
//print(solution(5))

// MARK: - LV1 서울에서 김서방 찾기

//func solution(_ seoul: [String]) -> String {
//    return "김서방은 \(seoul.firstIndex(of: "Kim")!)에 있다"
//}
//
//print(solution(["Jane", "Kim"]))

// MARK: - LV1 문자열 다루기 기본

//func solution(_ s: String) -> Bool {
////    if s.count == 4 || s.count == 6 {
////        return s.map{Int(String($0))}.contains(nil) ? false : true
////    } else {
////        return false
////    }
//    return (Int(s) != nil && (s.count == 4 || s.count == 6)) ? true : false
//}
//
//print(solution("a234"))

// MARK: - LV1 문자열 내림차순으로 정렬

//func solution(_ s: String) -> String {
//    // 방법 1
//    // return s.map{String($0)}.sorted(by: >).joined(separator: "")
//
//    return String(s.sorted(by: >))
//}
//solution("Zbcdefg")

// MARK: - LV1 문자열 내 p와 y의 개수

//func solution(_ s: String) -> Bool {
//    return s.lowercased().filter{$0 == "p"}.count == s.lowercased().filter{$0 == "y"}.count
//}
//
//print(solution("pPoooyY"))

// MARK: - LV1 두 정수 사이의 합

//func solution(_ a: Int, _ b: Int) -> Int64 {
//    return Int64(Array(a > b ? b...a : a...b).reduce(0, +))
//}
//print(solution(2, 5))
//print(Array(2...5))

// MARK: - LV1 나누어 떨어지는 숫자 배열

//func solution(_ arr: [Int], _ divisor: Int) -> [Int] {
////    var result: [Int] = []
////    arr.map {
////        if $0 % divisor == 0 {
////            result.append($0)
////        }
////    }
////
////    if result.count == 0 {
////        return [-1]
////    } else {
////        return result.sorted()
////    }
//
//    let result = arr.filter{$0 % divisor == 0}.sorted()
//    return result == [] ? [-1] : result
//}
//
//print(solution([5, 9, 7, 10], 5))

// MARK: - LV1 가운데 글자 가져오기

//func solution(_ s: String) -> String {
//
//    if s.count % 2 != 0 {
//        return String(Array(s)[s.count / 2])
//    } else {
//        return String(Array(s)[(s.count / 2) - 1 ... s.count / 2])
//    }
//
//}
//
//print(solution("qwer"))

// MARK: - LV1 부족한 금액 계산하기

func solution(_ price: Int, _ money: Int, _ count: Int) -> Int64 {
    var arr: [Int] = []
    for i in 1...count {
        arr.append(price * i)
    }
    
    return money - arr.reduce(0, +) < 0 ? Int64(arr.reduce(0, +) - money) : 0
}

print(solution(3, 20, 4))
