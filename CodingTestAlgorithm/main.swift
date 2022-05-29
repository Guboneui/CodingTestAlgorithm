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

//func solution(_ price: Int, _ money: Int, _ count: Int) -> Int64 {
//    var arr: [Int] = []
//    for i in 1...count {
//        arr.append(price * i)
//    }
//
//    return money - arr.reduce(0, +) < 0 ? Int64(arr.reduce(0, +) - money) : 0
//}
//
//print(solution(3, 20, 4))

// MARK: - LV1 나머지가 1이 되는 수 찾기

//func solution(_ n: Int) -> Int {
//
//    var result: [Int] = []
//    for i in 2...n-1 {
//        if (n-1) % i == 0 {
//            result.append(i)
//        }
//    }
//    return result[0]
//}
//
//solution(12)

// MARK: - LV1 최소직사각형

//func solution(_ sizes: [[Int]]) -> Int {
//    var arr: [[Int]] = sizes
//    for i in 0..<sizes.count {
//        var k = sizes[i]
//        var first = k[0]
//        var second = k[1]
//        if first < second {
//            arr[i][0] = second
//            arr[i][1] = first
//        }
//
//    }
//    print(arr)
//
//    var result = arr.flatMap{$0}
//    var width: [Int] = []
//    var height: [Int] = []
//
//    for i in 0..<result.count {
//        if i % 2 == 0 {
//            width.append(result[i])
//        } else {
//            height.append(result[i])
//        }
//    }
//
//
//
//    return width.max()! * height.max()!

//    let arr = sizes.map{$0.sorted()}
//    return arr.map{$0[0]}.max()! * arr.map{$0[1]}.max()!
//}
//
//print(solution([[60, 50], [30, 70], [60, 30], [80, 40]]))

// MARK: - LV1 두 개 뽑아서 더하기

//func solution(_ numbers: [Int]) -> [Int] {
//    var result: [Int] = []
//    for i in 0..<numbers.count{
//        for j in i+1..<numbers.count{
//            result.append(numbers[i] + numbers[j])
//        }
//    }
//    return Set(result).sorted()
//}
//
//print(Array(5..<5))


// MARK: - LV1 2016년

//func solution(_ a: Int, _ b: Int) -> String {
//    let month: [Int] = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
//    let day: [String] = ["THU", "FRI", "SAT", "SUN", "MON","TUE", "WED"]
////
////    if a == 1 {
////        return day[b%7]
////    } else if a == 2{
////        return day[(31 + b) % 7]
////    } else {
////        var result = 0
////        for i in 0...a-2 {
////            result += month[i]
////        }
////        return day[(result + b) % 7]
////    }
//
//    let totalDay = month[0..<a-1].reduce(0, +) + b
//    return day[totalDay%7]
//}
//
//print(solution(5, 24))

// MARK: - LV1 3진법 뒤집기

//func solution(_ n: Int) -> Int {
//    var result = String(n, radix: 3)
//    var answer = Int(String(result.reversed()), radix: 3)!
//    return answer
//}
//
//print(solution(45))

// MARK: - LV1 약수의 개수와 덧셈

//func solution(_ left: Int, _ right: Int) -> Int {
//    var result = 0
//    for i in left...right{
//        var arr: [Int] = []
//        for j in 1...i {
//            if i%j == 0 {
//                arr.append(j)
//            }
//        }
//        if arr.count % 2 == 0 {
//            result += i
//        } else {
//            result -= i
//        }
//    }
//
//    return result

//return Array(left...right).map{ i in (1...i).filter{ i % $0 == 0}.count%2 == 0 ? i : -i}.reduce(0, +)

//}

//print(solution(13, 17))
//print(Array(1...3))

// MARK: - LV1 모의고사

//func solution(_ answers: [Int]) -> [Int] {
//    let first: [Int] = [1, 2, 3, 4, 5]
//    let second: [Int] = [2, 1, 2, 3, 2, 4, 2, 5]
//    let third: [Int] = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
//
//    var result: [Int] = [0, 0, 0]
//
//    answers.enumerated().forEach { index, value in
//        if first[index % first.count] == value {
//            result[0] += 1
//        }
//
//        if second[index % second.count] == value {
//            result[1] += 1
//        }
//
//        if third[index % third.count] == value {
//            result[2] += 1
//        }
//    }
//
//    print(result)
//
//    var totalResult: [Int] = []
//    result.enumerated().forEach { index, value in
//        if value == result.max() ?? 0 {
//            totalResult.append(index + 1)
//        }
//    }
//    print(totalResult)
//
//    return totalResult
//}
//
//solution([1, 3, 2, 4, 2])

// MARK: - LV1 K번째수

//func solution(_ array: [Int], _ commands: [[Int]]) -> [Int] {
//    var result: [Int] = []
//    for arr in commands {
//        var i = arr[0]
//        var j = arr[1]
//        var k = arr[2]
//        result.append(array[(i-1)...(j-1)].sorted()[k-1])
//    }
//    return result
//}
//
//solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]])

// MARK: - LV1 소수 만들기
//func solution(_ nums: [Int]) -> Int {
//    var arr: [Int] = []
//    for i in 0..<nums.count - 2 {
//        for j in i+1..<nums.count {
//            for k in j+1..<nums.count {
//                arr.append(nums[i] + nums[j] + nums[k])
//            }
//        }
//    }
//    var result = 0
//    for num in arr  {
//        var k: [Int] = []
//        for i in 2...num {
//
//            if num % i == 0 {
//                k.append(i)
//            }
//        }
//
//        if k.count == 1 {
//            result += 1
//        }
//    }
//    return result
//
//}
//
//print(solution([1,2,3,4]))

// MARK: - LV1 내적
//func solution(_ a:[Int], _ b:[Int]) -> Int {
//    return zip(a, b).map(*).reduce(0, +)
//}

// MARK: - LV1 음양 더하기

//func solution(_ absolutes: [Int], _ signs: [Bool]) -> Int {
////    var result: [Int] = []
////    for i in 0..<absolutes.count {
////        if signs[i] == true {
////            result.append(absolutes[i])
////        } else {
////            result.append(absolutes[i] * (-1))
////        }
////    }
////    return result.reduce(0, +)
//    return (0..<absolutes.count).map{ signs[$0] ? absolutes[$0] : -absolutes[$0]}.reduce(0, +)
//}

// MARK: - LV1 없는 숫자 더하기

//func solution(_ numbers: [Int]) -> Int {
//
//    //return 55 - numbers.reduce(0, +)
//    return (0...9).filter{!numbers.contains($0)}.reduce(0, +)
//}

// MARK: - LV1 신규 아이디 추천

//func solution(_ new_id: String) -> String {
//    var text = new_id.lowercased()
//
//    var result: String = ""
//
//    for i in text {
//        if i.isLetter || i.isNumber || i == "." || i == "-" || i == "_" {
//            result.append(i)
//        }
//    }
//
//    while result.contains("..") {
//        result = result.replacingOccurrences(of: "..", with: ".")
//    }
//
//
//    while result.hasPrefix(".") {
//        result.removeFirst()
//    }
//
//    while result.hasSuffix(".") {
//        result.removeLast()
//    }
//
//    if result == "" {
//        result = "a"
//    }
//
//    if result.count > 15 {
//        let index = result.index(result.startIndex, offsetBy: 15)
//        result = String(result[result.startIndex..<index])
//        if result.hasSuffix(".") {
//            result.removeLast()
//        }
//    }
//
//    if result.count < 3 {
//        while result.count != 3 {
//            result += String(result.last!)
//        }
//    }
//
//
//    return result
//
//}
//print(solution("............"))


// MARK: - LV1 숫자 문자열과 영단어
//func solution(_ s: String) -> Int {
////    var result: String = s
////    result = result.replacingOccurrences(of: "one", with: "1")
////    result = result.replacingOccurrences(of: "two", with: "2")
////    result = result.replacingOccurrences(of: "three", with: "3")
////    result = result.replacingOccurrences(of: "four", with: "4")
////    result = result.replacingOccurrences(of: "five", with: "5")
////    result = result.replacingOccurrences(of: "six", with: "6")
////    result = result.replacingOccurrences(of: "seven", with: "7")
////    result = result.replacingOccurrences(of: "eight", with: "8")
////    result = result.replacingOccurrences(of: "nine", with: "9")
////
////
////
////    print(result)
////    return Int(result)!
//
//    let arr = ["zero","one","two","three","four","five","six","seven","eight","nine"]
//    var result = s
//    for i in 0..<arr.count {
//        result = result.replacingOccurrences(of: arr[i], with: String(i))
//    }
//       return Int(result)!
//}
//
//print(solution("one4seveneight"))

// MARK: - LV1 로또의 최고 순위와 최저 순위

//func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
////    var result: [Int] = Array(repeating: 0, count: 2)
////
////    var count = 0
////    var zeroCount = 0
////    for i in 0..<lottos.count {
////        if win_nums.contains(lottos[i]) {
////            count += 1
////        }
////        if lottos[i] == 0 {
////            zeroCount += 1
////        }
////    }
////
////    if count + zeroCount == 6 {
////        result[0] = 1
////    } else if count + zeroCount == 5 {
////        result[0] = 2
////    } else if count + zeroCount == 4 {
////        result[0] = 3
////    } else if count + zeroCount == 3 {
////        result[0] = 4
////    } else if count + zeroCount == 2 {
////        result[0] = 5
////    } else {
////        result[0] = 6
////    }
////
////    if count == 6 {
////        result[1] = 1
////    } else if count == 5 {
////        result[1] = 2
////    } else if count == 4 {
////        result[1] = 3
////    } else if count == 3 {
////        result[1] = 4
////    } else if count == 2 {
////        result[1] = 5
////    } else {
////        result[1] = 6
////    }
////
////    return result
//
//    let zeroCount = lottos.filter{$0 == 0}.count
//    let winCount = win_nums.filter{lottos.contains($0)}.count
//
//    return [min(7-winCount-zeroCount, 6), min(7-winCount,6)]
//}
//
//print(solution([0,0,0,0,0,0], [38, 19, 20, 40, 15, 25]))

// MARK: - LV1 예산

//func solution(_ d: [Int], _ budget: Int) -> Int {
//    var result = 0
//    var arr = d.sorted()
//    var money = budget
//
//    for i in arr {
//        if money >= i {
//            money -= i
//            result += 1
//        } else {
//            break
//        }
//    }
//
//    return result
//}
//
//print(solution([1, 3, 2, 5, 4], 9))


// MARK: - LV1 실패율

//func solution(_ N: Int, _ stages: [Int]) -> [Int] {
//
//    var failure: [Int : Float] = [:]
//    var player: Int = stages.count
//    for i in 1...N {
//        //도달한 수
//               let a = stages.filter{$0 >= i}.count
//               //클리어한 수
//               let b = a - stages.filter{$0 > i}.count
//               //실패율
//               let failCount = Float(b) / Float(a)
//
//        failure[i] = failCount
//    }
//
//    return failure.sorted(by: <).sorted(by: {$0.value > $1.value}).map{$0.key}
//}
//
//print(solution(6, [6,6,6,6]))

// MARK: - LV1 시저암호

//func solution(_ s: String, _ n: Int) -> String {
////    let upperCased: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
////    let lowerCased: [String] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
////
////    var k = s.map{String($0)}
////    var result: String = ""
////    for i in k {
////        if upperCased.contains(i) {
////            var index = upperCased.firstIndex(of: i)! + n
////            if index > upperCased.count - 1 {
////                index -= upperCased.count
////                result += upperCased[index]
////            } else {
////                result += upperCased[index]
////            }
////
////        } else if lowerCased.contains(i) {
////            var index = lowerCased.firstIndex(of: i)! + n
////            if index > lowerCased.count - 1 {
////                index -= lowerCased.count
////                result += lowerCased[index]
////            } else {
////                result += lowerCased[index]
////            }
////
////        } else {
////            result += " "
////        }
////    }
////    return result
//
//    let alphabets = "abcdefghijklmnopqrstuvwxyz".map{$0}
//    return String(s.map {
//        guard let index = alphabets.firstIndex(of: Character($0.lowercased())) else {return $0}
//        let letter = alphabets[(index + n) % alphabets.count]
//        return $0.isUppercase ? Character(letter.uppercased()) : letter
//    })
//
//}
//
//print(solution("a B z", 4))


// MARK: - LV1 문자열 내 마음대로 정렬하기

//func solution(_ strings: [String], _ n: Int) -> [String] {
//    var k: [Int:String] = [:]
//    strings.sorted().enumerated().forEach { key, value in
//        var s = Array(value)[n]
//        k[key] = String(s)
//    }
//    var newDic = k.sorted{$0.1 < $1.1}
//    var result: [String] = []
//    for (key, value) in newDic {
//        print("key: \(key), value: \(value)")
//        result.append(strings.sorted()[key])
//    }
//    print(result)
//    return result
//}

//func solution(_ strings:[String], _ n:Int) -> [String] {
//    return strings.sorted{
//        Array($0)[n] == Array($1)[n] ? $0 < $1 : Array($0)[n] < Array($1)[n]
//    }
//}
//
//print(solution(["abce", "abcd", "cdx"], 2))
//var k = [1, 2, 3, 4, 5]
//print(k.sorted(by: {$0 < $1}))
//print(k.sorted(by: {$0 > $1}))


// MARK: - LV1 체육복

//func solution(_ n: Int, _ lost: [Int], reserve: [Int]) -> Int {
//
//    //    // 학생들이 가지고 있는 최초 체육복 수 배열
//    //    var result: [Int] = Array(repeating: 1, count: n)
//    //    for i in 1...n {
//    //        if lost.contains(i) {
//    //            result[i-1] -= 1
//    //        }
//    //        if reserve.contains(i) {
//    //            result[i-1] += 1
//    //        }
//    //    }
//    //
//    //    print("init: \(result)")
//    //
//    //    // 실질적인 탐욕법 사용해야 하는데....
//    //    for i in 0..<result.count {
//    //        if result[i] == 1 {
//    //            print(result)
//    //        } else if result[i] == 0 {
//    //            if i-1 == -1 {  // 첫번째 라는 것 -> 뒤에꺼만 확인
//    //                if result[i+1] == 2 {
//    //                    result[i+1] = 1
//    //                    result[i] = 1
//    //                    print(result)
//    //
//    //                }
//    //            } else if i+1 == n {
//    //                if result[i-1] == 2 {
//    //                    result[i-1] = 1
//    //                    result[i] = 1
//    //                    print(result)
//    //
//    //                }
//    //            } else {
//    //                if result[i-1] == 2 {
//    //                    result[i-1] = 1
//    //                    result[i] = 1
//    //                    print(result)
//    //
//    //                } else if result[i+1] == 2 {
//    //                    result[i+1] = 1
//    //                    result[i] = 1
//    //                    print(result)
//    //
//    //                }
//    //            }
//    //
//    //        } else if result[i] == 2 {
//    //            if i-1 == -1 {  // 첫번째 라는 것 -> 뒤에꺼만 확인
//    //                if result[i+1] == 0 {
//    //                    result[i+1] = 1
//    //                    result[i] = 1
//    //                    print(result)
//    //
//    //                }
//    //            } else if i+1 == n {
//    //                if result[i-1] == 0 {
//    //                    result[i-1] = 1
//    //                    result[i] = 1
//    //                    print(result)
//    //
//    //                }
//    //            } else {
//    //
//    //                if result[i-1] == 0 {
//    //                    result[i-1] = 1
//    //                    result[i] = 1
//    //                    print(result)
//    //
//    //                } else if result[i+1] == 0 {
//    //                    result[i+1] = 1
//    //                    result[i] = 1
//    //                    print(result)
//    //
//    //                }
//    //            }
//    //
//    //        }
//    //    }
//    //
//    //
//    //    return result.filter{$0 >= 1}.count
//
//    let newReserve = reserve.filter { !lost.contains($0) }
//    let newLost = lost.filter { !reserve.contains($0) }
//
//    var lostPeople: Int = newLost.count
//
//    newReserve.forEach {
//        let isLend: Bool = newLost.contains($0 - 1) || newLost.contains($0 + 1)
//        if isLend && lostPeople > 0 {
//            lostPeople -= 1
//        }
//    }
//
//    return n - lostPeople
//}
//
//print(solution(5, [2, 4], reserve: [3, 2]))


// MARK: - LV1 [1차] 다트 게임
//func solution(_ dartResult: String) -> Int {
//
//    var num: String = ""
//    var result: [Int] = []
//    for i in Array(dartResult) {
//        if Int(String(i)) != nil {
//            num += String(i)
//        } else if i == "S" {
//            result.append(Int(num)! * 1)
//            num = ""
//        } else if i == "D" {
//            result.append(Int(num)! * Int(num)!)
//            num = ""
//        } else if i == "T" {
//            result.append(Int(num)! * Int(num)! * Int(num)!)
//            num = ""
//        } else if i == "*" {
//            if result.count > 1 {
//                let index = result.count - 2
//                result[index] *= 2
//            }
//            result[result.count - 1] *= 2
//
//        } else if i == "#" {
//            result[result.count - 1] *= -1
//        }
//    }
//
//    print(result)
//    return result.reduce(0, +)
//}
//
//solution("1D2S#10S")


//// MARK: - LV1 [1차] 비밀지도
//func solution(_ n: Int, _ arr1: [Int], _ arr2: [Int]) -> [String] {
//    var newArr1 = arr1.map{String($0, radix: 2)}
//    for i in 0..<newArr1.count {
//        if newArr1[i].count < n {
//            while newArr1[i].count < n {
//                newArr1[i].insert("0", at: newArr1[i].startIndex)
//            }
//        }
//    }
//
//    var newArr2 = arr2.map{String($0, radix: 2)}
//    for i in 0..<newArr2.count {
//        if newArr2[i].count < n {
//            while newArr2[i].count < n {
//                newArr2[i].insert("0", at: newArr2[i].startIndex)
//            }
//        }
//    }
//
//    var result: [[String]] = Array(repeating: Array(repeating: "", count: n), count: n)
//
//    for i in 0..<n {
//        for j in 0..<n {
//            var k = ""
//            var a = newArr1[i]
//            var b = newArr2[i]
//            if Array(a)[j] == "1" || Array(b)[j] == "1" {
//                k += "#"
//            } else {
//                k += " "
//            }
//            result[i][j] = k
//        }
//
//    }
//
//    print(result.map{$0.joined()})
//
//
//
//
//    return result.map{$0.joined()}
//}
//
//solution(5, [9, 20, 28, 18, 11], [30, 1, 21, 17, 28])
//
//var arr1 = [1, 20, 28, 18, 11]
//var arr2 = [1, 1, 21, 17, 28]
//var retArray = String(arr1[0] | arr2[0], radix: 2)
//print("retArray: \(retArray)")



// MARK: - 백준 (그리디 알고리즘)

// MARK: - 백준 2839번

//func solution() -> Int {
//    var text = Int(readLine()!)!
//    var result: Int = 0
//
//    if text % 5 == 0 {
//        return text / 5
//    } else {
//        while text >= 0 {
//            text -= 3
//            result += 1
//            if text % 5 == 0 {
//                return result + (text / 5)
//            }
//        }
//    }
//
//    return -1
//}
//
//
//print(solution())


// MARK: - 백준 11399번
//func solution() -> Int {
//    var n = Int(readLine()!)!
//    var arr = readLine()!.components(separatedBy: " ").map{Int($0)!}.sorted()
//    var result = 0
//    for (index, value) in arr.enumerated() {
//        result += value * (n - index)
//    }
//    return result
//}
//
//print(solution())

//// MARK: - 백준 11047번 sol1
//func solution1() -> Int {
//    var arr = readLine()!.components(separatedBy: " ").map{Int($0)!}
//
//
//    var coin: [Int] = []
//    for i in 0..<arr[0] {
//        coin.append(Int(readLine()!)!)
//    }
//    coin.sort(by: >)
//    print(arr)
//    print(coin)
//    var money: Int = arr[1]
//    var result: Int = 0
//    var index: Int = 0
//    while money > 0 {
//        print("index: \(index)")
//        money -= coin[index]
//
//        if money < 0 {
//            money += coin[index]
//            index += 1
//        } else {
//            result += 1
//        }
//
//
//    }
//
//
//
//    return result
//}
//print(solution1())
//
//// MARK: - 백준 11047번 sol2
//
//func solution2() -> Int {
//    var arr = readLine()!.components(separatedBy: " ").map{Int($0)!}
//    var coin: [Int] = []
//    for i in 0..<arr[0] {
//        coin.append(Int(readLine()!)!)
//    }
//    coin.sort(by: >)
//
//    var money: Int = arr[1]
//    var result: Int = 0
//
//    for i in coin {
//        if money == 0 {
//            break
//        }
//        result += money / i
//        money %= i
//    }
//
//    return result
//}
//print(solution2())

// MARK: - 백준 1931번

//func solution() -> Int {
//    var n = Int(readLine()!)!
//    var time: [[Int]] = []
//    for i in 0..<n {
//        time.append(Array(readLine()!.components(separatedBy: " ").map{Int($0)!}))
//    }
//    time.sort {
//        if $0[1] == $1[1] {
//            return $0[0] < $1[0]
//        }
//        return $0[1] < $1[1]
//    }
//    var result = 0
//    var currentTime: Int = 0
//    for i in time {
//        if i[0] >= currentTime {
//            currentTime = i[1]
//            result += 1
//        }
//    }
//
//    return result
//}
//
//print(solution())

// MARK: - 백준 1026

//func solution() -> Int {
//    let n = Int(readLine()!)!
//    var a: [Int] = readLine()!.components(separatedBy: " ").map{Int($0)!}
//    var b: [Int] = readLine()!.components(separatedBy: " ").map{Int($0)!}
//
//    print(a)
//    print(b)
//
//    var maxA = a.max()! + 1
//
//    var sortedB: [[Int]] = []
//
//    var newA = Array(repeating: 0, count: n)
//    for (index, value) in b.enumerated() {
//        sortedB.append([index, value])
//    }
//
//    sortedB.sort {
//        return $0[1] > $1[1]
//    }
//    print(sortedB)
//
//    for i in 0..<sortedB.count {
//        newA[sortedB[i][0]] = a.min()!
//        if let indexA = a.firstIndex(of: a.min()!) {
//            a[indexA] = maxA
//        }
//    }
//
//    print(newA)
//    print(b)
//
//    var result = 0
//
//    for i in 0..<n {
//        result += newA[i] * b[i]
//    }
//
//    return result
//}
//print(solution())

// MARK: - 백준 1541

//func solution() -> Int {
//
//    let cal = readLine()!.components(separatedBy: "-")
//
//    var arr: [Int] = []
//    for i in cal {
//        if i.contains("+") {
//            arr.append(i.components(separatedBy: "+").map{Int($0)!}.reduce(0, +))
//
//        } else {
//            arr.append(Int(i)!)
//        }
//    }
//
//    return Int(arr.reduce(arr[0]*2, -))
//}
//
//print(solution())

// MARK: - 백준 5585

//func solution() -> Int {
//    var change = 1000 - Int(readLine()!)!
//    var coin: [Int] = [500, 100, 50, 10, 5, 1]
//    var result = 0
//
//    for i in coin {
//        if change == 0 {
//            break
//        } else {
//            result += change / i
//            change %= i
//        }
//    }
//
//
//    return result
//}
//
//print(solution())

// MARK: - 백준 10162
//func solution() -> String {
//    var time: Int = Int(readLine()!)!
//    var timeArray: [Int] = [300, 60, 10]
//    var resultArray: [Int] = [0, 0, 0]
//
//    if time % 10 != 0 {
//        return "-1"
//    } else {
//        for i in 0..<timeArray.count {
//            if time == 0 {
//                break
//            }
//            resultArray[i] = time / timeArray[i]
//            time %= timeArray[i]
//
//
//        }
//    }
//
//    return resultArray.map{String($0)}.joined(separator: " ")
//}
//
//print(solution())

// MARK: - 백준 10610

//func solution() -> String {
//    var arr = readLine()!.map{Int(String($0))!}
//    if !arr.contains(0) {
//        return "-1"
//    }
//
//    arr.remove(at: arr.firstIndex(of: 0)!)
//    if arr.reduce(0, +) % 3 != 0 {
//        return "-1"
//    }
//
//    var result = ""
//    result = arr.map{String($0)}.sorted(by: >).joined(separator: "") + "0"
//
//
//    return result
//}
//
//print(solution())

// MARK: - 백준 1789
//func solution() -> Int {
//    var n = Int(readLine()!)!
//    var result = 0
//    var count = 0
//    var i = 1
//    while count <= n {
//        count += i
//        i += 1
//        result += 1
//    }
//
//    if count == n {
//        return result
//    } else {
//        return result - 1
//    }
//}
//
//print(solution())

// MARK: - 백준 13305
//func solution() -> Int {
//    var n = Int(readLine()!)!
//    var distance = readLine()!.components(separatedBy: " ").map{Int($0)!}
//    var price = readLine()!.components(separatedBy: " ").map{Int($0)!}
//    for i in 1..<n {
//        if price[i-1] < price[i] {
//            price[i] = price[i-1]
//        }
//    }
//    var result = 0
//    for i in 0..<distance.count {
//        result += distance[i] * price[i]
//    }
//
//    return result
//}
//print(solution())

// MARK: - 백준 1339

//func solution() -> Int {
//    let n = Int(readLine()!)!
//    var strs: [[String]] = []
//    var dict: [String:Int] = [:]
//    for _ in 0..<n {
//        let str = readLine()!.reversed().map{String($0)}
//        strs.append(str)
//    }
//
//    for i in 0..<strs.count {
//        for j in 0..<strs[i].count {
//            let target = strs[i][j]
//            if let _ = dict[target] {
//                dict[target]! += Int(pow(Double(10), Double(j)))
//            } else {
//                dict[target] = Int(pow(Double(10), Double(j)))
//            }
//        }
//    }
//
//    var newDict = dict.sorted(by: {$0.1 > $1.1})
//    var result = 0
//    var num = 9
//    for (key, value) in newDict {
//        result += value * num
//        num -= 1
//    }
//
//
//    return result
//}
//print(solution())

// MAKR: - 백준 1715
//let n = Int(readLine()!)!
//
//var card = [Int]()
//
//for _ in 0..<n {
//    card.append(Int(readLine()!)!)
//}
//
//card.sort(by: >)
//
//func insert(_ target: Int) {
//    var (low,high) = (0,card.count)
//
//    while low < high {
//        let mid = (low+high)/2
//
//        if card[mid] <= target {
//            high = mid
//        } else {
//            low = mid + 1
//        }
//    }
//    card.insert(target,at: high)
//
//}
//
//var sum = 0
//
//while true {
//    if card.count == 1 {
//        break
//    }
//
//    let c1 = card.removeLast()
//    let c2 = card.removeLast()
//
//    let newCard = c1+c2
//    sum += newCard
//
//    insert(newCard)
//}
//
//print(sum)

// MARK: - 백준 1439
//func solution() -> Int {
//    var arr = readLine()!.map{Int(String($0))!}
//    var zeroCount: Int = 0
//    var oneCount: Int = 0
//
//    if arr[0] == 0 {
//        zeroCount = 1
//    } else {
//        oneCount = 1
//    }
//
//    for i in 1..<arr.count {
//        if arr[i] != arr[i-1] {
//            if arr[i] == 0 {
//                zeroCount += 1
//            } else {
//                oneCount += 1
//            }
//        }
//    }
//
//    return min(zeroCount, oneCount)
//}
//
//print(solution())

// MARK: - 백준 4796
//func solution() {
//    var result: [Int] = []
//    var camping: [[Int]] = []
//
//    while true {
//        var k: [Int] = []
//        k.append(contentsOf: readLine()!.components(separatedBy: " ").map{Int($0)!})
//        if k.count == 3 {
//            if k == [0, 0, 0] {
//                break
//            } else {
//                camping.append(k)
//            }
//
//        }
//
//    }
//
//
//    for i in 0..<camping.count {
//
//        var arr = camping[i]
//        var days = arr[2] / arr[1] * arr[0]
//        if arr[0] >= arr[2] % arr[1] {
//            days += arr[2] % arr[1]
//        } else {
//            days += arr[0]
//        }
//
//        result.append(days)
//
//
//    }
//    for i in 0..<result.count {
//        print("Case \(i+1): \(result[i])")
//    }
//
//}
//
//
//print(solution())


// MARK: - 백준 1032번 명령 프롬프트

//func solution() -> String {
//    let n: Int = Int(readLine()!)!
//
//    if n == 1 {
//        return readLine()!
//    }
//
//
//    var arr: [[String]] = []
//    for _ in 0..<n {
//        arr.append(readLine()!.map{String($0)})
//    }
//
//    var compareText: [String] = arr.removeFirst()
//
//    for item in arr {
//        for index in 0..<item.count {
//            if compareText[index] != item[index] {
//                compareText[index] = "?"
//            }
//        }
//    }
//
//    return compareText.joined()
//}
//
//print(solution())

// MARK: - 백준 1110번 더하기 사이클

//func solution() -> Int {
//    let n = Int(readLine()!)!
//    var result = String(n)
//    if n == 0 {
//        return 1
//    }
//    var count = 0
//    while true {
//
//        if result.count == 1 {
//            result = "0" + result
//        }
//
//        result = "\(Int(result)! % 10)" + "\(result.map{Int(String($0))!}.reduce(0, +) % 10)"
//        count += 1
//        if Int(result) == n {
//            break
//        }
//    }
//    return count
//}
//
//print(solution())

// MARK: - 백준 1145번 적어도 대부분의 배수

//func solution() -> Int {
//    var arr = readLine()!.components(separatedBy: " ").map{Int($0)!}
//    var n = arr.min()!
//
////    while true {
////        var count = 0
////        for i in arr {
////            if n % i == 0 {
////                count += 1
////            }
////        }
////
////        if count >= 3 {
////            break
////        }
////        n += 1
////
////    }
//
//    while true {
//        var newArr = arr.filter { n % $0 == 0 }
//        if newArr.count >= 3 {
//            break
//        }
//        n += 1
//    }
//    return n
//}
//
//print(solution())

// MARK: - 백준 1157번 단어 공부

//func solution() -> String {
//    var text: String = readLine()!.uppercased()
//    var alphabet: [String:Int] = [:]
//
//    for i in text {
//        if let _ = alphabet[String(i)] {
//            alphabet[String(i)]! += 1
//        } else {
//            alphabet[String(i)] = 1
//        }
//    }
//
//    var result: [String] = []
//
//    for key in alphabet.keys {
//        if alphabet[key] == alphabet.values.max() {
//            result.append(key)
//        }
//    }
//
//    return result.count == 1 ? result[0] : "?"
//}
//
//print(solution())

// MARK: - 백준 1193번 분수찾기

//func solution() -> String {
//    var n = Int(readLine()!)!
//    var count = 1
//    while true {
//        n = n - count
//        if n <= 0 {
//            break
//        }
//        count += 1
//    }
//
//    return count % 2 == 1 ? "\(-n+1)/\(n+count)" : "\(n+count)/\(-n+1)"
//}
//print(solution())

// MARK: - 백준 1236번 성 지키기
//func solution() -> Int {
//
//    var num = readLine()!.components(separatedBy: " ").map{Int($0)!}
//    var castle: [[String]] = []
//    for _ in 0..<num[0] {
//        castle.append(readLine()!.map{String($0)})
//    }
//
//    var a = 0
//    var b = 0
//
//
//    for item in castle {
//        if !item.contains("X") {
//            a += 1
//        }
//    }
//
//    for i in 0..<num[1] {
//        var temp: [String] = []
//        for j in 0..<num[0] {
//            temp.append(castle[j][i])
//        }
//        if !temp.contains("X") {
//            b += 1
//        }
//    }
//
//    return max(a, b)
//}
//
//print(solution())

// MARK: - 백준 1259번 팰린드롬수
//func solution() {
//    var arr: [[String]] = []
//    while true {
//        var k: [String] = []
//        k = readLine()!.map{String($0)}
//        if k == ["0"] {
//            break
//        }
//        arr.append(k)
//    }
//
//
//
//    var result: [String] = []
//
//
//    for item in arr {
//        var initial = item.joined()
//        var reverse = item.reversed().joined()
//
//        if initial == reverse {
//            result.append("yes")
//        } else {
//            result.append("no")
//        }
//    }
//
//    for i in result {
//        print(i)
//    }
//}
//solution()

//func solution2() {
//    while let s = readLine(), s != "0" {
//        print(s == String(s.reversed()) ? "yes" : "no")
//    }
//}
//
//solution2()


// MARK: - 백준 1268번 임시 반장 정하기 - 다시 풀기 필요
//func solution() -> Int {
//    let n: Int = Int(readLine()!)!
//    var student: [[Int]] = []
//    for _ in 0..<n {
//        student.append(Array(readLine()!.components(separatedBy: " ").map{Int($0)!}))
//    }
//
//    var maxCount = -1
//    var target = 0
//
//    for i in 0..<n {
//        var same: Set<Int> = []
//        for j in 0..<5 {
//            let selfClass = student[i][j]
//            for (index, value) in student.enumerated() {
//                if value[j] == selfClass {
//                    same.insert(index)
//                }
//            }
//
//        }
//
//        if same.count > maxCount {
//            maxCount = same.count
//            target = i
//        }
//    }
//
//    return target + 1
//}
//
//print(solution())




// MARK: - 백준 2558번 A+B-2

//func solution() -> Int{
//    var num: [Int] = []
//    for i in 0..<2 {
//        num.append(Int(readLine()!)!)
//    }
//    return num.reduce(0, +)
//}
//
//print(solution())


// MARK: - 백준 1855번 암호

//func solution() -> String {
//    let n: Int = Int(readLine()!)!
//    let text: String = readLine()!
//    var arr: [[Character]] = []
//
//    var tempArr: [Character] = []
//
//    for t in text {
//        tempArr.append(t)
//        if tempArr.count == 3 {
//            arr.append(tempArr)
//            tempArr.removeAll()
//        }
//    }
//
//    for i in 0..<arr.count {
//        if i%2 != 0 {
//            arr[i] = arr[i].reversed()
//        }
//    }
//
//    var result: String = ""
//
//    for i in 0..<n {
//        for j in 0..<arr.count {
//            result.append(arr[j][i])
//        }
//    }
//
//    return result
//}
//
//print(solution())


// MARK: - 백준 1296번 팀 이름 정하기

//func solution() -> String {
//    var name: String = readLine()!
//    let n: Int = Int(readLine()!)!
//    var percent = 0
//    var result: String = ""
//
//    var nameArray: [String] = []
//    for _ in 0..<n {
//        nameArray.append(readLine()!)
//    }
//
//    for i in nameArray {
//        let arr = Array(i + name)
//        var dict: [String : Int] = [:]
//        dict["L"] = arr.filter({String($0) == "L"}).count
//        dict["O"] = arr.filter({String($0) == "O"}).count
//        dict["V"] = arr.filter({String($0) == "V"}).count
//        dict["E"] = arr.filter({String($0) == "E"}).count
//
//        let per = cal(dict["L"]!, dict["O"]!, dict["V"]!, dict["E"]!)
//
//        print(per)
//        print("i: \(i)")
//        if per > percent {
//            percent = per
//            result = i
//        } else if per == percent{
//            if per == 0 && result.isEmpty {
//                result = i
//                percent = per
//            }
//
//            if result > i {
//                result = i
//            }
//        }
//
//    }
//    return result
//}
//
//func cal(_ L: Int, _ O: Int, _ V: Int, _ E: Int) -> Int {
//    return ((L+O) * (L+V) * (L+E) * (O+V) * (O+E) * (V+E)) % 100
//}
//
//
//
//print(solution())


// MARK: - 백준 1356 유진수

//func solution() -> String {
//    var n: Int = Int(readLine()!)!
//    if n == 1 {
//        return "NO"
//    }
//
//    var target = 1
//
//    for i in 1..<String(n).count {
//        var first = Array(String(n))[..<i]
//        var second = Array(String(n))[i...]
//
//        var firstMul = first.map{Int(String($0))!}.reduce(1, *)
//        var secondMul = second.map{Int(String($0))!}.reduce(1, *)
//
//        if firstMul == secondMul {
//            return "YES"
//        }
//
//    }
//    return "NO"
//}
//print(solution())

// MARK: - 백준 1357번 뒤집힌 덧셈

//func solution() -> Int {
//    let numArray: [Int] = readLine()!.components(separatedBy: " ").map{Int($0)!}
//    var result: [Int] = []
//
//    for i in 0..<numArray.count {
//        result.append(Int(String(String(numArray[i]).reversed()))!)
//    }
//
//    return Int(String(String(result.reduce(0, +)).reversed()))!
//}
//print(solution())

// MARK: - 백준 1384번 메시지

//func solution() {

//    var count: Int = 1
//    while true {
//        let n: Int = Int(readLine()!)!
//        var student: [String] = []
//        var message: [[String]] = []
//
//        if n == 0 {
//            break
//        } else {
//            var target = 0
//            for i in 0..<n {
//                var temp: [String] = []
//                temp = readLine()!.components(separatedBy: " ").map{String($0)}
//                student.append(temp[0])
//
//                var tempMessage: [String] = Array(temp[1..<n])
//                message.append(tempMessage)
//
//            }
//
//            print("Group \(count)")
//            count += 1
//
//            var result: [String] = []
//
//            for i in 0..<message.count {
//                for j in 0..<message[i].count {
//                    if message[i][j] == "N" {
//
//                        var index = n + i - 1 - j
//                        index = index % n
//                        print("\(student[index]) was nasty about \(student[i])")
//                        target = 1
//                    }
//                }
//            }
//
//            if target == 0 {
//                print("Nobody was nasty")
//            }
//            print("")
//
//        }
//    }
//}
//
//solution()

// MARK: - 백준 10870번 피보나치 수 5

//func solution() -> Int {
//    var arr: [Int] = [1, 1]
//    let n: Int = Int(readLine()!)!
//
//    if n == 0 {
//        return 0
//    } else if n == 1 || n == 2 {
//        return 1
//    } else {
//        for i in 2..<n {
//            arr.append(arr[i-2] + arr[i-1])
//        }
//
//        return arr.popLast()!
//    }
//}
//
//print(solution())

//func solution(_ n: Int) -> Int {
//    if n <= 1 {
//        return n
//    }
//    return solution(n-2) + solution(n-1)
//}
//print(solution(Int(readLine()!)!))

// MARK: - 백준 9095번 1,2,3 더하기

//func solution() {
//    let n = Int(readLine()!)!
//    var arr: [Int] = []
//    var resultArr: [Int] = [0, 1, 2, 4]
//
//    for i in 4..<12 {
//        resultArr.append(resultArr[i-3] + resultArr[i-2] + resultArr[i-1])
//    }
//
//    for i in 0..<n {
//        print(resultArr[Int(readLine()!)!])
//    }
//}
//
//solution()

// MARK: - 백준 11726번 2xn 타일링

//func solution() -> Int {
//
//    let n: Int = Int(readLine()!)!
//    var arr: [Int] = Array(repeating: 0, count: 1001)
//
//    arr[1] = 1
//    arr[2] = 2
//
//    for i in stride(from: 3, through: n, by: 1) {
//        arr[i] = (arr[i-2] + arr[i-1]) % 10007
//    }
//
//    return arr[n]
//
//}
//
//print(solution())

//MARK: - 백준 1149번 RGB거리

//func solution() -> Int {
//    let n: Int = Int(readLine()!)!
//    var arr: [[Int]] = []
//    for _ in 0..<n {
//        arr.append(Array(readLine()!.components(separatedBy: " ").map{Int($0)!}))
//    }
//
//    var result: [[Int]] = []
//    result.append(arr[0])
//    for i in 1..<n {
//        var temp: [Int] = []
//        temp.append(min(result[i-1][1], result[i-1][2]) + arr[i][0])
//        temp.append(min(result[i-1][0], result[i-1][2]) + arr[i][1])
//        temp.append(min(result[i-1][0], result[i-1][1]) + arr[i][2])
//        result.append(temp)
//    }
//    return result.popLast()!.min()!
//}
//print(solution())

// MARK: - 백준 2579번 계단 오르기

//func solution() -> Int {
//
//    let n: Int = Int(readLine()!)!
//    var stairs: [Int] = []
//    for _ in 0..<n {
//        stairs.append(Int(readLine()!)!)
//    }
//
//    var result: [Int] = []
//
//    if n == 1 {
//        return stairs[0]
//    } else if n == 2 {
//        return stairs[0] + stairs[1]
//    } else if n == 3 {
//        return max(stairs[0] + stairs[2], stairs[1] + stairs[2])
//    }
//    else {
//        result.append(stairs[0])
//        result.append(stairs[0] + stairs[1])
//        result.append(max(stairs[0] + stairs[2], stairs[1] + stairs[2]))
//        for i in 3..<n {
//            result.append(max(result[i-2] + stairs[i], result[i-3] + stairs[i-1] + stairs[i]))
//        }
//    }
//    return result.popLast()!
//}
//
//print(solution())

// MARK: - 백준 1932번 정수 삼각형

//func solution() -> Int {
//    let n: Int = Int(readLine()!)!
//    var arr: [[Int]] = []
//    var result: [[Int]] = []
//    for _ in 0..<n {
//        arr.append(readLine()!.components(separatedBy: " ").map{Int($0)!})
//    }
//
//    result.append(arr[0])
//    if n == 1 {
//        return result[0].min()!
//    }
//
//    for index in 1..<n {
//        var temp: [Int] = []
//        for i in 0..<arr[index].count {
//            if i == 0 {
//                temp.append(result[index-1][0] + arr[index][0])
//            } else if i == arr[index].count - 1{
//                temp.append(result[index-1][i-1] + arr[index][i])
//            } else {
//                temp.append(max(result[index-1][i-1] + arr[index][i], result[index-1][i] + arr[index][i]))
//            }
//
//        }
//
//        result.append(temp)
//    }
//
//
//    return result.popLast()!.max()!
//}
//
//print(solution())

// MARK: - 백준 11053번 가장 긴 증가하는 부분 수열

//func solution() -> Int {
//    let n: Int = Int(readLine()!)!
//    let arr: [Int] = readLine()!.components(separatedBy: " ").map{Int(String($0))!}
//    var result: [Int] = Array(repeating: 1, count: n)
//
//
//    for i in 1..<n {
//        for j in 0..<i {
//            if arr[j] < arr[i] {
//                result[i] = max(result[i], result[j] + 1)
//            }
//        }
//    }
//
//
//    return result.max()!
//}
//
//print(solution())

// MARK: - 백준 1912번 연속합

//func solution() -> Int {
//    let n: Int = Int(readLine()!)!
//    var arr: [Int] = readLine()!.components(separatedBy: " ").map{Int(String($0))!}
//    var minNum: Int = arr.min()!
//    var result: [Int] = Array(repeating: minNum, count: n)
//    if arr.max()! < 0 {
//        return arr.max()!
//    } else {
//
//        result[0] = arr[0]
//        for i in 1..<n {
//            result[i] = max(arr[i], result[i-1] + arr[i])
//        }
//    }
//
//
//    return result.max()!
//
//}
//
//print(solution())

// MARK: - 백준 2156번 포도주 시식

//func solution() -> Int {
//    let n: Int = Int(readLine()!)!
//    var wine: [Int] = [0]
//    for _ in 0..<n {
//        wine.append(Int(readLine()!)!)
//    }
//
//    var result: [Int] = Array(repeating: 0, count: n+1)
//
//    if n == 1 {
//        return wine[1]
//    } else if n == 2 {
//        return wine[1] + wine[2]
//    } else {
//        result[1] = wine[1]
//        result[2] = wine[1] + wine[2]
//
//        for i in 3...n {
//            result[i] = max(result[i-1], result[i-2] + wine[i], result[i-3] + wine[i-1] + wine[i])
//
//        }
//        return result[n]
//    }
//}
//
//print(solution())

// MARK: - 백준 2748번 피보나치 수 2

//func solution() -> Int {
//    let n: Int = Int(readLine()!)!
//    var fibo: [Int] = [1, 1]
//    if n == 1 || n == 2{
//        return 1
//    } else {
//        for i in 2..<n{
//            fibo.append(fibo[i-2] + fibo[i-1])
//        }
//        return fibo[n-1]
//    }
//}
//
//print(solution())

// MARK: - 백준 10844번 쉬운 계단 수

import Foundation

//func solution() -> Int {
//    let n: Int = Int(readLine()!)!
//
//    var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: 10), count: 101)
//    arr[1] = [0, 1, 1, 1, 1, 1, 1, 1, 1, 1]
//    arr[2] = [1, 1, 2, 2, 2, 2, 2, 2, 2, 1]
//
//
//    for i in stride(from: 3, through: n, by: 1) {
//        for j in 0...9 {
//            if j == 0 {
//                arr[i][j] = arr[i-1][j+1] % 1000000000
//            } else if j == 9 {
//                arr[i][j] = arr[i-1][j-1] % 1000000000
//            } else {
//                arr[i][j] = (arr[i-1][j-1] + arr[i-1][j+1]) % 1000000000
//            }
//        }
//
//    }
//    return arr[n].reduce(0, +) % 1000000000
//
//}
//print(solution())

// MARK: - 백준 2193번 이친수

//func solution() -> Int {
//    let n: Int = Int(readLine()!)!
//
//    var numArr: [Int] = Array(repeating: 0, count: 91)
//    numArr[1] = 1
//    numArr[2] = 1
//
//    if n > 2 {
//        for i in 3...n {
//            numArr[i] = numArr[i-2] + numArr[i-1]
//        }
//    }
//    return numArr[n]
//}
//
//print(solution())

// MARK: - 백준 9461번 파도반 수열

//func solution() {
//    let n: Int = Int(readLine()!)!
//    var arr: [Int] = []
//    for _ in 0..<n {
//        arr.append(Int(readLine()!)!)
//    }
//
//    for num in arr {
//
//        if num == 1 || num == 2 {
//            print(1)
//        } else {
//            var resultArr: [Int] = Array(repeating: 0, count: num + 1)
//            resultArr[0] = 0
//            resultArr[1] = 1
//            resultArr[2] = 1
//            for i in 3...num {
//                resultArr[i] = resultArr[i-3] + resultArr[i-2]
//            }
//            print(resultArr[num])
//        }
//    }
//}
//solution()

// MARK: - 백준 11727번 2×n 타일링 2

//func solution() -> Int {
//    let n: Int = Int(readLine()!)!
//    var result: [Int] = Array(repeating: 0, count: 1001)
//    if n == 1 {
//        return 1 % 10007
//    } else if n == 2 {
//        return 3 % 10007
//    } else {
//        result[1] = 1
//        result[2] = 3
//        for i in 3...n {
//            result[i] = (result[i-1] % 10007) + ((result[i-2] * 2) % 10007)
//        }
//        return result[n] % 10007
//    }
//}
//
//print(solution())

//let n = Int(readLine()!)!
//var dp = [Int](repeating: 0, count: n + 1)
//dp[0] = 1
//dp[1] = 1
//
//for i in 2..<n+1 {
//    dp[i] = (dp[i - 1] + dp[i - 2] * 2) % 10007
//}
//
//print(dp[n])

// MARK: - 백준 10828번 스택

//func solution() {
//    let n: Int = Int(readLine()!)!
//    var arr: [String] = []
//    var stack: [Int] = []
//    for _ in 0..<n {
//        arr.append(readLine()!)
//    }
//    print(arr)
//
//
//    for i in arr {
//        if i.contains("push") {
//            let index = i.index(i.startIndex, offsetBy: 5)
//            //print("AAA \(String(i[index...]))")
//            stack.append(Int(i[index...])!)
//        }
//
//        if i == "pop" {
//            if stack.count == 0 {
//                print(-1)
//            } else {
//                print(stack.popLast()!)
//            }
//        }
//
//        if i == "size" {
//            print(stack.count)
//        }
//
//        if i == "empty" {
//            if stack.count == 0 {
//                print(1)
//            } else {
//                print(0)
//            }
//        }
//
//        if i == "top" {
//            if stack.count == 0 {
//                print(-1)
//            } else {
//                print(stack.last!)
//            }
//        }
//
//
//
//    }
//}
//
//solution()


// MARK: - 백준 9012번 괄호
//func solution() {
//    let n: Int = Int(readLine()!)!
//    for _ in 0..<n {
//        var tempString = ""
//        let tempArray = Array(readLine()!)
//        for temp in tempArray {
//            tempString += String(temp)
//            if tempString.contains("()") {
//                tempString.removeLast()
//                tempString.removeLast()
//            }
//        }
//
//        if tempString.count == 0 {
//            print("YES")
//        } else {
//            print("NO")
//        }
//    }
//}
//
//solution()

//func solution() {
//    let n: Int = Int(readLine()!)!
//    for _ in 0..<n {
//        var text: String = readLine()!
//        var count = 0
//        for i in text {
//            if i == "(" {
//                count += 1
//            } else {
//                count -= 1
//            }
//
//
//            if count < 0 {
//                break
//            }
//        }
//        print(count == 0 ? "YES" : "NO")
//    }
//}
//
//solution()

// MARK: - 백준 10845번 큐

//func solution() {
//    let n: Int = Int(readLine()!)!
//    var result: [Int] = []
//
//    for _ in 0..<n {
//        var temp: [String] = readLine()!.components(separatedBy: " ")
//        if temp[0] == "push" {result.append(Int(temp[1])!)}
//        if temp[0] == "pop" {print(result.count == 0 ? -1 : result.removeFirst())}
//        if temp[0] == "size" {print(result.count)}
//        if temp[0] == "empty" {print(result.count == 0 ? 1 : 0)}
//        if temp[0] == "front" {print(result.count == 0 ? -1 : result[0])}
//        if temp[0] == "back" {print(result.count == 0 ? -1 : result[result.endIndex - 1])}
//    }
//}
//
//solution()

// MARK: - 백준 1920번 수 찾기

//func solution() {
//    let a: Int = Int(readLine()!)!
//    let aArray: Set<Int> = Set(readLine()!.components(separatedBy: " ").map{Int($0)!})
//
//    let b: Int = Int(readLine()!)!
//    let bArray: [Int] = readLine()!.components(separatedBy: " ").map{Int($0)!}
//
//    for num in bArray {
//        print(aArray.contains(num) ? 1 : 0)
//    }
//}
//
//solution()

// MARK: - 백준 10773번 제로

//func solution() -> Int {
//    let n: Int = Int(readLine()!)!
//    var arr: [Int] = []
//
//    for _ in 0..<n {
//        var temp = Int(readLine()!)!
//        if temp != 0 {
//            arr.append(temp)
//        } else {
//            arr.removeLast()
//        }
//    }
//
//    return arr.reduce(0, +)
//}
//
//print(solution())

// MARK: - 백준 1158번 요세푸스 문제

//func solution() -> String {
//    let read = readLine()!.components(separatedBy: " ").map{Int(String($0))!}
//    let n: Int = read[0]
//    let count: Int = read[1]
//    var tempIndex: Int = read[1]
//
//    var arr: [Int] = Array(1...n)
//
//
//    var result: [String] = []
//
//    while arr.count != 0 {
//        if tempIndex <= arr.count {
//            result.append(String(arr.remove(at: tempIndex - 1)))
//            tempIndex = tempIndex + count - 1
//        } else {
//            tempIndex = tempIndex - arr.count
//        }
//    }
//
//    return "<\(result.joined(separator: ", "))>"
//}
//
//print(solution())

// MARK: - 백준 1874번 스택 수열

//func solution() {
//    let n: Int = Int(readLine()!)!
//    var arr: [Int] = []
//    for _ in 0..<n {
//        arr.append(Int(readLine()!)!)
//    }
//
//    var result: [Int] = []
//    var num = 1
//
//    var text: [String] = []
//
//    while num <= n {
//        result.append(num)  // push 했음.
//        text.append("+")
//        //print("+")
//        while true {
//            if result.last == arr.first{
//
//                if arr.count == 0 {
//                    break
//                } else {
//                    arr.removeFirst()
//                    result.removeLast()
//                    text.append("-")
//                    //print("-")
//                }
//
//
//
//            } else {
//                break
//            }
//        }
//
//        num += 1
//
//    }
//
//
//    if arr.isEmpty {
//        text.forEach{print($0)}
//    } else {
//        print("NO")
//    }
//
//}
//
//solution()


//let n = Int(readLine()!)!
//var stack:[Int] = [], num = 0, res = ""
//
//for _ in 1...n {
//    let now = Int(readLine()!)!
//
//    while num < now {
//        num+=1
//        stack.append(num)
//        res+="+\n"
//    }
//
//    if stack.removeLast() != now {
//        res = "NO"
//        break
//    }
//    res += "-\n"
//}
//print(res)


// MARK: - 백준 10866번 덱

//func solution() {
//    let n: Int = Int(readLine()!)!
//    var arr: [Int] = []
//    for _ in 0..<n {
//        let temp: [String] = readLine()!.components(separatedBy: " ")
//        if temp[0] == "push_front" {arr.insert(Int(temp[1])!, at: 0)}
//        if temp[0] == "push_back" {arr.insert(Int(temp[1])!, at: arr.endIndex)}
//        if temp[0] == "pop_front" {print(arr.isEmpty ? -1 : arr.removeFirst())}
//        if temp[0] == "pop_back" {print(arr.isEmpty ? -1 : arr.removeLast())}
//        if temp[0] == "size" {print(arr.count)}
//        if temp[0] == "empty" {print(arr.isEmpty ? 1 : 0)}
//        if temp[0] == "front" {print(arr.isEmpty ? -1 : arr.first!)}
//        if temp[0] == "back" {print(arr.isEmpty ? -1 : arr.last!)}
//    }
//}
//
//solution()

// MARK: - 백준 2164번 카드2 / 시간 초과 주의

//func solution() -> Int {
//    var n: Int = Int(readLine()!)!
//    var arr: [Int] = Array(1...n)
//
//    var target = 0
//
//    while target < n-1 {
//        target += 2
//        arr.append(arr[target-1])
//        n += 1
//    }
//
//    return arr[target]
//}
//
//print(solution())

// MARK: - 백준 1966번 프린터 큐

//func solution() {
//    var test: [Int] = readLine()!.components(separatedBy: " ").map{Int(String($0))!}
//    var testArr: [Int] = readLine()!.components(separatedBy: " ").map{Int(String($0))!}
//    var arr: [[Int]] = []
//
//    for (index, value) in testArr.enumerated() {
//        arr.append([index, value])
//    }
//
//
//    var target = test[1]
//    var result: [[Int]] = []
//
//    while !arr.isEmpty {
//        var first = arr.first
//        var maxValue = arr.max(by: {$0[1]<$1[1]})
//
//        if maxValue![1] == first![1] {
//            result.append(arr.removeFirst())
//        } else {
//            arr.append(arr.removeFirst())
//        }
//    }
//
//    if let targetNumber = result.firstIndex(where: {$0[0] == target}) {
//        print(targetNumber + 1)
//    }
//
//}
//
//let n: Int = Int(readLine()!)!
//for _ in 0..<n {
//    solution()
//}


// MARK: - 백준 10799번 쇠막대기

//func solution() -> Int {
//    let arr: [String] = readLine()!.map{String($0)}
//    var pipe: Int = 0
//    var result: Int = 0
//
//    for i in 0..<arr.count {
//        if arr[i] == "(" {
//            pipe += 1
//        } else {
//            pipe -= 1
//            if arr[i-1] == "(" {
//                result += pipe
//            } else {
//                result += 1
//            }
//        }
//    }
//
//    return result
//
//}
//
//print(solution())

// MARK: - 백준 10816번 숫자 카드 2

//func solution() -> String {
//    let n: Int = Int(readLine()!)!
//    let card: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//    let m: Int = Int(readLine()!)!
//    let targetCard: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//
//    var dict: [Int:Int] = [:]
//
//    for i in card {
//        if dict[i] == nil {
//            dict[i] = 1
//        } else {
//            dict[i]! += 1
//        }
//    }
//
//    var result: [Int] = []
//
//    for i in targetCard {
//        result.append(dict[i] ?? 0)
//    }
//
//    return result.map{String($0)}.joined(separator: " ")
//}
//
//print(solution())

// MARK: - 백준 4949번 균형잡힌 세상

//func solution() {
//    while true {
//
//        var contents = readLine()!
//
//        if contents == "." {
//            return
//        }
//
//        var arr = contents.filter { text in
//            if text == "(" {
//                return true
//            }
//
//            if text == ")" {
//                return true
//            }
//
//            if text == "[" {
//                return true
//            }
//
//            if text == "]" {
//                return true
//            }
//
//            return false
//        }
//
//        var result: String = ""
//        for i in arr {
//            result.append(i)
//            while true {
//                if result.contains("()") || result.contains("[]") {
//                    result.removeLast()
//                    result.removeLast()
//                } else {
//                    break
//                }
//            }
//        }
//
//        if result == "" {
//            print("yes")
//        } else {
//            print("no")
//        }
//
//    }
//
//
//}
//
//
//solution()

// MARK: - 백준 1764번 듣보잡
//func solution() {
//    let k = readLine()!.split(separator: " ").map{Int(String($0))!}
//    var n = k[0]
//    var m = k[1]
//
//    var hear: Set<String> = []
//    var see: Set<String> = []
//
//    for _ in 0..<n {
//        hear.insert(readLine()!)
//    }
//    for _ in 0..<m {
//        see.insert(readLine()!)
//    }
//
//    var result = hear.intersection(see)
//    print(result.count)
//    result.sorted().forEach{print($0)}
//}
//
//solution()


// MARK: - 백준 10872번 팩토리얼

//func solution() -> Int {
//    let n: Int = Int(readLine()!)!
//    var arr: [Int] = Array(repeating: 1, count: n+1)
//
//    if n > 0 {
//        for i in 1...n {
//            arr[i] = Array(1...n).reduce(1, *)
//        }
//    }
//
//
//    return arr[n]
//}
//
//print(solution())

// MARK: - 백준 11718번 그대로 출력하기

//func solution() {
//    while true {
//        guard let text = readLine() else {
//            return
//        }
//        print(text)
//    }
//}
//
//solution()


// MARK: - 백준 1924번 2007년

//func solution() -> String {
//    let read: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//    var m: Int = read[0]
//    var d: Int = read[1]
//
//    let month: [Int] = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
//    let day: [String] = ["MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN"]
//
//
//    let totalDay: Int = (month[0..<m].reduce(0, +) + d) % 7
//    if totalDay == 0 {
//        return "SUN"
//    } else {
//        return day[totalDay - 1]
//    }
//
//}
//
//print(solution())


// MARK: - 백준 1260번 DFS와 BFS

//let read: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n: Int = read[0]
//let m: Int = read[1]
//let v: Int = read[2]
//
//var graph: [[Int]] = Array(repeating: Array<Int>(), count: n + 1)
//
//// 인접 노드 표현
//for _ in 0..<m {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//    let start = temp[0]
//    let end = temp[1]
//
//    graph[start].append(end)
//    graph[end].append(start)
//
//    graph[start].sort()
//    graph[end].sort()
//}
//
//
//
//
//var dfsVisited: [Bool] = Array(repeating: false, count: n+1)
//var dfsResult: [Int] = []
//
//var bfsVisited: [Bool] = Array(repeating: false, count: n+1)
//var bfsResult: [Int] = []
//
//func DFS(graph: [[Int]], v: Int) {
//    dfsVisited[v] = true
//    dfsResult.append(v)
//    for i in graph[v] {
//        if dfsVisited[i] == false {
//            DFS(graph: graph, v: i)
//        }
//    }
//
//}
//
//DFS(graph: graph, v: v)
//print(dfsResult.map{String($0)}.joined(separator: " "))
//
//
//func BFS(v: Int) {
//
//
//    var queue: [Int] = [v]
//    bfsVisited[v] = true
//
//
//    while !queue.isEmpty {
//        let v = queue.removeFirst()
//        bfsResult.append(v)
//        for i in graph[v] {
//            if bfsVisited[i] == false {
//                queue.append(i)
//                bfsVisited[i] = true
//
//            }
//        }
//    }
//    print(bfsResult.map{String($0)}.joined(separator: " "))
//}
//
//BFS(v: v)

// MARK: - 백준 2178번 미로 탐색

//func solution() {
//    let read: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//    var arr: [[Int]] = []
//    for _ in 0..<read[0] {
//        var temp = readLine()!.map{Int(String($0))!}
//        arr.append(temp)
//    }
//
//    let dx = [-1, 1, 0, 0]
//    let dy = [0, 0, -1, 1]
//
//
//    var a: Int = 0
//    var b: Int = 0
//    var startIndex: [Int] = [a, b]
//
//
//    var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: read[1]), count: read[0])
//    var queue: [[Int]] = [[0, 0]]
//
//    while queue.count != 0 {
//        let current = queue.removeFirst()
//        if visited[current[0]][current[1]] == false {
//            visited[current[0]][current[1]] = true
//            for i in 0..<4 {
//                let currentX = current[0] + dx[i]
//                let currentY = current[1] + dy[i]
//
//                if currentX < 0 || currentX >= read[0] || currentY < 0 || currentY >= read[1] {
//                    continue
//                } else {
//                    if arr[currentX][currentY] >= 1 && visited[currentX][currentY] == false {
//                        arr[currentX][currentY] = arr[current[0]][current[1]] + 1
//                        queue.append([currentX, currentY])
//                    }
//                }
//
//
//            }
//        }
//
//    }
//
//    print(arr[read[0]-1][read[1]-1])
//
//}
//
//solution()


// MARK: - 백준 2667번 단지번호붙이기

//let n: Int = Int(readLine()!)!
//var apt: [[Int]] = []
//var aptCount = 0
//var block: [Int] = []
//
//
//var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: n)
//
//
//for _ in 0..<n{
//    let temp: [Int] = readLine()!.map{Int(String($0))!}
//    apt.append(temp)
//}
//
//func dfs(a: Int, b: Int) {
//    if a < 0 || a >= n || b < 0 || b >= n || apt[a][b] == 0 {
//        return
//    }
//    aptCount += 1
//    //visited[a][b] = true
//    apt[a][b] = 0
//
//    dfs(a: a+1, b: b)
//    dfs(a: a-1, b: b)
//    dfs(a: a, b: b+1)
//    dfs(a: a, b: b-1)
//
//}
//
//for i in 0..<n {
//    for j in 0..<n {
//        if apt[i][j] == 1 {
//            aptCount = 0
//            dfs(a: i, b: j)
//            block.append(aptCount)
//        }
//    }
//}
//
//print(block.count)
//block.sorted().forEach{print($0)}

// MARK: - 백준 2606번 바이러스

//let n: Int = Int(readLine()!)!
//let lineNum: Int = Int(readLine()!)!
//var graph: [[Int]] = Array(repeating: [Int](), count: n+1)
//
//for _ in 0..<lineNum {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//    let a: Int = temp[0]
//    let b: Int = temp[1]
//
//    graph[a].append(b)
//    graph[b].append(a)
//
//    graph[a].sort()
//    graph[b].sort()
//}
//var visited: [Bool] = Array(repeating: false, count: n+1)
//
//func solution(v: Int) {
//    visited[v] = true
//    for i in graph[v] {
//        if visited[i] == false {
//
//            solution(v: i)
//        }
//    }
//}
//
//solution(v: 1)
//print(visited.filter({$0 == true}).count - 1)

// MARK: - 백준 1012번 유기농 배추

//let testCases: Int = Int(readLine()!)!
//for _ in 0..<testCases {
//    let read: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//    let m: Int = read[0]
//    let n: Int = read[1]
//    let k: Int = read[2]
//
//    var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)
//    for _ in 0..<k {
//        let temp = readLine()!.split(separator: " ").map{Int(String($0))!}
//        graph[temp[1]][temp[0]] = 1
//    }
//
//    func dfs(a: Int, b: Int) -> Bool{
//        if a < 0 || a >= n || b < 0 || b >= m{
//            return false
//        }
//
//        if graph[a][b] == 1 {
//            graph[a][b] = 0
//
//            dfs(a: a+1, b: b)
//            dfs(a: a-1, b: b)
//            dfs(a: a, b: b+1)
//            dfs(a: a, b: b-1)
//            return true
//        }
//
//        return false
//
//
//    }
//
//    var result: Int = 0
//
//    for i in 0..<n {
//        for j in 0..<m {
//            if dfs(a: i, b: j) == true {
//                result += 1
//            }
//        }
//    }
//
//    print(result)
//
//}


// MARK: - 백준 7576번 토마토

//let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nm[0]
//let m = nm[1]
//var arr :[[Int]] = [[]]
//var depth = Array(repeating: Array(repeating: 0, count: 1001), count: 1001)
//var queue: [(Int, Int)] = []
//var lastIdx = (0, 0)
//var isCooked = true
//var idx = 0
//for _ in 1...m{
//    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
//}
//
//let dx = [-1, 1, 0, 0]
//let dy = [0, 0, 1, -1]
//for i in 1...m{
//    for j in 0..<n {
//        if arr[i][j] == 1{
//            queue.append((i, j))
//        }
//    }
//}
//
//func bfs(){
//    while idx < queue.count{
//        let pop = queue[idx]
//        idx += 1
//        for i in 0...3{
//            let nx = pop.0 + dx[i]
//            let ny = pop.1 + dy[i]
//
//            if nx > 0 && nx <= m && ny >= 0 && ny < n{
//                if arr[nx][ny] == 0{
//                    arr[nx][ny] = 1
//                    depth[nx][ny] = depth[pop.0][pop.1] + 1
//                    queue.append((nx, ny))
//                    lastIdx = (nx, ny)
//                }
//            }
//        }
//    }
//}
//
//bfs()
//for i in 1...m{
//    for j in 0..<n{
//        if arr[i][j] == 0 {
//            isCooked = false
//        }
//    }
//}
//
//if isCooked{
//    print(depth[lastIdx.0][lastIdx.1])
//}else {
//    print(-1)
//}

// MARK: - 백준 1697번 숨바꼭질

//let location: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//var subin: Int = location[0]
//let sister: Int = location[1]
//var queue: [Int] = []
//var index: Int = 0
//var visited: [Bool] = Array(repeating: false, count: 100001)
//var depth: [Int] = Array(repeating: 0, count: 100001)
//
//
//func bfs(subin: Int, sister: Int) -> Int {
//    queue.append(subin)
//
//
//    while !queue.isEmpty {
//        let temp = queue.removeFirst()
//        if temp == sister {
//            break
//        }
//
//        if temp > 0 && !visited[temp - 1]  {
//            queue.append(temp-1)
//            visited[temp-1] = true
//            depth[temp-1] = depth[temp] + 1
//        }
//
//        if temp < 100000 && !visited[temp + 1]  {
//            queue.append(temp+1)
//            visited[temp+1] = true
//            depth[temp+1] = depth[temp] + 1
//        }
//
//        if temp*2 < 100001 && !visited[temp * 2] {
//            queue.append(temp*2)
//            visited[temp*2] = true
//            depth[temp*2] = depth[temp] + 1
//        }
//    }
//
//
//
//    return depth[sister]
//}
//print(bfs(subin: subin, sister: sister))

// MARK: - 백준 11724 연결 요소의 개수

//let read: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//let N: Int = read[0]
//let M: Int = read[1]
//var graph: [[Int]] = Array(repeating: [Int](), count: N+1)
//for _ in 0..<M {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//    let a: Int = temp[0]
//    let b: Int = temp[1]
//
//    graph[a].append(b)
//    graph[b].append(a)
//
//    graph[a].sort()
//    graph[b].sort()
//}
//
//var visited: [Bool] = Array(repeating: false, count: N+1)
//var result: Int = 0
//
//func dfs(_ v: Int) {
//    visited[v] = true
//    for i in graph[v] {
//        if visited[i] == false {
//            visited[i] = true
//            dfs(i)
//        }
//    }
//}
//
//for i in 1...N {
//    if visited[i] == false {
//        result += 1
//        dfs(i)
//    }
//}
//
//print(result)

// MARK: - 백준 14502번 연구소

//let read: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//let N: Int = read[0]
//let M: Int = read[1]
//var graph: [[Int]] = []
//for _ in 0..<N {
//    graph.append(readLine()!.split(separator: " ").map{Int(String($0))!})
//}
//
//var safeArea: [(Int, Int)] = []
//var virusArea: [(Int, Int)] = []
//var tempGraph = graph
//for i in 0..<N {
//    for j in 0..<M {
//        if graph[i][j] == 0 {
//            safeArea.append((i, j))
//        } else if graph[i][j] == 2 {
//            virusArea.append((i, j))
//        }
//    }
//}
//
//
//var result: Int = 0
//let dx: [Int] = [1, -1, 0, 0]
//let dy: [Int] = [0, 0, 1, -1]
//
//func bfs(_ v: (Int, Int)) {
//    var queue = [v]
//
//    while !queue.isEmpty {
//        let k = queue.removeFirst()
//        for i in 0..<4 {
//            let nx: Int = k.0 + dx[i]
//            let ny: Int = k.1 + dy[i]
//
//            if nx < 0 || nx >= N || ny < 0 || ny >= M {
//                continue
//            }
//
//            if tempGraph[nx][ny] == 0 {
//                tempGraph[nx][ny] = 2
//                queue.append((nx, ny))
//            }
//        }
//    }
//}
//
//func getSafeArea() -> Int {
//    var safeAreaCount = 0
//    for i in 0..<N {
//        for j in 0..<M {
//            if tempGraph[i][j] == 0 {
//                safeAreaCount += 1
//            }
//        }
//    }
//
//    return safeAreaCount
//}
//
//
//for i in 0..<safeArea.count {
//    for j in (i+1)..<safeArea.count {
//        for k in (j+1)..<safeArea.count {
//            tempGraph = graph
//            let a = safeArea[i]
//            let b = safeArea[j]
//            let c = safeArea[k]
//
//            tempGraph[a.0][a.1] = 1
//            tempGraph[b.0][b.1] = 1
//            tempGraph[c.0][c.1] = 1
//
//            for virus in virusArea {
//                bfs(virus)
//            }
//
//            result = max(result, getSafeArea())
//
//        }
//    }
//}
//
//print(result)

// MARK: - 백준 2667번 단지번호붙이기 (다시 풀기)

//let n: Int = Int(readLine()!)!
//var apt: [[Int]] = []
//
//for _ in 0..<n {
//    apt.append(readLine()!.map{Int(String($0))!})
//}
//
//var group: [Int] = []
//var count = 0
//
//let dx: [Int] = [1, -1, 0, 0]
//let dy: [Int] = [0, 0, 1, -1]
//
//func dfs(_ x: Int, _ y: Int) {
//    if x<0 || x>=n || y<0 || y>=n || apt[x][y] == 0 {
//        return
//    }
//
//    count += 1
//    apt[x][y] = 0
//
//    for i in 0..<4 {
//        let nx: Int = x + dx[i]
//        let ny: Int = y + dy[i]
//
//        dfs(nx, ny)
//    }
//}
//
//for i in 0..<n {
//    for j in 0..<n {
//        if apt[i][j] == 1 {
//            count = 0
//            dfs(i, j)
//            group.append(count)
//        }
//    }
//}
//
//
//print(group.count)
//group.sorted().forEach{print($0)}


// MARK: - 백준 2750번 수 정렬하기

//let n: Int = Int(readLine()!)!
//var arr: [Int] = []
//for _ in 0..<n {
//    arr.append(Int(readLine()!)!)
//}
//
//arr.sorted().forEach{print($0)}

// MARK: - 백준 2751번 수 정렬하기 2

//(0..<Int(readLine()!)!).map{ _ in
//    Int(readLine()!)!
//}.sorted().forEach{print($0)}

// MARK: - 백준 1427번 소트인사이드

//let num: [Int] = readLine()!.map{Int(String($0))!}.sorted(by: >)
//print(num.map{String($0)}.joined(separator: ""))

// MARK: - 백준 1181번 단어 정렬

//let n: Int = Int(readLine()!)!
//var arr: Set<String> = []
//for _ in 0..<n {
//    arr.insert(readLine()!)
//}
//
//arr.sorted { first, second in
//    if first.count == second.count {
//        return first < second
//    } else {
//        return first.count < second.count
//    }
//}.forEach{print($0)}

// MARK: - 백준 10989번 수 정렬하기 3

//let n: Int = Int(readLine()!)!
//var arr: [Int] = Array(repeating: 0, count: 10001)
//
//for _ in 0..<n {
//    arr[Int(readLine()!)!] += 1
//}
//
//var result: String = ""
//
//for i in 1...10000 {
//    if arr[i] != 0 {
//        result += String(repeating: "\(i)\n", count: arr[i])
//    }
//}
//
//print(result)

// MARK: - 백준 11650번 좌표 정렬하기

//let n: Int = Int(readLine()!)!
//var board: [(Int,Int)] = []
//for _ in 0..<n {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//    board.append((temp[0], temp[1]))
//}
//
//board.sorted(by: {
//    if $0.0 == $1.0 {
//        return $0.1 < $1.1
//    }
//    return $0.0 < $1.0
//}).forEach({print($0.0, $0.1)})


// MARK: - 백준 2309번 일곱 난쟁이

//var nan: [Int] = []
//for _ in 0..<9 {
//    nan.append(Int(readLine()!)!)
//}
//nan.sort()
//var sum: Int = nan.reduce(0, +)
//
//
//for i in 0..<8 {
//    for j in i+1..<9 {
//        if sum - (nan[i] + nan[j]) == 100 {
//            for index in 0..<9 {
//                if index != i && index != j {
//                    print(nan[index])
//                }
//            }
//            exit(0)
//        }
//    }
//}

// MARK: - 백준 10814번 나이순 정렬
//let n: Int = Int(readLine()!)!
//var members: [(Int, Int, String)] = []
//for index in 0..<n {
//    let temp: [String] = readLine()!.split(separator: " ").map{String($0)}
//    members.append((index, Int(temp[0])!, temp[1]))
//}
//
//members.sorted{
//    if $0.1 == $1.1 {
//        return $0.0 < $1.0
//    }
//    return $0.1 < $1.1
//}.forEach({print("\($0.1) \($0.2)")})

// MARK: - 백준 11651번 좌표 정렬하기 2

//let n: Int = Int(readLine()!)!
//var board: [(Int, Int)] = []
//for _ in 0..<n {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//    board.append((temp[0], temp[1]))
//}
//
//board.sorted{
//    if $0.1 == $1.1 {
//        return $0.0 < $1.0
//    }
//    return $0.1 < $1.1
//}.forEach{print("\($0.0) \($0.1)")}

// MARK: - 백준 1026번 보물

//let n: Int = Int(readLine()!)!
//var A: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
//var B: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted(by: >)
//var result: Int = 0
//
//for index in 0..<n {
//    result += A[index] * B[index]
//}
//
//print(result)

// MARK: - 백준 2108번 통계학

//let n: Int = Int(readLine()!)!
//var arr: [Int] = []
//
//for _ in 0..<n {
//    arr.append(Int(readLine()!)!)
//}
//arr.sort()
//
//var temp: [Int:Int] = [:]
//
//print("---")
//print(Int(round(Double(arr.reduce(0, +)) / Double(n))))
//print(arr[n / 2])
//
//for i in 0..<n {
//    if temp[arr[i]] == nil {
//        temp[arr[i]] = 1
//    } else {
//        temp[arr[i]]! += 1
//    }
//}
//
//var dict = temp.sorted{
//    if $0.value == $1.value {
//        return $0.key < $0.key
//    }
//    return $0.value < $1.value
//
//}
//
//let maxValue: Int = dict.max(by: {$0.value < $1.value})!.value
//var k = dict.filter({$0.value == maxValue}).sorted{$0.key < $1.key}
//
//if k.count > 1 {
//    print(k[1].key)
//} else {
//    print(k[0].key)
//}
//
//print(arr[n-1] - arr[0])
//


// MARK: - 백준 10816번 숫자 카드 2

//let n: Int = Int(readLine()!)!
//let arr: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//let m: Int = Int(readLine()!)!
//let card: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//
//var dict: [Int:Int] = [:]
//
//for value in arr {
//    if dict[value] == nil {
//        dict[value] = 1
//    } else {
//        dict[value]! += 1
//    }
//}
//
//var result: [Int] = []
//
//for value in card {
//    result.append(dict[value] ?? 0)
//}
//print(result.map{String($0)}.joined(separator: " "))

// MARK: - 백준 10815번 숫자 카드

//func solution() {
//    let n: Int = Int(readLine()!)!
//    let sangen: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
//    let m: Int = Int(readLine()!)!
//    let card: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//
//    var result: [String] = []
//
//    for num in card {
//        if binarySearch(left: 0, right: n-1, number: num, array: sangen) {
//            result.append("1")
//        } else {
//            result.append("0")
//        }
//    }
//
//    print(result.joined(separator: " "))
//
//}
//
//func binarySearch(left: Int, right: Int, number: Int, array: [Int]) -> Bool {
//    var start = left
//    var end = right
//
//    while start <= end {
//        let middle = (start + end) / 2
//
//        if array[middle] == number {
//            return true
//        }
//
//        if array[middle] > number {
//            end = middle - 1
//        } else {
//            start = middle + 1
//        }
//    }
//    return false
//}
//
//solution()

// MARK: - 백준 2217번 로프

//let n: Int = Int(readLine()!)!
//var rope: [Int] = []
//for _ in 0..<n {
//    rope.append(Int(readLine()!)!)
//}
//
//rope.sort(by: >)
//var maxValue: Int = 0
//
//for index in 0..<n {
//    if maxValue < rope[index] * (index + 1) {
//        maxValue = rope[index] * (index + 1)
//    } else {
//        continue
//    }
//
//}
//
//print(maxValue)

// MARK: - 백준 1764번 듣보잡

//let read: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n: Int = read[0]
//let m: Int = read[1]
//var dict: [String:Int] = [:]
//
//for _ in 0..<(n+m) {
//    let temp: String = readLine()!
//    if dict[temp] == nil {
//        dict[temp] = 1
//    } else {
//        dict[temp]! += 1
//    }
//}
//
//var result: [String] = []
//dict.sorted{$0.key < $1.key}.forEach{
//    if $0.value == 2 {
//        result.append($0.key)
//    }
//}
//
//print(result.count)
//result.forEach({print($0)})

// MARK: - 백준 2752번 세수정렬

//print(readLine()!.split(separator: " ").map{Int(String($0))!}.sorted().map{String($0)}.joined(separator: " "))

// MARK: - 백준 18870번 좌표 압축
//let n: Int = Int(readLine()!)!
//let arr: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//var dict: [Int:Int] = [:]
//var count = 0
//
//for i in arr.sorted() {
//    if dict[i] == nil {
//        dict[i] = count
//        count += 1
//    }
//}
//
//print(arr.map{String(dict[$0]!)}.joined(separator: " "))
//
//print(arr.map{String($0)})

// MARK: - 백준 K번째 수

//let read: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//var arr: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//
//for i in 0..<arr.count {
//    var minIndex: Int = i
//    for j in i+1..<arr.count {
//        if arr[minIndex] > arr[j] {
//            minIndex = j
//        }
//    }
//    arr.swapAt(i, minIndex)
//
//
//}
//
//print(arr[read[1]-1])

// MARK: - 백준 10825번 국영수
//let n: Int = Int(readLine()!)!
//var arr: [(String, Int, Int, Int)] = []
//
//for _ in 0..<n {
//    let temp: [String] = readLine()!.split(separator: " ").map{String($0)}
//    arr.append((temp[0], Int(temp[1])!, Int(temp[2])!, Int(temp[3])!))
//}
//
//arr.sorted{
//    if $0.1 == $1.1 {
//            if $0.2 == $1.2 {
//                if $0.3 == $1.3 {
//                    return $0.0 < $1.0
//                }
//                return $0.3 > $1.3
//            }
//            return $0.2 < $1.2
//        }
//        return $0.1 > $1.1
//}.forEach{print($0.0)}

// MARK: - 백준 11656번 접미사 배열
//let s: String = readLine()!
//var arr: [String] = []
//for i in 0..<s.count {
//    arr.append(s.map{String($0)}[i..<s.count].joined(separator: ""))
//}
//arr.sorted{$0 < $1}.forEach{print($0)}

// MARK: - 백준 1946번 신입사원

//let test = Int(readLine()!)!
//func solution() {
//    let n: Int = Int(readLine()!)!
//    var people: [[Int]] = []
//    for _ in 0..<n {
//        people.append(readLine()!.split(separator: " ").map{Int(String($0))!})
//    }
//    people.sort{$0[0]<$1[0]}
//    var result: Int = 1
//
//    var maxValue: Int = people[0][1]
//
//    for i in 1..<n {
//        if maxValue > people[i][1] {
//            result += 1
//            maxValue = people[i][1]
//        }
//    }
//    print(result)
//}
//
//for _ in 0..<test {
//    solution()
//}

// MARK: - 백준 11720 숫자의 합

//let n: Int = Int(readLine()!)!
//print(readLine()!.map{Int(String($0))!}.reduce(0, +))

// MARK: - 백준 8958번 OX퀴즈
//let n: Int = Int(readLine()!)!
//func solution() {
//    let arr: [String] = readLine()!.map{String($0)}
//    var result: Int = 0
//    var temp: [Int] = []
//    var count = 0
//    for i in 0..<arr.count {
//        if arr[i] == "O" {
//            count += 1
//            if i == arr.count - 1 {
//                temp.append(count)
//            }
//        } else {
//            if count != 0 {
//                temp.append(count)
//                count = 0
//            }
//
//        }
//    }
//    for num in temp {
//        result += Array(1...num).reduce(0, +)
//    }
//    print(result)
//}
//for _ in 0..<n {
//    solution()
//}
//
//let num : Int = Int(readLine()!)!
//for _ in 0..<num {
//    print(readLine()!.split{ $0 == "X"}.map{$0.count*($0.count+1)/2}.reduce(0, +))
//}

// MARK: - 백준 1152번 단어의 개수
// print(readLine()!.split(separator: " ").map{String($0)}.count)

// MARK: - 백준 10809번 알파벳 찾기
//let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
//
//let a = readLine()!.map{String($0)}
//
//for o in 0...25 {
//  if a.contains(alphabet[o]) {
//      print(a.firstIndex(of:alphabet[o])!,terminator:" ")
//  }else {
//    print("-1",terminator:" ")
//  }
//}

// MARK: - 백준 2675번 문자열 반복
//let testCases: Int = Int(readLine()!)!
//func solution() {
//    let read: [String] = readLine()!.split(separator: " ").map{String($0)}
//    let n: Int = Int(read[0])!
//    let strArr: [String] = read[1].map{String($0)}
//    var result: String = ""
//    for index in 0..<strArr.count {
//        for _ in 0..<n {
//            result += strArr[index]
//        }
//    }
//    print(result)
//}
//for _ in 0..<testCases {
//    solution()
//}

// MARK: - 백준 1157번 단어 공부
//let str: String = readLine()!.uppercased()
//var dict: [String:Int] = [:]
//for text in str {
//    if dict[String(text)] == nil {
//        dict[String(text)] = 1
//    } else {
//        dict[String(text)]! += 1
//    }
//}
//
//var result: [String] = []
//
//for key in dict.keys {
//    if dict[key] == dict.values.max() {
//        result.append(key)
//    }
//}
//
//print(result.count == 1 ? result[0] : "?")

// MARK: - 백준 1316번 그룹 단어 체커

//let n: Int = Int(readLine()!)!
//var count: Int = 0
//for _ in 0..<n {
//    let strArr: [String] = readLine()!.map{String($0)}
//    var error: Int = 0
//    for index in 0..<strArr.count-1 {
//        if strArr[index] != strArr[index+1] {
//            var newArr: [String] = []
//            for j in (index+1)..<strArr.count {
//                newArr.append(strArr[j])
//            }
//            if newArr.contains(strArr[index]) {
//                error += 1
//            }
//        }
//    }
//    if error == 0 {
//        count += 1
//    }
//}
//
//print(count)

// MARK: - 백준 2941번 크로아티아 알파벳
//let croatia: [String] = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
//var str: String = readLine()!
//var result: Int = 0
//
//var idx: Int = 0
//
//for index in 0..<croatia.count {
//    str = str.replacingOccurrences(of: croatia[index], with: "1")
//}
//
//print(str.count)


// MARK: - 백준 11721번 열 개씩 끊어 출력하기

//let str: [String] = readLine()!.map{String($0)}
//let count = str.count / 10
//
//for i in 0..<count {
//    print(str[(i*10)...(i+1)*10-1].joined(separator: ""))
//}
//
//let rest: String = str[(10*count)..<str.count].joined(separator: "")
//
//if rest != "" {
//    print(rest)
//}

// MARK: - 백준 11719번 그대로 출력하기 2
//while true {
//    guard let text = readLine() else {
//        break
//    }
//    print(text)
//}

// MARK: - 백준 10953번 A+B - 6
//let n: Int = Int(readLine()!)!
//var arr: [[Int]] = []
//for _ in 0..<n {
//    arr.append(readLine()!.split(separator: ",").map{Int(String($0))!})
//}
//
//for i in 0..<arr.count {
//    print(arr[i].reduce(0, +))
//}

// MARK: - 백준 10808번 알파벳 개수

//var dict: [String:Int] = ["a":0, "b":0, "c":0, "d":0, "e":0, "f":0, "g":0, "h":0, "i":0, "j":0, "k":0, "l":0, "m":0, "n":0, "o":0, "p":0, "q":0, "r":0, "s":0, "t":0, "u":0, "v":0, "w":0, "x":0, "y":0, "z":0]
//let str: String = readLine()!
//
//for text in str {
//    dict[String(text)]! += 1
//}
//
//for i in dict.sorted{$0.key < $1.key} {
//    print(i.value, terminator: " ")
//}

// MARK: - 백준 1100번 하얀 칸
//let chess: [[String]] = [
//    ["w", "b", "w", "b", "w", "b", "w", "b"],
//    ["b", "w", "b", "w", "b", "w", "b", "w"],
//    ["w", "b", "w", "b", "w", "b", "w", "b"],
//    ["b", "w", "b", "w", "b", "w", "b", "w"],
//    ["w", "b", "w", "b", "w", "b", "w", "b"],
//    ["b", "w", "b", "w", "b", "w", "b", "w"],
//    ["w", "b", "w", "b", "w", "b", "w", "b"],
//    ["b", "w", "b", "w", "b", "w", "b", "w"]
//]
//
//var result: Int = 0
//
//var board: [[String]] = []
//
//for _ in 0..<8 {
//    board.append(readLine()!.map{String($0)})
//}
//
//
//for i in 0..<8 {
//    for j in 0..<8 {
//        if board[i][j] == "F" && chess[i][j] == "w" {
//            result += 1
//        }
//    }
//}
//
//print(result)

// MARK: - 백준 5430번 AC

//let testCases: Int = Int(readLine()!)!
//
//for _ in 0..<testCases {
//    let function: String = readLine()!
//    let length: Int = Int(readLine()!)!
//    let arr = readLine()!.dropFirst().dropLast().split(separator: ",").map{Int(String($0))!}
//
//    var head = 0
//    var tail = length - 1
//
//    var isReversed: Bool = false
//    var isError: Bool = false
//
//    for text in function {
//        if text == "R" {
//            isReversed.toggle()
//        } else {
//            if head > tail {
//                isError = true
//                break
//            }
//
//            if isReversed {
//                tail -= 1
//            } else {
//                head += 1
//            }
//        }
//    }
//
//    if isError {
//        print("error")
//    } else if head > tail {
//        print("[]")
//    } else {
//        var result: String = ""
//        if isReversed {
//            result = arr[head...tail].reversed().map { String($0) }.joined(separator: ",")
//        } else {
//            result = arr[head...tail].map { String($0) }.joined(separator: ",")
//        }
//        print("[\(result)]")
//    }
//}

// MARK: - 백준 2902번 KMP는 왜 KMP일까?

//let name: [String] = readLine()!.split(separator: "-").map{String($0)}
//var result: String = ""
//
//for text in name {
//    result += String(text.first!)
//}
//
//print(result)

// MARK: - 백준 1212번 8진수 2진수
//let octal = readLine()!
//
//var answer = ""
//
//let arr: [String] = [
//  "000",
//  "001",
//  "010",
//  "011",
//  "100",
//  "101",
//  "110",
//  "111"
//]
//
//octal.forEach { answer += arr[Int(String($0))!] }
//
//while answer.first == "0" {
//  answer = String(answer.dropFirst())
//}
//
//if answer.isEmpty {
//  print(0)
//} else {
//  print(answer)
//}

// MARK: - 백준 10988번 팰린드롬인지 확인하기

//let str: [String] = readLine()!.map{String($0)}
//var start: Int = 0
//var end: Int = str.count - 1
//
//var result: Int = 1
//while start <= end {
//    if str[start] == str[end] {
//        start += 1
//        end -= 1
//
//    } else {
//        result = 0
//        break
//    }
//}
//print(result)


// MARK: - 백준 1978번 소수 찾기

//let N = Int(readLine()!)!
//var count = 0
//var isPrimeNumber = true
//var arr = readLine()!.split(separator: " ").map{ Int($0)! }
//for i in 0..<arr.count {
//    if arr[i] == 1 {
//        isPrimeNumber = false
//    }else {
//        for j in 2..<arr[i] {
//            if arr[i] % j == 0 {
//                isPrimeNumber = false
//            }
//        }
//    }
//    if isPrimeNumber == true {
//        count += 1
//    }
//    isPrimeNumber = true
//}
//print("\(count)")

// MARK: - 백준 1929번 소수 구하기
//let num: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = num[0]
//let m: Int = num[1]
//
//var arr: [Int] = Array(repeating: 0, count: m+1)
//for i in 2...m {
//    arr[i] = i
//}
//
//for j in 2...m {
//    if arr[j] == 0 {continue}
//    for k in stride(from: j+j, through: m, by: j) {
//        arr[k] = 0
//    }
//}
//
//for k in n...m {
//    if arr[k] != 0 {
//        print(arr[k])
//    }
//}

// MARK: - 백준 4948번 베르트랑 공준

//while true {
//    let n: Int = Int(readLine()!)!
//    if n == 0 {
//        break
//    }
//
//    var arr: [Int] = Array(0...n*2)
//    arr[1] = 0
//
//
//    for i in 2...n*2 {
//        if arr[i] == 0 {
//            continue
//        }
//
//        for j in stride(from: i*2, through: n*2, by: i) {
//            arr[j] = 0
//        }
//    }
//
//    var count: Int = 0
//    for i in n+1...n*2 {
//        if arr[i] != 0 {
//            count += 1
//        }
//    }
//
//    print(count)
//}

// MARK: - 백준 9020번 골드바흐의 추측
//var arr: [Int] = Array(0...10001)
//arr[1] = 0
//for i in 2...10001 {
//    if arr[i] == 0 {continue}
//    for j in stride(from: i*2, through: 10001, by: i) {
//        arr[j] = 0
//    }
//}
//
//let testCases: Int = Int(readLine()!)!
//
//for _ in 0..<testCases {
//    let n: Int = Int(readLine()!)!
//    var collection: [(Int, Int)] = []
//    for i in 1...(n/2) {
//        collection.append((i,n-i))
//    }
//
//    var temp: [(Int, Int)] = []
//    for c in collection {
//        if arr[c.0] != 0 && arr[c.1] != 0 {
//            temp.append(c)
//        }
//    }
//
//    if temp.count == 1 {
//        print("\(temp[0].0) \(temp[0].1)")
//    } else {
//        var min: Int = 10000
//        for i in 0..<temp.count {
//            if (temp[i].1 - temp[i].0) <= min {
//                min = temp[i].1 - temp[i].0
//                if i == temp.count - 1 {
//                    print("\(temp[i].0) \(temp[i].1)")
//                    break
//                }
//            } else {
//                print("\(temp[i-1].0) \(temp[i-1].1)")
//                break
//            }
//        }
//    }
//}

// MARK: - 백준 6588번 골드바흐의 추측

//var aa = Array(repeating: 0, count: 1000001)
//var isGoldBach = false
//for i in 2...1000000{
//    aa[i] = i
//}
//for i in 2...1000000{
//    if aa[i] == 0{continue}
//    for j in stride(from: i + i, through: 1000000, by: i){
//        aa[j] = 0
//    }
//}
//
//while true{
//    let n = Int(String(readLine()!))!
//    if n == 0{
//        break
//    }
//    for i in 3..<((n / 2)+1){
//        if i % 2 == 1 && aa[i] != 0 && aa[n - i] != 0 {
//            print("\(n) = \(i) + \(n - i)")
//            isGoldBach = true
//            break
//        }
//    }
//    if !isGoldBach{
//        print("Goldbach's conjecture is wrong.")
//    }
//    isGoldBach = false
//}

// MARK: - 백준 2960번 에라토스테네스의 체
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let N: Int = read[0]
//let K: Int = read[1]
//
//var arr: [Int] = Array(repeating: 0, count: N+1)
//for i in 2...N {
//    arr[i] = i
//}
//
//var count = 0
//for i in 2...N {
//    if arr[i] == 0 {continue}
//    for j in stride(from: i, through: N, by: i) {
//        if arr[j] == 0 {
//            continue
//        } else {
//            count += 1
//            if count == K {
//                print(j)
//                break
//            }
//            arr[j] = 0
//        }
//
//    }
//}

// MARK: - 백준 1016번 제곱 ㄴㄴ수

//let input = readLine()!.split(separator: " ").map{Int($0)!}
//var values: [Bool] = Array(repeating: true, count: Int(input[1] - input[0]) + 1)
//
//if input[1] >= 2 {
//    for i in 2...input[1] {
//        if i * i > input[1] {
//            break
//        }
//        if i * i >= input[0] {
//            values[Int(i * i - input[0])] = false
//        }
//        let k = input[0] / (i * i)
//        for j in k...input[1] {
//            if i * i * j >= input[0] && i * i * j <= input[1] {
//                values[Int(i * i * j - input[0])] = false
//            } else if i * i * j > input[1] {
//                break
//            }
//        }
//    }
//}
//
//print(values.filter{$0 == true}.count)

// MARK: - 백준 2805번 나무 자르기

//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let N: Int = read[0]
//let M: Int = read[1] // 상근이가 가져가려는 나무의 길이
//
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//
//var start: Int = 0
//var end: Int = arr.max()!
//
//var result: Int = 0
//while start <= end {
//    var middle = (start + end) / 2
//    var sum: Int = 0
//    for i in arr {
//        if i > middle {
//            sum += i - middle
//        }
//    }
//
//
//    if sum < M {
//        end = middle - 1
//    } else {
//        result = middle
//        start = middle + 1
//    }
//}
//
//print(result)

// MARK: - 백준 1654번 랜선 자르기

//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var arr: [Int] = []
//
//let K: Int = read[0] // 배열 크기
//let N: Int = read[1] // 필요한 랜선의 개수
//
//for _ in 0..<K {
//    arr.append(Int(readLine()!)!)
//}
//
//var start: Int = 1
//var end: Int = arr.max()!
//var result: Int = 0
//while start <= end {
//    let middle: Int = (start + end) / 2
//    var sum = 0
//    for num in arr {
//        sum += num / middle
//    }
//
//
//    if sum < N {
//        end = middle - 1
//    } else {
//        if result < middle {
//            result = middle
//        }
//        start = middle + 1
//    }
//}
//
//print(result)

// MARK: - 백준 2512번 예산
//let n: Int = Int(readLine()!)!
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let maximum: Int = Int(readLine()!)!
//
//var start: Int = 1
//var end: Int = arr.max()!
//var result: Int = 0
//
//while start <= end {
//    let middle: Int = (start + end) / 2
//    var temp: Int = 0
//    for num in arr {
//        if num > middle {
//            temp += middle
//        } else {
//            temp += num
//        }
//    }
//
//    if temp > maximum {
//        end = middle - 1
//
//    } else {
//
//        start = middle + 1
//        result = max(result, middle)
//    }
//}
//
//print(result)

// MARK: - 백준 12015번 가장 긴 증가하는 부분 수열2
//let N: Int = Int(readLine()!)!
//let list: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var arr: [Int] = [list[0]]
//
//for i in 1..<N {
//
//    if arr.last! < list[i] {
//        arr.append(list[i])
//    } else {
//        var start: Int = 0
//        var end: Int = arr.count - 1
//
//        while start <= end {
//            let middle: Int = (start + end) / 2
//
//            if arr[middle] < list[i] {
//                start = middle + 1
//
//            } else {
//                end = middle - 1
//            }
//        }
//
//        arr[start] = list[i]
//    }
//}
//
//print(arr.count)

// MARK: - 백준 1300번 K번째 수
//let n: Int = Int(readLine()!)!
//let target: Int = Int(readLine()!)!
//var result: Int = 0
//
//var start: Int = 1
//var end: Int = target
//
//while start <= end {
//    let middle: Int = (start + end) / 2
//    var temp: Int = 0
//
//    for i in 1...n {
//        temp += min(middle/i, n)
//    }
//
//    if temp >= target {
//        result = middle
//        end = middle - 1
//    } else {
//        start = middle + 1
//    }
//}
//
//print(result)

// MARK: - 백준 2470번 두 용액

//let n: Int = Int(readLine()!)!
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
//var start: Int = 0
//var end: Int = n-1
//
//var result: (Int, Int) = (0, 0)
//var temp: Int = Int.max
//while start <= end {
//    let sum: Int = arr[start] + arr[end]
//
//    if sum < 0 {
//        if abs(sum) < temp {
//            result.0 = arr[start]
//            result.1 = arr[end]
//            temp = abs(sum)
//        }
//        start += 1
//    } else if sum > 0 {
//        if abs(sum) < temp {
//            result.0 = arr[start]
//            result.1 = arr[end]
//            temp = abs(sum)
//        }
//        end -= 1
//    } else {
//        result.0 = arr[start]
//        result.1 = arr[end]
//        temp = abs(sum)
//        break
//    }
//}
//
//print(result.0, result.1)

//MARK: - 백준 1072번 게임

//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let x: Int = read[0]
//let y: Int = read[1]
//
//var result: Int = -1
//var target: Int = Int(y*100/x)
//
//
//var start: Int = 1
//var end: Int = 1000000000
//
//while start <= end {
//    let middle: Int = (start + end) / 2
//
//    if Int((y+middle)*100/(x+middle)) != target {
//        end = middle - 1
//        result = middle
//
//    } else  {
//        start = middle + 1
//    }
//
//}
//print(result)

// MARK: - 백준 2609번 최대공약수와 최소공배수

//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var a: Int = max(read[0], read[1])
//var b: Int = min(read[0], read[1])
//
//func gcd(_ a: Int, _ b: Int) -> Int {
//    var x: Int = a
//    var y: Int = b
//
//    while y > 0 {
//        let temp: Int = x
//        x = y
//        y = temp % y
//    }
//    return x
//}
//print(gcd(a, b))
//
//func lcm(_ a: Int, _ b: Int) -> Int {
//    return a * b / gcd(a, b)
//}
//
//print(lcm(a, b))

// MARK: - 백준 1934번 최소공배수

//let testCases: Int = Int(readLine()!)!
//
//for _ in 0..<testCases {
//    let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    var a: Int = max(read[0], read[1])
//    var b: Int = min(read[0], read[1])
//
//    while b > 0 {
//        let temp: Int = a
//        a = b
//        b = temp % b
//    }
//
//    // 최대 공약수 -> a
//
//    print(read[0]*read[1] / a)
//
//}

// MARK: - 백준 9613번 GCD 합
//let n: Int = Int(readLine()!)!
//for _ in 0..<n {
//    var read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    read.removeFirst()
//    var result: Int = 0
//    for i in 0..<read.count - 1 {
//        for j in i+1..<read.count {
//            result += gcd(read[i], read[j])
//
//        }
//    }
//
//
//    print(result)
//}
//
//
//func gcd(_ a: Int, _ b: Int) -> Int {
//    var x: Int = max(a, b)
//    var y: Int = min(a, b)
//    while y>0 {
//        let temp: Int = x
//        x = y
//        y = temp % y
//    }
//    return x
//}

// MARK: - 백준 3036번 링
//let circle: Int = Int(readLine()!)!
//var arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var main: Int = arr.removeFirst()
//
//for num in arr {
//    var x: Int = main
//    var y: Int = num
//    while y > 0 {
//        let temp: Int = x
//        x = y
//        y = temp % y
//    }
//
//    print("\(main/x)/\(num/x)")
//}

// MARK: - 백준 1735번 분수 합

//var first: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var second: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//
//var bunza: Int = first[0]*second[1] + first[1]*second[0]
//var bunmo: Int = first[1] * second[1]
//
//let num: Int = gcd(bunza, bunmo)
//
//print("\(bunza/num) \(bunmo/num)")
//
//func gcd(_ a: Int, _ b: Int) -> Int {
//    var x: Int = max(a, b)
//    var y: Int = min(a, b)
//
//    while y>0 {
//        let temp: Int = x
//        x = y
//        y = temp % y
//    }
//
//    return x
//}

// MARK: - 백준 1850번 최대 공약수
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let result = gcd(read[0], read[1])
//
//print(String(repeating: "1", count: result))
//
//func gcd(_ a: Int, _ b: Int) -> Int {
//    var x: Int = max(a, b)
//    var y: Int = min(a, b)
//
//    while y>0 {
//        let temp: Int = x
//        x = y
//        y = temp % y
//    }
//
//    return x
//}

// MARK: - 백준 13241번 최소공배수

//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var a: Int = read[0]
//var b: Int = read[1]
//
//while b>0 {
//    let temp: Int = a
//    a = b
//    b = temp % b
//}
//
//print(read[0]*read[1]/a)

// MARK: - 백준 14490번 백대열

//let n: [Int] = readLine()!.split(separator: ":").map{Int($0)!}
//
//var a: Int = max(n[0], n[1])
//var b: Int = min(n[0], n[1])
//while b>0 {
//    let temp: Int = a
//    a = b
//    b = temp%a
//}
//
//print("\(n[0]/a):\(n[1]/a)")

// MARK: - 백준 5347번 LCM
//let testCases: Int = Int(readLine()!)!
//
//for _ in 0..<testCases {
//    let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    print(read[0]*read[1]/gcd(read[0], read[1]))
//}
//
//func gcd(_ a: Int, _ b: Int) -> Int{
//    var x: Int = max(a, b)
//    var y: Int = min(a, b)
//    while y>0 {
//        let temp: Int = x
//        x = y
//        y = temp % y
//    }
//    return x
//}

// MARK: - 백준 2436번 공약수
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var g: Int = read[0]
//var l: Int = read[1]
//var div: Int = l/g
//var a = 1
//var b = div
//
//for i in 1..<div/2 + 1 {
//    if div % i == 0 {
//        var c = i
//        var d = div / i
//        if gcd(c, d) != 1 {
//            continue
//        }
//        if a+b > c+d {
//            a = c
//            b = d
//        }
//    }
//}
//
//print(a*g, b*g)
//
//
//func gcd(_ a: Int, _ b: Int) -> Int{
//    var x: Int = max(a, b)
//    var y: Int = min(a, b)
//    while y>0 {
//        let temp: Int = x
//        x = y
//        y = temp % y
//    }
//    return x
//}

// MARK: - 백준 17087번 숨바꼭질 6
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let s: Int = read[1]
//var arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//for i in 0..<arr.count {
//    arr[i] = abs(arr[i]-s)
//}
//
//var result = arr[0]
//if arr.count == 1 {
//    print(result)
//} else {
//
//    for i in 1..<arr.count {
//        result = gcd(result, arr[i])
//    }
//    print(result)
//}
//
//func gcd(_ a: Int, _ b: Int) -> Int{
//    var x: Int = max(a, b)
//    var y: Int = min(a, b)
//    while y>0 {
//        let temp: Int = x
//        x = y
//        y = temp % y
//    }
//    return x
//}

// MARK: - 백준 2485번 가로수
//let n: Int = Int(readLine()!)!
//var arr: [Int] = []
//for _ in 0..<n {
//    arr.append(Int(readLine()!)!)
//}
//
//
//var gcdNum: Int = gcd(arr[1] - arr[0], arr[2] - arr[1])
//
//for i in 2..<n-1 {
//    gcdNum = gcd(gcdNum, arr[i+1] - arr[i])
//}
//
//print((arr[n-1] - arr[0]) / gcdNum - n + 1)
//
//
//func gcd(_ a: Int, _ b: Int) -> Int{
//    var x: Int = max(a, b)
//    var y: Int = min(a, b)
//    while y>0 {
//        let temp: Int = x
//        x = y
//        y = temp % y
//    }
//    return x
//}


// MARK: - 백준 2942번 퍼거슨과 사과
//let apple: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let redApple: Int = apple[0]
//let greenApple: Int = apple[1]
//
//let gcdNum: Int = gcd(redApple, greenApple)
//
//var arr: [Int] = []
//for i in 1...gcdNum {
//    if gcdNum % i == 0 {
//        arr.append(i)
//    }
//}
//
//for num in arr {
//    print("\(num) \(redApple/num) \(greenApple/num)")
//}
//
//
//func gcd(_ a: Int, _ b: Int) -> Int{
//    var x: Int = max(a, b)
//    var y: Int = min(a, b)
//    while y>0 {
//        let temp: Int = x
//        x = y
//        y = temp % y
//    }
//    return x
//}

//// MARK: - 백준 2168번 타일 위의 대각선
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//print(read[0] + read[1] - gcd(read[0], read[1]))
//
//func gcd(_ a: Int, _ b: Int) -> Int{
//    var x: Int = max(a, b)
//    var y: Int = min(a, b)
//    while y>0 {
//        let temp: Int = x
//        x = y
//        y = temp % y
//    }
//    return x
//}

// MARK: - 백준 9417번 최대 GCD

//let testCases: Int = Int(readLine()!)!
//for _ in 0..<testCases {
//    let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    var result: Int = 1
//
//    for i in 0..<arr.count - 1 {
//        for j in i+1..<arr.count {
//            let temp: Int = gcd(arr[i], arr[j])
//            if temp > result {
//                result = temp
//            }
//        }
//    }
//    print(result)
//
//
//}
//
//
//func gcd(_ a: Int, _ b: Int) -> Int {
//    var x: Int = max(a, b)
//    var y: Int = min(a, b)
//    while y>0 {
//        let temp: Int = x
//        x = y
//        y = temp % y
//    }
//    return x
//}

// MARK: - 백준 13412번 서로소 쌍

//let testCases: Int = Int(readLine()!)!
//for _ in 0..<testCases {
//    let n: Int = Int(readLine()!)!
//    var result: Int = 0
//    for i in 1...Int(sqrt(Double(n))) {
//
//        if n%i == 0 {
//            var a = i
//            var b = n/i
//            if gcd(a, b) == 1 {
//                result += 1
//            }
//        }
//
//
//    }
//    print(result)
//}
//
//func gcd(_ a: Int, _ b: Int) -> Int {
//    var x: Int = max(a, b)
//    var y: Int = min(a, b)
//    while y>0 {
//        let temp: Int = x
//        x = y
//        y = temp % y
//    }
//    return x
//}


//MARK: - 백준 10822번 더하기

//print(readLine()!.split(separator: ",").map{Int($0)!}.reduce(0, +))

// MARK: - 백준 11816번 8진수, 10진수, 16진수

//let num: String = readLine()!
//
//if num.contains("0x") {
//    // 16진수
//    let index: String.Index = num.index(num.startIndex, offsetBy: 2)
//    print(Int(String(num[index...]), radix: 16)!)
//} else if num.first == "0" {
//    let index: String.Index = num.index(num.startIndex, offsetBy: 1)
//    print(Int(String(num[index...]), radix: 8)!)
//} else {
//    // 10진수
//    print(num)
//}


//var num: String = readLine()!
//if num.hasPrefix("0x") {
//    let result = num.dropFirst(2)
//    print(Int(result, radix: 16)!)
//} else if num.hasPrefix("0") {
//    print(Int(num, radix: 8)!)
//} else {
//    print(num)
//}

// MARK: - 백준 10769번 행복한지 슬픈지

//let s: [String] = readLine()!.map{String($0)}
//var happy: Int = 0
//var sad: Int = 0
//
//for i in 0..<s.count-2 {
//
//    var text: String = s[i...i+2].joined(separator: "")
//    if text == ":-)" {
//        happy += 1
//    } else if text == ":-(" {
//        sad += 1
//    }
//}
//
//
//if happy == 0 && sad == 0 {
//    print("none")
//} else if happy == sad {
//    print("unsure")
//} else if happy > sad {
//    print("happy")
//} else if happy < sad {
//    print("sad")
//}



//let s: String = readLine()!
//var happy: Int = 0
//var sad: Int = 0
//for i in 0..<s.count - 2 {
//    var startIndex: String.Index = s.index(s.startIndex, offsetBy: i)
//    var endIndex: String.Index = s.index(s.startIndex, offsetBy: i+2)
//    if s[startIndex...endIndex] == ":-)" {
//        happy += 1
//    } else if s[startIndex...endIndex] == ":-(" {
//        sad += 1
//    }
//}
//if happy == 0 && sad == 0 {
//    print("none")
//} else if happy == sad {
//    print("unsure")
//} else if happy > sad {
//    print("happy")
//} else if happy < sad {
//    print("sad")
//}

// MARK: - 백준 10823번 더하기 2
//var text: String = ""
//
//while let str = readLine() {
//    text += str
//}
//
//print(text.split(separator: ",").map{Int(String($0))!}.reduce(0, +))

// MARK: - 백준 12605번 단어순서 뒤집기
//let n: Int = Int(readLine()!)!
//for i in 1...n {
//    var reverse: String = readLine()!.split(separator: " ").map{String($0)}.reversed().joined(separator: " ")
//    print("Case #\(i): \(reverse)")
//}


// MARK: - 다익스트라
// MARK: - 백준 1753번 최단 경로 -> 시간 초과 오류 but 기본 다익스트라 알고리즘 코드
//
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
///// 정점의 개수
//let V: Int = read[0]
///// 간성의 개수
//let E: Int = read[1]
///// 시작점
//let K: Int = Int(readLine()!)!
//
//var graph: [[(Int, Int)]] = Array(repeating: Array<(Int, Int)>(), count: V+1)
//
//for _ in 0..<E {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    graph[temp[0]].append((temp[1], temp[2]))
//}
//
//var visited: [Bool] = Array(repeating: false, count: V+1)
//var distance: [Int] = Array(repeating: Int.max, count: V+1)
//
//func getSmallestNode() -> Int {
//    var minValue: Int = Int.max
//    var index: Int = 0
//    for i in 1..<V+1 {
//        if distance[i] < minValue && visited[i] == false {
//            minValue = distance[i]
//            index = i
//        }
//        print("index: \(index)")
//
//    }
//    return index
//}
//
//func solution(_ start: Int) {
//    distance[start] = 0
//    visited[start] = true
//    for j in graph[start] {
//        distance[j.0] = j.1
//    }
//
//    print("K: \(distance)")
//
//    for i in 0..<V-1 {
//        let now = getSmallestNode()
//        print("now: \(now)")
//        visited[now] = true
//        for j in graph[now] {
//            let cost = distance[now] + j.1
//            if cost < distance[j.0] {
//                distance[j.0] = cost
//            }
//        }
//    }
//}
//
//solution(K)
//
//for i in 1..<V+1 {
//    if distance[i] == Int.max {
//        print("INF")
//    } else {
//        print(distance[i])
//    }
//}


//public struct Heap<T> {
//    var nodes: [T] = []
//    let comparer: (T, T) -> Bool
//    var isEmpty: Bool {
//        return nodes.isEmpty
//    }
//
//    init(comparer: @escaping (T,T) -> Bool) {
//        self.comparer = comparer
//    }
//
//    func peek() -> T? {
//        return nodes.first
//    }
//
//    mutating func insert(_ element: T) {
//        var index = nodes.count
//        nodes.append(element)
//        while index > 0, !comparer(nodes[index], nodes[(index-1)/2]) {
//            nodes.swapAt(index, (index-1)/2)
//            index = (index-1)/2
//        }
//    }
//
//    mutating func delete() -> T? {
//        guard !nodes.isEmpty else { return nil }
//        if nodes.count == 1 {
//            return nodes.removeFirst()
//        }
//        let result = nodes.first
//        nodes.swapAt(0, nodes.count-1)
//        _ = nodes.popLast()
//        var index = 0
//        while index < nodes.count {
//            let left = index * 2 + 1
//            let right = left + 1
//            if right < nodes.count {
//                if comparer(nodes[left], nodes[right]), !comparer(nodes[right], nodes[index]) {
//                    nodes.swapAt(right, index)
//                    index = right
//                } else if !comparer(nodes[left], nodes[index]){
//                    nodes.swapAt(left, index)
//                    index = left
//                } else {
//                    break
//                }
//            } else if left < nodes.count {
//                if !comparer(nodes[left], nodes[index]) {
//                    nodes.swapAt(left, index)
//                    index = left
//                } else { break }
//
//            } else { break }
//        }
//        return result
//    }
//}
//
//extension Heap where T: Comparable {
//    init() {
//        self.init(comparer: >) }
//}
//
//struct Data : Comparable {
//    static func < (lhs: Data, rhs: Data) -> Bool {
//        lhs.cost < rhs.cost
//
//    }
//    var cost : Int
//    var node : Int
//}
//
//let input = readLine()!.split(separator: " ").map { Int($0)! }
//let v = input[0], e = input[1]
//let start = Int(readLine()!)!
//let INF = Int(1e9)
//var distance = [Int](repeating: INF, count: v + 1)
//var graph = [[(Int, Int)]](repeating: [(Int, Int)](repeating: (0, 0), count: 0), count: v + 1)
//
//for _ in 0..<e {
//    let input = readLine()!.split(separator: " ").map { Int($0)! }
//    let u = input[0], v = input[1], w = input[2]
//    graph[u].append((v, w))
//}
//
//func dijkstra(start: Int) {
//    distance[start] = 0
//    var pq = Heap<Data>()
//    pq.insert(Data(cost: 0, node: start))
//
//    while !pq.isEmpty {
//        let now = pq.delete()!
//
//        if distance[now.node] < now.cost {
//            continue
//        }
//
//        for next in graph[now.node] {
//            if now.cost + next.1 < distance[next.0] {
//                distance[next.0] = now.cost + next.1
//                pq.insert(Data(cost: now.cost + next.1, node: next.0))
//            }
//        }
//    }
//
//}
//
//
//dijkstra(start: start)
//
//for i in 1...v {
//    if distance[i] == INF {
//        print("INF")
//    } else {
//        print(distance[i])
//    }
//}


// MARK: - 백준 1916번 최소비용 구하기
//let n: Int = Int(readLine()!)!  // 노드 개수
//let m: Int = Int(readLine()!)!  // 간선의 개수
//
//var graph: [[(Int, Int)]] = Array(repeating: Array<(Int, Int)>(), count: n+1)
//var visited: [Bool] = Array(repeating: false, count: n+1)
//var distance: [Int] = Array(repeating: Int.max, count: n+1)
//
//for _ in 0..<m {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    graph[temp[0]].append((temp[1], temp[2]))
//}
//
//var result: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//distance[result[0]] = 0
//solution(result[0])
//print(distance[result[1]])
//
//func solution(_ start: Int) {
//
//    if start == result[1] {
//        return
//    }
//
//    visited[start] = true
//
//    for j in graph[start] {
//        distance[j.0] = min(distance[j.0], distance[start] + j.1)
//    }
//
//    var min: Int = Int.max
//    var index: Int = -1
//    for i in 1..<distance.count {
//        if visited[i] == false && min > distance[i] {
//            min = distance[i]
//            index = i
//        }
//    }
//    solution(index)
//}
//

// MARK: - 백준 1238번 파티
//
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let m: Int = read[1]
//let x: Int = read[2]
//
//var result: Int = 0
//
//var graph: [[(Int, Int)]] = Array(repeating: Array<(Int, Int)>(), count: n+1)
//var visited: [Bool] = Array(repeating: false, count: n+1)
//var distance: [Int] = Array(repeating: 0, count: n+1)
//
//for _ in 0..<m {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    graph[temp[0]].append((temp[1], temp[2]))
//}
//
//
//for num in 1...n {
//    solution(num)
//    if distance[x] > result {
//        result = distance[x]
//    }
//
//    visited = Array(repeating: false, count: n+1)
//    distance = Array(repeating: 0, count: n+1)
//}
//
//print(result)
//
//
//func solution(_ start: Int) {
//    if start == x {
//        return
//    }
//
//    visited[start] = true
//
//    for i in graph[start] {
//        distance[i.0] = max(distance[i.0], distance[start] + i.1)
//    }
//
//    var max: Int = 0
//    var index: Int = -1
//    for i in 1..<distance.count {
//        if visited[i] == false && distance[i] > max {
//            max = distance[i]
//            index = i
//        }
//    }
//    solution(index)
//}

// MARK: - 백준 10867번 중복 빼고 정렬하기
//let n: Int = Int(readLine()!)!
//var arr: [Int] = Array(Set(readLine()!.split(separator: " ").map{Int($0)!})).sorted()
//print(arr.map{String($0)}.joined(separator: " "))

// MARK: - 백준 11725번 트리의 부모 찾기

//let n: Int = Int(readLine()!)!
//var tree: [[Int]] = Array(repeating: [], count: n+1)
//var visited: [Bool] = Array(repeating: false, count: n+1)
//var result: [Int] = Array(repeating: 0, count: n+1)
//
//
//for _ in 0..<n-1 {
//    let node: [Int] = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
//    tree[node[0]].append(node[1])
//    tree[node[1]].append(node[0])
//}
//
//
//func dfs(_ v: Int) {
//    visited[v] = true
//    for i in 0..<tree[v].count {
//        let k = tree[v][i]
//        if visited[k] == false {
//            result[k] = v
//            dfs(k)
//        }
//    }
//}
//
//dfs(1)
//
//print(result[2...n].map { String($0) }.joined(separator: "\n"))


// MARK: - 백준 1967번 트리의 지름

//let n: Int = Int(readLine()!)!
//var graph: [[(Int, Int)]] = Array(repeating: Array<(Int, Int)>(), count: n+1)
//for _ in 0..<n-1 {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    graph[temp[0]].append((temp[1], temp[2]))
//    graph[temp[1]].append((temp[0], temp[2]))
//}
//
//var result: Int = 0
//var endNode: Int = 0
//
//var visited: [Bool] = Array(repeating: false, count: n+1)
//
//func dfs(_ v: Int, _ distance: Int) {
//    if visited[v] == true {
//        return
//    }
//
//    visited[v] = true
//    if result < distance {
//        result = distance
//        endNode = v
//    }
//
//    for i in graph[v] {
//        dfs(i.0, distance + i.1)
//    }
//}
//
//dfs(1, 0)
//
//result = 0
//visited = Array(repeating: false, count: n+1)
//dfs(endNode, 0)
//print(result)

// MARK: - 백준 11279번 최대 힙

//let n: Int = Int(readLine()!)!
//var arr: [Int] = []
//
//for _ in 0..<n {
//    let temp: Int = Int(readLine()!)!
//
//    if temp == 0 {
//        if arr.isEmpty {
//            print(0)
//        } else {
//            var maxValue: Int = 0
//            var maxIndex: Int = 0
//            for i in 0..<arr.count {
//                if maxValue < arr[i] {
//                    maxValue = arr[i]
//                    maxIndex = i
//                }
//            }
//
//            arr[maxIndex] = 0
//            print(maxValue)
//        }
//    } else {
//        arr.append(temp)
//    }
//}

// MARK: - 백준 11286번 절댓값 힙

//let n: Int = Int(readLine()!)!
//var heap = Heap()
//
//for i in 0..<n {
//    let temp: Int = Int(readLine()!)!
//    if temp == 0 {
//        if heap.isEmpty() {
//            print(0)
//        } else {
//            print(heap.remove()!)
//        }
//    } else {
//        heap.add(temp)
//    }
//}
//
//
//
//struct Heap {
//    var array: [Int] = []
//    var compare : (Int, Int) -> Bool = {
//        if abs($0) == abs($1) {
//            return $0 > $1
//        } else {
//            return abs($0) > abs($1)
//        }
//    }
//
//    mutating func add(_ a: Int) {
//        array.append(a)
//        var index: Int = array.count - 1
//        while index > 0, compare(array[(index-1)/2], array[index]) {
//            array.swapAt((index-1)/2, index)
//            index = (index-1)/2
//        }
//    }
//
//    mutating func remove() -> Int? {
//        if array.isEmpty { return nil }
//        array.swapAt(0, array.count-1)
//        let returnValue = array.removeLast()
//        var index: Int = 0
//
//        while index<array.count {
//            let compareIndex = index * 2 + 1
//            var changed = false
//            if compareIndex + 1 < array.count {
//                if compare(array[index], array[compareIndex]) {
//                    if compare(array[compareIndex], array[compareIndex+1]) {
//                        array.swapAt(index, compareIndex+1)
//                        index = compareIndex + 1
//                        changed = true
//                    } else {
//                        array.swapAt(index, compareIndex)
//                        index = compareIndex
//                        changed = true
//                    }
//                } else if compare(array[index], array[compareIndex+1]) {
//                    array.swapAt(index, compareIndex+1)
//                    index = compareIndex+1
//                    changed = true
//                }
//            } else if compareIndex < array.count {
//                if compare(array[index], array[compareIndex]) {
//                    array.swapAt(index, compareIndex)
//                    index = compareIndex
//                    changed = true
//                }
//            } else {
//                break
//            }
//            if changed == false {
//                break
//            }
//        }
//        return returnValue
//    }
//
//    func isEmpty() -> Bool {
//        return array.isEmpty
//    }
//
//}

// MARK: - 백준 1655번 가운데를 말해요

//let n: Int = Int(readLine()!)!
//var arr: [Int] = []
//var result: String = ""
//for _ in 0..<n {
//    let temp: Int = Int(readLine()!)!
//    if arr.count == 0 {
//        arr.append(temp)
//    } else {
//        arr.append(temp)
//        var baseNum: Int = temp
//        var baseIndex: Int = arr.count - 1
//
//        for index in stride(from: arr.count - 2, through: 0, by: -1) {
//            if arr[index] > baseNum {
//                arr.swapAt(index, baseIndex)
//                baseIndex = index
//            } else {
//                break
//            }
//        }
//    }
//
//    if arr.count % 2 == 1 {
//        result += "\(arr[arr.count/2])\n"
//        //print(arr[arr.count/2])
//    } else {
//        result += "\(min(arr[arr.count/2 - 1], arr[arr.count/2]))\n"
//        //print(min(arr[arr.count/2 - 1], arr[arr.count/2]))
//    }
//}

//struct Heap<T> {
//    var heap: [T]
//    var compare: (T, T) -> Bool
//
//    var root: T? {
//        if heap.isEmpty {
//            return nil
//        } else {
//            return heap[0]
//        }
//    }
//
//    init(compare: @escaping (T, T) -> Bool) {
//        heap = []
//        self.compare = compare
//    }
//
//    mutating func add(_ n: T) {
//        heap.append(n)
//        swapUp(heap.count - 1)
//    }
//
//    mutating func swapUp(_ index: Int) {
//        var now = index
//        while now > 0 {
//            let parent = (now - 1)/2
//            if compare(heap[now], heap[parent]) {
//                heap.swapAt(now, parent)
//                now = parent
//            } else {
//                break
//            }
//        }
//    }
//
//    mutating func swapDown(_ index: Int) {
//        var now = index
//        var child = index*2 + 1
//        let count = heap.count
//
//        while child < count {
//            if child + 1 < count {
//                child = compare(heap[child], heap[child+1]) ? child : child + 1
//            }
//            if compare(heap[child], heap[now]) {
//                heap.swapAt(now, child)
//                now = child
//                child = 2*now + 1
//            } else {
//                break
//            }
//        }
//    }
//}
//
//var maxHeap: Heap<Int> = Heap(compare: >)
//var minHeap: Heap<Int> = Heap(compare: <)
//
//let n = Int(readLine()!)!
//var answer = ""
//
//for i in 1 ... n {
//    let input = Int(readLine()!)!
//
//    if i % 2 == 0 {
//        minHeap.add(input)
//    } else {
//        maxHeap.add(input)
//    }
//
//    if minHeap.root == nil {
//        answer += "\(maxHeap.root!)\n"
//        continue
//    }
//
//    let a = maxHeap.root!
//    let b = minHeap.root!
//
//    if a > b {
//        minHeap.heap[0] = a
//        maxHeap.heap[0] = b
//    }
//
//    if i % 2 == 0 { maxHeap.swapDown(0) }
//    else { minHeap.swapDown(0) }
//
//    answer += "\(maxHeap.root!)\n"
//}
//
//print(answer)
//

// MARK: - 백준 4796번 캠핑 - 다시 풀기
//var count: Int = 1
//var result: Int = 0
//
//while true {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    if temp == [0, 0, 0] { break }
//
//    let L: Int = temp[0]
//    let P: Int = temp[1]
//    let V: Int = temp[2]
//
//    result += V/P*L
//
//    if V%P > L {
//        result += L
//    } else {
//        result += V%P
//    }
//
//    print("Case \(count): \(result)")
//    result = 0
//    count += 1
//}

// MARK: - 백준 4673번 셀프 넘버
//var arr: Set<Int> = []
//for i in 1...10000 {
//    arr.insert(solution(i))
//}
//
//func solution(_ n: Int) -> Int {
//    var sum = n
//    var num = n
//    while num > 0 {
//        sum = sum + num % 10
//        num = num / 10
//
//        if num == 0 {
//            break
//        }
//    }
//    return sum
//}
//
//for i in 1...10000 {
//    if arr.contains(i) == false {
//        print(i)
//    }
//}

// MARK: - 백준 4659번 비밀번호 발음하기
//while true {
//    /// 자음
//    let consonant: [String] = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
//    /// 모음
//    let diphthong: [String] = ["a", "e", "i", "o", "u"]
//    let password: [String] = readLine()!.map{String($0)}
//
//    var result: Bool = true
//
//    if password.joined(separator: "") == "end" {
//        break
//    }
//
//    if password.contains("a") || password.contains("e") || password.contains("i") || password.contains("o") || password.contains("u") {
//
//        if password.count == 1 {
//            // 여긴 무조건 true
//        } else if password.count == 2 {
//            for i in 0..<password.count-1 {
//                if password[i] == password[i+1] {
//                    if password[i] != "e" && password[i] != "o" {
//                        result = false
//                        break
//                    }
//                }
//            }
//        } else {
//            for i in 0..<password.count-2 {
//                if (consonant.contains(password[i]) && consonant.contains(password[i+1]) && consonant.contains(password[i+2])) || (diphthong.contains(password[i]) && diphthong.contains(password[i+1]) && diphthong.contains(password[i+2])) {
//                    result = false
//                    break
//                }
//            }
//
//            for i in 0..<password.count-1 {
//                if password[i] == password[i+1] {
//                    if password[i] != "e" && password[i] != "o" {
//                        result = false
//                        break
//                    }
//                }
//            }
//        }
//
//
//
//
//    } else {
//        result = false
//    }
//
//    // 최종적으로 결과물은
//    if result == true {
//        print("<\(password.joined(separator: ""))> is acceptable.")
//    } else {
//        print("<\(password.joined(separator: ""))> is not acceptable.")
//    }
//}

// MARK: - 백준 1037번 약수
//let n: Int = Int(readLine()!)!
//let arr: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//if arr.count == 1 {
//    print(arr[0]*arr[0])
//} else {
//    print(arr.max()! * arr.min()!)
//}

// MARK: - 백준 1059번 좋은 구간
//let n: Int = Int(readLine()!)!
//let arr: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//let target: Int = Int(readLine()!)!
//var leftArr: [Int] = []
//var rightArr: [Int] = []
//var result: Int = 0
//
//if arr.contains(target) {
//    print(result)
//} else {
//    for num in arr {
//        if num < target {
//            leftArr.append(num)
//        } else {
//            rightArr.append(num)
//        }
//    }
//
//    if leftArr.count == 0 {
//        leftArr = [0]
//    }
//    leftArr.sort()
//    rightArr.sort()
//
//    var start: Int = leftArr.last! + 1
//    var end: Int = rightArr[0] - 1
//
//
//    result = ((target - start) * (end - target + 1)) + (end - target)
//    print(result)
//}

// MARK: - 백준 1094번 막대기

//let n: [String] = String(Int(readLine()!)!, radix: 2).map{String($0)}
//print(n.filter{$0 == "1"}.count)

// MARK: - 백준 1246번 온라인 판매

//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let N: Int = read[0] // 달걀의 개수
//let M: Int = read[1] // 구매자 수
//var p: [Int] = []
//for _ in 0..<M {
//    p.append(Int(readLine()!)!)
//}
//p.sort(by: >)
//
//var price: Int = 0
//var sum: Int = 0
//
//if N>M {
//    for i in 0..<M {
//        if (i+1) * p[i] > sum {
//            sum = p[i] * (i+1)
//            price = p[i]
//        }
//    }
//} else {
//    for i in 0..<N {
//        if (i+1) * p[i] > sum {
//            sum = p[i] * (i+1)
//            price = p[i]
//        }
//    }
//}
//
//print("\(price) \(sum)")

// MARK: - 백준 1251번 단어 나누기

//let arr: [String] = readLine()!.map{String($0)}
//var result: String = ""
//
//for i in 0..<arr.count-2 {
//    for j in i+1..<arr.count-1 {
//        let a: [String] = arr[0...i].reversed()
//        let b: [String] = arr[i+1...j].reversed()
//        let c: [String] = arr[j+1..<arr.count].reversed()
//        let str: String = (a+b+c).joined(separator: "")
//
//        if result == "" || result > str {
//            result = str
//        }
//    }
//}
//
//print(result)

// MARK: - 백준 1292번 쉽게 푸는 문제

//let read: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//var arr: [Int] = []
//for i in 1...read[1] {
//    for _ in 0..<i {
//        arr.append(i)
//    }
//}
//print(arr[read[0]-1...read[1]-1].reduce(0, +))

// MARK: - 백준 1312번 소수

//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var initNum: Int = read[0]
//var result: Double = 0.0
//
//for _ in 0..<read[2] {
//    initNum = initNum % read[1]
//    initNum = initNum * 10
//    result = Double(initNum) / Double(read[1])
//}
//print(Int(result))

// MARK: - 백준 1331번 나이트 투어

//var visited = Array(repeating: Array(repeating: false, count: 7), count: 7)
//let dx = [1, 2, 2, 1, -1, -2, -2, -1]
//let dy = [2, 1, -1, -2, 2, 1, -1, -2]
//var startX = 0
//var startY = 0
//var preX = 0
//var preY = 0
//for i in 0..<36{
//    let read = readLine()!.map{String($0)}
//    let x = Int(exactly: Character(read[0]).asciiValue!)! - 65
//    let y = Int(read[1])! - 1
//    if i == 0{
//        startX = x
//        startY = y
//    }
//    if visited[x][y]{
//        break
//    }
//    visited[x][y] = true
//    var isEnded = false
//    for k in 0..<dx.count{
//        let aX = preX + dx[k]
//        let aY = preY + dy[k]
//        if aX == x && aY == y{
//            isEnded = true
//        }
//    }
//    if i != 0 && !isEnded{
//        break
//    }
//    if i == 35{
//        for k in 0..<dx.count{
//            let aX = x + dx[k]
//            let aY = y + dy[k]
//            if aX == startX && aY == startY{
//                print("Valid")
//                exit(0)
//            }
//        }
//    }
//    preX = x
//    preY = y
//}
//print("Invalid")
//

// MARK: - 백준 1340번 연도 진행바
//let calendar: [String] = readLine()!.split(separator: ",").map{String($0)}
//let month: String = calendar[0].split(separator: " ").map{String($0)}[0]
//let date: Int = Int(calendar[0].split(separator: " ").map{String($0)}[1])!
//let year: Int = Int(calendar[1].split(separator: " ").map{String($0)}[0])!
//let hour: Int = Int(calendar[1].split(separator: " ").map{String($0)}[1].split(separator: ":").map{String($0)}[0])!
//let min: Int = Int(calendar[1].split(separator: " ").map{String($0)}[1].split(separator: ":").map{String($0)}[1])!
//
//
//var leapYear: Bool = false
//
//if year%400 == 0 || (year%4 == 0 && year%100 != 0) {
//    leapYear = true
//}
//
//
//// 평년인 경우
//var totalMin: Int = leapYear ? 366*24*60 : 365*24*60
//var result: Int = 0
//
//if month == "January" {
//    result += 0
//
//} else if month == "February" {
//    result += leapYear ? 31*24*60 : 31*24*60
//
//} else if month == "March" {
//    result += leapYear ? 60*24*60 : 59*24*60
//
//} else if month == "April" {
//    result += leapYear ? 91*24*60 : 90*24*60
//
//} else if month == "May" {
//    result += leapYear ? 121*24*60 : 120*24*60
//
//} else if month == "June" {
//    result += leapYear ? 152*24*60 : 151*24*60
//
//} else if month == "July" {
//    result += leapYear ? 182*24*60 : 181*24*60
//
//} else if month == "August" {
//    result += leapYear ? 213*24*60 : 212*24*60
//
//} else if month == "September" {
//    result += leapYear ? 244*24*60 : 243*24*60
//
//} else if month == "October" {
//    result += leapYear ? 274*24*60 : 273*24*60
//
//} else if month == "November" {
//    result += leapYear ? 305*24*60 : 304*24*60
//
//} else if month == "December" {
//    result += leapYear ? 335*24*60 : 334*24*60
//
//}
//
//result += ((date-1)*24*60) + (hour*60) + min
//
//print(Double(result)/Double(totalMin)*100)
//


// MARK: - 백준 1343번 폴리오미노

//let read: String = readLine()!
//var result: String = ""
//
//var xCount: Int = 0
//
//for text in read {
//    if text == "X" {
//        xCount += 1
//    } else {
//        if xCount != 0 {
//            check()
//        }
//
//        result += "."
//        xCount = 0
//    }
//}
//
//check()
//print(result)
//
//func check() {
//    if xCount%2 == 0 {
//        result += String(repeating: "AAAA", count: xCount/4)
//        xCount %= 4
//        if xCount - 2 == 0 {
//            result += "BB"
//        }
//    } else {
//        print("-1")
//        exit(0)
//    }
//}

//var read: String = readLine()!
//
//read = read.replacingOccurrences(of: "XXXX", with: "AAAA")
//read = read.replacingOccurrences(of: "XX", with: "BB")
//print(read.contains("X") ? "-1" : read)

// MARK: - 백준 1380번 귀걸이
//var count: Int = 1
//while true {
//    let n: Int = Int(readLine()!)!
//
//    if n == 0 {
//        break
//    }
//
//    var name: [String] = []
//    for _ in 0..<n {
//        name.append(readLine()!)
//    }
//
//    var dict: [String:Int] = [:]
//
//    for _ in 0..<n*2-1 {
//        let temp: [String] = readLine()!.split(separator: " ").map{String($0)}
//        if dict[temp[0]] == nil {
//            dict[temp[0]] = 1
//        } else {
//            dict[temp[0]]! += 1
//        }
//    }
//
//    var num: Int = 0
//
//    for (key, value) in dict {
//        if value == 1 {
//            num = Int(key)!
//            break
//        }
//    }
//
//    print("\(count) \(name[num-1])")
//    count += 1
//}

// MARK: - 백준 1417번 국회의원 선거

//let n: Int = Int(readLine()!)!
//var arr: [Int] = []
//for _ in 0..<n {
//    arr.append(Int(readLine()!)!)
//}
//
//var dasom: Int = arr.removeFirst()
//var count: Int = 0
//
//if arr.count == 0 {
//    print(count)
//} else {
//    while dasom <= arr.max()! {
//        let index = arr.firstIndex(of: arr.max()!)
//        arr[index!] = arr[index!] - 1
//        dasom += 1
//
//        count += 1
//    }
//
//    print(count)
//
//}


// MARK: - 백준 1436번 영화감독 숌

//let n: Int = Int(readLine()!)!
//var k: Int = 665
//var result: Int = 0
//while true {
//    k += 1
//
//    var count: Int = 0
//    for num in String(k) {
//        if num == "6" {
//            count += 1
//        } else {
//            count = 0
//        }
//
//        if count == 3 {
//            result += 1
//        }
//    }
//
//    if result == n {
//        print("\(k)")
//        break
//    }
//}
//

// MARK: - 백준 1475번 방 번호

//let cards: [Int] = readLine()!.map{Int(String($0))!}
//var arr: [Int] = Array(repeating: 0, count: 10)
//
//for card in cards {
//    arr[card] += 1
//}
//
////print(arr)
//arr[6] = (arr[6] + arr[9] + 1) / 2
//arr[9] -= arr[6]
//print(arr.max()!)

// MARK: - 백준 1476번 날짜 계산
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var k: Int = 1
//var E: Int = 1
//var S: Int = 1
//var M: Int = 1
//
//while true {
//    if E > 15 {
//        E = 1
//    }
//
//    if S > 28 {
//        S = 1
//    }
//
//    if M > 19 {
//        M = 1
//    }
//
//    if E==read[0] && S==read[1] && M==read[2] {
//        break
//    }
//    k += 1
//    E += 1
//    S += 1
//    M += 1
//}
//
//print(k)

// MARK: - 백준 1531번 투명
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var result: [[Int]] = Array(repeating: Array(repeating: 0, count: 101), count: 101)
//for _ in 0..<read[0] {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    for x in temp[0]...temp[2] {
//        for y in temp[1]...temp[3] {
//            result[x][y] += 1
//        }
//    }
//}
//var count = 0
//
//for i in 1...100 {
//    for j in 1...100 {
//        if result[i][j] > read[1] {
//            count += 1
//        }
//    }
//}
//
//
//print(count)


// MARK: - 백준 4446번 ROT13

//while true {
//
//    guard let str: String = readLine() else {
//        exit(0)
//    }
//
//    //3번째
//    let a: [String] = ["a", "i", "y", "e", "o", "u"]
//    let b: [String] = ["A", "I", "Y", "E", "O", "U"]
//
//    //10번째
//    let c: [String] = ["b", "k", "x", "z", "n", "h", "d", "c", "w", "g", "p", "v", "j", "q", "t", "s", "r", "l", "m", "f"]
//    let d: [String] = ["B", "K", "X", "Z", "N", "H", "D", "C", "W", "G", "P", "V", "J", "Q", "T", "S", "R", "L", "M", "F"]
//
//    var result: String = ""
//
//    for text in str {
//        if a.contains(String(text)) {
//            let index: Int = a.firstIndex(of: String(text))! + 3
//            if index >= a.count {
//                result += a[index-a.count]
//            } else {
//                result += a[index]
//            }
//
//
//        } else if b.contains(String(text)) {
//            let index: Int = b.firstIndex(of: String(text))! + 3
//            if index >= b.count {
//                result += b[index-b.count]
//            } else {
//                result += b[index]
//            }
//
//        } else if c.contains(String(text)) {
//            let index: Int = c.firstIndex(of: String(text))! + 10
//            if index >= c.count {
//                result += c[index-c.count]
//            } else {
//                result += c[index]
//            }
//
//        } else if d.contains(String(text)) {
//            let index: Int = d.firstIndex(of: String(text))! + 10
//            if index >= d.count {
//                result += d[index-d.count]
//            } else {
//                result += d[index]
//            }
//
//        } else {
//            result += String(text)
//        }
//    }
//
//    print(result)
//
//}

// MARK: - 백준 4383번 점프는 즐거워

//while true {
//
//    guard let read = readLine() else {
//        break
//    }
//    var arr = read.split(separator: " ").map{Int($0)}
//    let n: Int = arr.removeFirst()!
//    var result: [Bool] = Array(repeating: false, count: n)
//    for i in 0..<n-1 {
//
//        if abs(arr[i+1]!-arr[i]!) > 0 && abs(arr[i+1]!-arr[i]!) < n {
//            result[abs(arr[i+1]!-arr[i]!)] = true
//        }
//
//
//    }
//
//    var k = result[1..<n]
//
//    if k.contains(false) {
//        print("Not jolly")
//    } else {
//        print("Jolly")
//    }
//}

// MARK: - 백준 2033번 반올림
//var n: Int = Int(readLine()!)!
//var base: Int = 10
//while n > base {
//    if n%base >= base/2 {
//        n += base
//    }
//
//    n -= (n%base)
//    base *= 10
//}
//
//print(n)

// MARK: - 백준 5555번 반지
//let str: String = readLine()!
//let n: Int = Int(readLine()!)!
//var arr: [String] = []
//
//for _ in 0..<n {
//    let temp: String = readLine()!
//    arr.append(temp+temp)
//}
//
//print(arr.filter{$0.contains(str)}.count)

// MARK: - 백준 5671번 호텔 방 번호

//while true {
//    guard let read = readLine() else {
//        break
//    }
//
//    var testCases: [Int] = read.split(separator: " ").map{Int($0)!}
//    var result: Int = 0
//    for room in testCases[0]...testCases[1] {
//        let temp: String = String(room)
//        if Array(temp).count == Set(temp).count {
//            result += 1
//        }
//    }
//
//    print(result)
//
//}

// MARK: - 백준 5800번 성적 통계
//let n: Int = Int(readLine()!)!
//for num in 1...n {
//    var temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    let size: Int = temp.remove(at: 0)
//    let arr: [Int] = temp.sorted(by: >)
//    var gap: Int = 0
//    for index in 1..<arr.count {
//        if gap < arr[index-1] - arr[index] {
//           gap = arr[index-1] - arr[index]
//        }
//    }
//
//    print("Class \(num)")
//    print("Max \(arr[0]), Min \(arr[arr.count-1]), Largest gap \(gap)")
//
//
//}

// MARK: - 백준 1065번 한수
//let n: Int = Int(readLine()!)!
//var result: Int = 0
//
//for num in 1...n {
//    if num < 100 {
//        result += 1
//    } else if num >= 100 && num < 1000 {
//        let temp: String = String(num)
//        let arr: [Int] = temp.map{Int(String($0))!}
//        if arr[1] - arr[0] == arr[2] - arr[1] {
//            result += 1
//        }
//    }
//}
//
//print(result)


// MARK: - 백준 1120번 문자열
//let read: [String] = readLine()!.split(separator: " ").map{String($0)}
//let A: [String] = read[0].map{String($0)}
//var B: [String] = read[1].map{String($0)}
//
//var result: Int = 51
//
//for index in 0...(B.count - A.count) {
//    let tempB: [String] = Array(B[index..<A.count+index])
//    var tempResult: Int = 0
//    for i in 0..<A.count {
//        if tempB[i] != A[i] {
//            tempResult += 1
//        }
//    }
//
//    if result > tempResult {
//        result = tempResult
//    }
//}
//
//print(result)

// MARK: - 백준 1049번 기타줄
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let m: Int = read[1]
//var groupPrice: Int = 1001
//var originalPrice: Int = 1001
//for _ in 0..<m {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    if temp[0] < groupPrice {
//        groupPrice = temp[0]
//    }
//
//    if temp[1] < originalPrice {
//        originalPrice = temp[1]
//    }
//}
//
//// 6개 묶음 가격 = groupPrice
//// 개당 가격 = originalPrice
//
//var a: Int
//var b: Int
//var c: Int
//
//a = n*originalPrice
//b = ((n/6)+1)*groupPrice
//c = (n/6 * groupPrice) + (n%6 * originalPrice)
//
//print(min(a, b, c))

// MARK: - 백준 1063번 킹

//let read: [String] = readLine()!.split(separator: " ").map{String($0)}
//let kingTemp: [String] = read[0].map{String($0)}
//let stoneTemp: [String] = read[1].map{String($0)}
//var count: Int = Int(read[2])!
//let X: [String] = ["A", "B", "C", "D", "E", "F", "G", "H"]
//let Y: [String] = ["1", "2", "3", "4", "5", "6", "7", "8"]
//
//var king: (Int, Int) = (X.firstIndex(of: kingTemp[0])!, Y.firstIndex(of: kingTemp[1])!)
//var stone: (Int, Int) = (X.firstIndex(of: stoneTemp[0])!, Y.firstIndex(of: stoneTemp[1])!)
//
//var root: [String] = []
//for _ in 0..<count {
//    root.append(readLine()!)
//}
//
//for move in root {
//    if move == "R" {
//        // 한 칸 오른쪽으로 이동
//        if king.0 + 1 < 8 {
//
//            if (king.0+1, king.1) == stone {
//                if stone.0 + 1 < 8 {
//                    king.0 += 1
//                    stone.0 += 1
//                }
//            } else {
//                king.0 += 1
//            }
//        }
//
//    } else if move == "L" {
//        // 한 칸 왼쪽으로 이동
//        if king.0 - 1 >= 0 {
//
//            if (king.0-1, king.1) == stone {
//                if stone.0 - 1 >= 0 {
//                    king.0 -= 1
//                    stone.0 -= 1
//                }
//            } else {
//                king.0 -= 1
//            }
//        }
//
//    } else if move == "B" {
//        // 한 칸 아래로 이동
//        if king.1 - 1 >= 0 {
//
//            if (king.0, king.1-1) == stone {
//                if stone.1 - 1 >= 0 {
//                    king.1 -= 1
//                    stone.1 -= 1
//                }
//            } else {
//                king.1 -= 1
//            }
//        }
//
//    } else if move == "T" {
//        // 한 칸 위로 이동
//        if king.1 + 1 < 8 {
//
//            if (king.0, king.1+1) == stone {
//                if stone.1 + 1 < 8 {
//                    king.1 += 1
//                    stone.1 += 1
//                }
//            } else {
//                king.1 += 1
//            }
//        }
//
//    } else if move == "RT" {
//        // 오른쪽 위 대각선으로 이동
//        if (king.0 + 1 < 8) && king.1 + 1 < 8 {
//            if (king.0+1, king.1+1) == stone {
//                if (stone.0 + 1 < 8) && stone.1 + 1 < 8 {
//                    king.0 += 1
//                    king.1 += 1
//                    stone.0 += 1
//                    stone.1 += 1
//                }
//            } else {
//                king.0 += 1
//                king.1 += 1
//            }
//        }
//
//    } else if move == "LT" {
//        // 왼쪽 위 대각선으로 이동
//        if (king.0 - 1 >= 0) && king.1 + 1 < 8 {
//
//
//            if (king.0-1, king.1+1) == stone {
//                if (stone.0 - 1 >= 0) && stone.1 + 1 < 8 {
//                    king.0 -= 1
//                    king.1 += 1
//                    stone.0 -= 1
//                    stone.1 += 1
//                }
//            } else {
//                king.0 -= 1
//                king.1 += 1
//            }
//        }
//
//    } else if move == "RB" {
//        // 오른쪽 아래 대각선으로 이동
//        if (king.0 + 1 < 8) && king.1 - 1 >= 0 {
//
//
//            if (king.0+1, king.1-1) == stone {
//                if (stone.0 + 1 < 8) && stone.1 - 1 >= 0 {
//                    king.0 += 1
//                    king.1 -= 1
//                    stone.0 += 1
//                    stone.1 -= 1
//                }
//            } else {
//                king.0 += 1
//                king.1 -= 1
//            }
//        }
//
//
//    }  else if move == "LB" {
//        // 왼쪽 아래 대각선으로 이동
//        if (king.0 - 1 >= 0) && king.1 - 1 >= 0 {
//
//
//            if (king.0-1, king.1-1) == stone {
//                if (stone.0 - 1 >= 0) && stone.1 - 1 >= 0 {
//                    king.0 -= 1
//                    king.1 -= 1
//                    stone.0 -= 1
//                    stone.1 -= 1
//                }
//            } else {
//                king.0 -= 1
//                king.1 -= 1
//            }
//        }
//
//    }
//}
//
//print("\(X[king.0])\(Y[king.1])")
//print("\(X[stone.0])\(Y[stone.1])")

// MARK: - 백준 1235번 학생 번호
//let n: Int = Int(readLine()!)!
//var arr: [[String]] = []
//for _ in 0..<n {
//    let temp: [String] = readLine()!.map{String($0)}.reversed()
//    arr.append(temp)
//}
//
//var result: [String] = []
//for i in 0..<arr[0].count {
//    for str in arr {
//        result.append(str[0...i].joined(separator: ""))
//    }
//
//
//
//    if result.count == Set(result).count {
//        print(result[0].count)
//        break
//    } else {
//        result = []
//    }
//}

// MARK: - 백준 1302번 베스트셀러
//let n: Int = Int(readLine()!)!
//var book: [String:Int] = [:]
//for _ in 0..<n {
//    let temp: String = readLine()!
//    if book[temp] == nil {
//        book[temp] = 1
//    } else {
//        book[temp]! += 1
//    }
//}
//
//print(book.sorted{
//    if $0.value == $1.value {
//        return $0.key < $1.key
//    }
//
//    return $0.value > $1.value
//}[0].key)

// MARK: - 백준 1543번 문서 검색
//var file: [String] = readLine()!.map{String($0)}
//let target: [String] = readLine()!.map{String($0)}
//var result: Int = 0
//
//print(file)
//print(target)
//
//
//for index in 0...file.count - target.count {
//
//    if Array(file[index..<index+target.count]) == target {
//        result += 1
//        for i in index..<index+target.count {
//            file[i] = "0"
//        }
//    }
//}
//
//print(result)


//let input = readLine().map{String($0)}
//let input2 = readLine()!
//
//print(input!.replacingOccurrences(of: input2, with: "!").filter{$0 == "!"}.count)

// MARK: - 백준 1676번 팩토리얼 0의 개수

//let n: Int = Int(readLine()!)!
//print(n/5 + n/25 + n/125)

// MARK: - 백준 1620번 나는야 포켓몬 마스터 이다솜
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let m: Int = read[1]
//var str: [String:Int] = [:]
//var num: [Int:String] = [:]
//for i in 1...n {
//    let pocketmon: String = readLine()!
//    str[pocketmon] = i
//    num[i] = pocketmon
//}
//
//for _ in 0..<m {
//    let temp = readLine()!
//    if let i = Int(temp) {
//        print(num[i]!)
//    } else {
//        print(str[temp]!)
//    }
//}

// MARK: - 백준 11652번 카드
//let n: Int = Int(readLine()!)!
//var dict: [Int:Int] = [:]
//
//for _ in 0..<n {
//    let temp: Int = Int(readLine()!)!
//    if dict[temp] == nil {
//        dict[temp] = 1
//    } else {
//        dict[temp]! += 1
//    }
//}
//
//
//print(dict.sorted{
//    if $0.value == $1.value {
//        return $0.key < $1.key
//    }
//    return $0.value > $1.value
//}[0].key)

// MARK: - 백준 3986번 좋은 단어

//let n: Int = Int(readLine()!)!
//var result: Int = 0
//for _ in 0..<n {
//    let temp: [String] = readLine()!.map{String($0)}
//    var stack: [String] = []
//    for str in temp {
//        if stack.count == 0 {
//            stack.append(str)
//        } else {
//            if stack[stack.count-1] == str {
//                stack.popLast()
//            } else {
//                stack.append(str)
//            }
//        }
//    }
//    if stack.count == 0 {
//        result += 1
//    }
//}
//
//print(result)

// MARK: - 백준 10546번 배부른 마라토너
//let n: Int = Int(readLine()!)!
//var dict: [String:Int] = [:]
//for _ in 0..<n {
//    let temp: String = readLine()!
//    if dict[temp] == nil {
//        dict[temp] = 1
//    } else {
//        dict[temp]! += 1
//    }
//}
//
//for _ in 0..<n-1 {
//    let temp:String = readLine()!
//    dict[temp]! -= 1
//}
//
//print(dict.filter{$0.value != 0}[0].key)

// MARK: - 백준 3048번 개미

//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var firstGroup = Array(Array(readLine()!).map{(String($0), 2)}.reversed())
//var secondGroup = Array(readLine()!).map{(String($0), 1)}
//let time: Int = Int(readLine()!)!
//var mainGroup = firstGroup + secondGroup
//
//for _ in 0..<time {
//    var temp: [Int] = []
//    for i in 0...mainGroup.count-2 {
//        if mainGroup[i].1 > mainGroup[i+1].1 {
//            temp.append(i)
//        }
//    }
//
//    if temp.isEmpty == false {
//        for i in temp {
//            mainGroup.swapAt(i, i+1)
//            print(mainGroup)
//        }
//    }
//}
//
//
//for str in mainGroup {
//    print(str.0, terminator: "")
//}

// MARK: - 백준 14469번 소가 길을 건너간 이유3
//let n: Int = Int(readLine()!)!
//var arr: [(Int, Int)] = []
//for _ in 0..<n {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    arr.append((temp[0], temp[1]))
//}
//
//arr = arr.sorted{$0.0 < $1.0}
//var result: Int = 0
//for tuple in arr {
//    if result < tuple.0 {
//        result = tuple.0
//    }
//    result += tuple.1
//}
//print(result)

// MARK: - 백준 9536번 여우는 어떻게 울지?
//let testCases: Int = Int(readLine()!)!
//for _ in 0..<testCases {
//    var fox: [String] = readLine()!.split(separator: " ").map{String($0)}
//    while true {
//        let animal: String = readLine()!
//        if animal == "what does the fox say?" {
//            break
//        }
//
//        let animalSay: String = animal.split(separator: " ").map{String($0)}[2]
//
//        while fox.contains(animalSay) {
//
//            fox[fox.firstIndex(of: animalSay)!] = ""
//
//        }
//    }
//    print(fox.filter{$0 != ""}.joined(separator: " "))
//}

// MARK: - 백준 8394번 악수

//let n: Int = Int(readLine()!)!
//var result: [Int] = [0, 1]
//for _ in 1..<n {
//    var temp = [0, 0]
//    temp[0] = result[1]
//    temp[1] = (result[0] + result[1]) % 10
//    result = temp
//}
//print((result[0] + result[1])%10)


// MARK: - 백준 1485번 정사각형
//let testCases: Int = Int(readLine()!)!
//for _ in 0..<testCases {
//    var point: [(Int, Int)] = []
//    for _ in 0..<4 {
//        let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//        point.append((temp[0], temp[1]))
//    }
//
//    var result: [Double:Int] = [:]
//
//    for main in 0..<point.count-1 {
//        for sub in main+1..<point.count {
//            let line: Double = sqrt(Double((point[sub].0 - point[main].0)*(point[sub].0 - point[main].0)) + Double((point[sub].1 - point[main].1)*(point[sub].1 - point[main].1)))
//            if result[line] == nil {
//                result[line] = 1
//            } else {
//                result[line]! += 1
//            }
//        }
//    }
//
//    if result.count == 2 && result.values.reduce(0, +) == 6 {
//        print(1)
//    } else {
//        print(0)
//    }
//
//
//}

// MARK: - 백준 9656번 돌 게임2
//print(Int(readLine()!)!%2 == 0 ? "SK" : "CY")

// MARK: - 백준 2331번 반복수열
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let p: Int = read[1]
//var arr: [Int] = [n]
//var result: Int = 0
//
//while true {
//    let temp: [Int] = String(arr.last!).map{Int(String($0))!}
//    var tempNum: Int = 0
//    for i in temp {
//        tempNum += Int(pow(Double(i), Double(p)))
//    }
//
//    if arr.contains(tempNum) {
//        result = arr.firstIndex(of: tempNum)!
//        break
//    }
//
//    arr.append(tempNum)
//}
//
//
//print(arr[0..<result].count)

// MARK: - 백준 17219번 비밀번호 찾기
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var dict: [String:String] = [:]
//for _ in 0..<read[0] {
//    let temp: [String] = readLine()!.split(separator: " ").map{String($0)}
//    if dict[temp[0]] == nil {
//        dict[temp[0]] = temp[1]
//    }
//}
//var result: String = ""
//
//for _ in 0..<read[1] {
//    print(dict[readLine()!]!)
//}

// MARK: - 백준 1783번 병든 나이트
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let m: Int = read[1]
//
//if n == 1 {
//    print(1)
//} else if n == 2 {
//    print(min((m+1)/2, 4))
//} else {
//    if m <= 6 {
//        print(min(m, 4))
//    } else {
//        print(m-2)
//    }
//}2.524304986000061

// MARK: - 백준 15624번 피보나치 수 7
////let startTime = CFAbsoluteTimeGetCurrent()
//let input = Int(String(readLine()!))!
//var dp: [Int] = Array(repeating: 0, count: input+1)
//if input >= 1 {
//    dp[1] = 1
//}
//if input >= 2 {
//    for i in 2...input {
//        dp[i] = (dp[i-1] + dp[i-2]) % 1000000007
//    }
//}
//print(dp[input])
////print("경과 시간: \(CFAbsoluteTimeGetCurrent() - startTime)")

// MARK: - 백준 13413번 오셀로 재배치
//let testCases: Int = Int(readLine()!)!
//for _ in 0..<testCases {
//    let length: Int = Int(readLine()!)!
//    let current: [String] = readLine()!.map{String($0)}
//    let target: [String] = readLine()!.map{String($0)}
//    var blackCount: Int = 0
//    var whiteCount: Int = 0
//
//    for i in 0..<length {
//        if current[i] != target[i] {
//            if current[i] == "B" {
//                blackCount += 1
//            } else {
//                whiteCount += 1
//            }
//        }
//    }
//
//    print(blackCount > whiteCount ? blackCount : whiteCount)
//}

// MARK: - 백준 11502번 세 개의 소수 문제
//var arr: [Int] = Array(repeating: 0, count: 1001)
//for i in 2...1000 {
//    arr[i] = i
//}
//for i in 2...1000 {
//    if arr[i] == 0 {continue}
//    for j in stride(from: i*2, through: 1000, by: i) {
//        if arr[j] == 0 {
//            continue
//        } else {
//            arr[j] = 0
//        }
//    }
//}
//
//var num: [Int] = arr.filter{$0 != 0}
//
//let testCases: Int = Int(readLine()!)!
//for _ in 0..<testCases {
//    let target: Int = Int(readLine()!)!
//    var result: Bool = false
//    for i in 0..<num.count {
//        for j in i..<num.count {
//            for k in j..<num.count {
//                if num[i] + num[j] + num[k] == target {
//                    print("\(num[i]) \(num[j]) \(num[k])")
//                    result = true
//                    break
//                }
//            }
//            if result == true {
//                break
//            }
//        }
//        if result == true {
//            break
//        }
//    }
//    if result == false {
//        print(0)
//    }
//}

// MARK: - 백준 12789번 도키도키 간식드리미
//let n: Int = Int(readLine()!)!
//var line: [Int] = readLine()!.split(separator: " ").map{Int($0)!}.reversed()
//var stack: [Int] = []
//var target: Int = 1
//var result: Bool = false
//
//while (line.count + stack.count) != 0 {
//    if line.count != 0 {
//        if line.last! != target {
//            if stack.count != 0 && stack.last == target {
//                stack.popLast()
//                target += 1
//
//            } else {
//                stack.append(line.popLast()!)
//            }
//        } else {
//            line.popLast()
//            target += 1
//        }
//    } else {
//        if stack.last == target {
//            stack.popLast()
//            target += 1
//            if stack.count == 0 {
//
//                result = true
//                break
//            }
//        } else {break}
//    }
//    if line.count == 0 && stack.count == 0 {
//        result = true
//    }
//}
//
//print(result == true ? "Nice" : "Sad")

// MARK: - 백준 10837번 동전 게임
//let coin: Int = Int(readLine()!)!
//let testCases: Int = Int(readLine()!)!
//for _ in 0..<testCases {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    let m: Int = temp[0]
//    let n: Int = temp[1]
//
//    if m==n {
//        print(1)
//        continue
//    }
//
//    let k = coin - max(m, n)
//    let diff = abs(m-n)
//
//    if m>n {
//        if diff - k <= 2 {
//            print(1)
//            continue
//        }
//        print(0)
//        continue
//    }
//
//
//    if diff - k <= 1 {
//        print(1)
//        continue
//    }
//    print(0)
//
//
//}

// MARK: - 백준 2847번 게임을 만든 동준이
//let n: Int = Int(readLine()!)!
//var arr: [Int] = []
//for _ in 0..<n {
//    let score: Int = Int(readLine()!)!
//    arr.append(score)
//}
//var result: Int = 0
//for i in (0..<arr.count-1).reversed() {
//    if arr[i+1] <= arr[i] {
//        result += arr[i]-arr[i+1]+1
//        arr[i] = arr[i+1]-1
//    }
//}
//
//print(result)


// MARK: - 백준 17626번 Four Squares
//let n = Int(readLine()!)!
//var dp = Array(repeating: 0, count: n+1)
//dp[1] = 1
//
//if n == 1 {
//    print(1)
//} else {
//    for i in 2...n {
//        var minValue = Int.max
//        var j = 1
//        while (j*j) <= i {
//            minValue = min(minValue, dp[i-j*j])
//            j += 1
//        }
//        dp[i] = minValue + 1
//    }
//    print(dp[n])
//}

// MARK: - 백준 2670번 연속부분최대곱

//let n: Int = Int(readLine()!)!
//var arr: [Double] = []
//for _ in 0..<n {
//    arr.append(Double(readLine()!)!)
//}
//
//for i in 1..<arr.count {
//    if arr[i] < arr[i] * arr[i-1] {
//        arr[i] = arr[i] * arr[i-1]
//    }
//}
//let ans = String(format: "%.3f", (arr.max()! * 1000).rounded() / 1000)
//print(ans)

// MARK: - 백준 1822번 차집합
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var A: Set<Int> = Set(readLine()!.split(separator: " ").map{Int($0)!})
//var B: Set<Int> = Set(readLine()!.split(separator: " ").map{Int($0)!})
//
//if A.subtracting(B).count == 0 {
//    print(0)
//} else {
//    print(A.subtracting(B).count)
//    print(A.subtracting(B).sorted(by: <).map{String($0)}.joined(separator: " "))
//}

// MARK: - 백준 13900번 순서쌍의 곱의 합
//let n: Int = Int(readLine()!)!
//var arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var result: Int = 0
//var newArr: [Int] = [arr[0]]
//for i in 1..<n {
//    newArr.append(newArr[i-1] + arr[i])
//}
//
//for i in 0..<n-1 {
//    result += arr[i] * (newArr[n-1]-newArr[i])
//}
//
//print(result)

// MARK: - 백준 1755번 숫자놀이
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let number: [String] = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
//var arr: [String] = []
//for num in read[0]...read[1] {
//    let temp: [String] = String(num).map{String($0)}
//    var tempStr: String = ""
//    for str in temp {
//        tempStr += "\(number[Int(str)!]) "
//    }
//    arr.append(tempStr)
//}
//arr.sort()
//var result: [String] = []
//for num in arr {
//    let temp: [String] = num.split(separator: " ").map{String($0)}
//    var tempStr: String = ""
//    for i in temp {
//        tempStr += String(number.firstIndex(of: i)!)
//    }
//    result.append(tempStr)
//}
//var temp: String = ""
//var count: Int = 0
//for i in result {
//    temp += "\(i) "
//    count += 1
//    if count % 10 == 0 {
//        print(temp)
//        temp = ""
//    }
//    if count == read[1] - read[0] + 1 {
//        print(temp)
//    }
//}

// MARK: - 백준 11508번 2+1 세일
//let n: Int = Int(readLine()!)!
//var arr: [Int] = []
//for _ in 0..<n {
//    arr.append(Int(readLine()!)!)
//}
//
//arr.sort(by: >)
//for i in 0..<n {
//    if i%3 == 2 {
//        arr[i] = 0
//    }
//}
//
//print(arr.reduce(0, +))

// MARK: - 백준 13699번 점화식
//let n: Int = Int(readLine()!)!
//var arr: [Int] = Array(repeating: 0, count: n+1)
//arr[0] = 1
//
//func solution(num: Int) -> Int {
//    if arr[num] != 0 {
//        return arr[num]
//    }
//
//    var k = 0
//    for i in 0..<num {
//        k += solution(num: i) * solution(num: num - 1 - i)
//    }
//    arr[num] = k
//    return k
//}
//print(solution(num: n))

// MARK: - 백준 15650번 N과 M(2)
//let read: [String] = readLine()!.split(separator: " ").map{String($0)}
//let n: Int = Int(read[0])!
//let m: Int = Int(read[1])!
//let baseArr: [Int] = Array(1...n)
////print(baseArr)
//
//func combi(_ nums: [Int], _ targetNum: Int) -> [[Int]] {
//    var result = [[Int]]()
//
//    func combination(_ index: Int, _ nowCombi: [Int]) {
//        if nowCombi.count == targetNum {
//            result.append(nowCombi)
//            return
//        }
//        for i in index..<nums.count {
//            combination(i + 1, nowCombi + [nums[i]])
//        }
//    }
//
//    combination(0, [])
//
//    return result
//}
//let result = combi(baseArr, m).sorted{
//    return $0[0] < $1[0]
//}
//for i in result {
//    print(i.map{String($0)}.joined(separator: " "))
//}

//func dfs(_ k: [Int]) {
//    if k.count == m {
//        k.forEach{print($0, terminator: " ")}
//        print()
//        return
//    }
//
//    for i in 1...n where k.last ?? 0 < i {
//        print("k: \(k)")
//        dfs(k+[i])
//    }
//}
//
//dfs([])

// MARK: - 백준 15649번 N과 M (1)
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let m: Int = read[1]
//
//func solution(_ arr: [Int]) {
//    if arr.count == m {
//        arr.forEach{print($0, terminator: " ")}
//        print()
//        return
//    }
//
//    for i in 1...n where !arr.contains(i){
//        solution(arr+[i])
//    }
//}
//
//solution([])

// MARK: - 백준 11478번 서로 다른 부분 문자열의 개수
//let str: [String] = readLine()!.map{String($0)}
//var arr: Set<[String]> = []
//for i in 0..<str.count {
//    for j in i..<str.count {
//        arr.insert(Array(str[i...j]))
//    }
//}
//
//print(arr.count)

// MARK: - 백준 16165번 걸그룹 마스터 준석이
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let m: Int = read[1]
//var group: [String] = []
//var member: [[String]] = []
//for _ in 0..<n {
//    let groupName: String = readLine()!
//    let groupCount: Int = Int(readLine()!)!
//    var temp: [String] = []
//    for _ in 0..<groupCount {
//        temp.append(readLine()!)
//    }
//    temp.sort(by: <)
//    group.append(groupName)
//    member.append(temp)
//}
//
//for _ in 0..<m {
//    let question: String = readLine()!
//    let category: String = readLine()!
//    if category == "0" {
//        let index: Int = group.firstIndex(of: question)!
//        member[index].forEach{print($0)}
//    } else {
//        for i in 0..<member.count {
//            if member[i].contains(question) {
//                print(group[i])
//                break
//            }
//        }
//    }
//}

// MARK: - 백준 2659번 십자카드 문제
//var arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//
//func solution(_ k: [Int]) -> Int {
//    var tempArr: [Int] = k + k[0...2]
//    var clockNumber: [Int] = []
//    for i in 0..<4 {
//        clockNumber.append(Int(tempArr[i...i+3].map{String($0)}.joined(separator: ""))!)
//    }
//    let mainClockNumber: Int = clockNumber.min()!
//    return mainClockNumber
//}
//
//var startNumber: Int = 1111
//var result: Int = 0
//while startNumber <= solution(arr) {
//    let temp: [Int] = String(startNumber).map{Int(String($0))!}
//    if startNumber == solution(temp) {
//        result += 1
//    }
//    startNumber += 1
//
//}
//
//print(result)

// MARK: - 백준 13414번 수강신청
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let target: Int = read[0]
//let num: Int = read[1]
//var arr: [String] = []
//var dict: [String:Int] = [:]
//for _ in 0..<num {
//    let studentNum: String = readLine()!
//    arr.append(studentNum)
//    if dict[studentNum] == nil {
//        dict[studentNum] = 1
//    } else {
//        dict[studentNum]! += 1
//    }
//}
//
//var result: [String] = []
//for i in arr {
//    if dict[i] == 1 {
//        result.append(i)
//    } else if dict[i]! > 1{
//        dict[i]! -= 1
//    }
//}
//
//for i in 0..<target {
//    print(result[i])
//}


//let inp = readLine()!.split(separator : " ").map{Int(String($0))!}
//let N = inp[0]
//let M = inp[1]
//var dict = [String:Int]()
//var last = 0
//for _ in 0..<M {
//    let s = readLine()!
//    if dict[s] == nil {
//        dict[s] = last
//    }else {
//        dict[s] = last
//    }
//    last += 1
//}
//
//var count = 1
//for (val,_) in dict.sorted{$0.value < $1.value} {
//    if count > N {
//        break
//    }else {
//        print(val)
//        count += 1
//    }
//}

// MARK: - 백준 1448번 삼각형 만들기
//let n: Int = Int(readLine()!)!
//var arr: [Int] = []
//for _ in 0..<n {
//    arr.append(Int(readLine()!)!)
//}
//arr.sort(by: >)
//var result: Int = 0
//
//for i in 0..<n-2 {
//    if arr[i+1] + arr[i+2] - arr[i] > 0 {
//        result = arr[i+1] + arr[i+2] + arr[i]
//        break
//    }
//}
//
//if result == 0 {
//    print(-1)
//} else {
//    print(result)
//}

// MARK: - 백준 2910번 빈도 정렬
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let c: Int = read[1]
//
//let arrInit: [String] = readLine()!.split(separator: " ").map{String($0)}
//var dict: [String:Int] = [:]
//for text in arrInit {
//    if dict[text] == nil {
//        dict[text] = 1
//    } else {
//        dict[text]! += 1
//    }
//}
//
//var newDict = dict.sorted{
//    if $0.value == $1.value {
//        return arrInit.firstIndex(of: $0.key)! < arrInit.firstIndex(of: $1.key)!
//    }
//    return $0.value > $1.value
//}
//
//for data in newDict {
//    for _ in 0..<data.value {
//        print(data.key, terminator: " ")
//    }
//}

// MARK: - 백준 6591번 이항 쇼다운

//while true {
//    let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    if read == [0, 0] {
//        break
//    }
//
//    var a: Int = read[0]
//    var b: Int = read[1]
//
//    if b>a-b {
//        b = a-b
//    }
//
//    var result: Int = 1
//    for i in 1...b {
//        result = result*a/i
//        a -= 1
//    }
//
//    print(result)
//}


// MARK: - 백준 2548번 대표 자연수
//let n: Int = Int(readLine()!)!
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: <)
//var target: Int = 0
//var result: Int = Int.max
//
//for i in 0..<arr.count {
//    var k = arr[i]
//    var temp: Int = 0
//    for i in arr {
//        temp += abs(i-k)
//    }
//
//    if temp < result {
//        result = temp
//        target = k
//    } else if temp == result {
//        if k < target {
//            target = k
//        }
//    }
//
//
//}
//
//print(target)

// MARK: - 백준 16992번 로마 숫자 만들기
//let n: Int = Int(readLine()!)!
//var set: Set<Int> = []
//for i in 0..<n+1 {
//    for j in 0..<n+1-i {
//        for k in 0..<n+1-i-j {
//            let t = n-i-j-k
//            let temp = i+5*j+10*k+50*t
//            set.insert(temp)
//        }
//    }
//}
//
//print(set.count)

//let roma: [Int] = [1, 5, 10, 50]
//var visited: [Bool] = Array(repeating: false, count: 1001)
//var result: Int = 0
//func dfs(_ target: Int, _ start: Int, _ sum: Int) {
//    if target == 0 {
//        if visited[sum] == false {
//            visited[sum] = true
//            result += 1
//        }
//        return
//    }
//
//    for i in start..<4 {
//        dfs(target-1, i, sum+roma[i])
//    }
//}
//
//dfs(Int(readLine()!)!, 0, 0)
//print(result)


// MARK: - 백준 14495번 피보나치 비스무리한 수열
//let n: Int = Int(readLine()!)!
//func solution(num: Int) -> Int {
//    if num <= 3 {
//        return 1
//    }
//    return solution(num: num-3) + solution(num: num-1)
//}
//print(solution(num: n))

// MARK: - 백준 2312번 수 복원하기
//let testCases: Int = Int(readLine()!)!
//for _ in 0..<testCases {
//    var target: Int = Int(readLine()!)!
//    var arr: [Int] = Array(0...target)
//    arr[1] = 0
//    for i in 2...target {
//        if arr[i] == 0 {
//            continue
//        }
//        for j in stride(from: i*2, through: target, by: i) {
//            arr[j] = 0
//        }
//    }
//
//    let primeNumber: [Int] = arr.filter{$0 != 0}
//
//    var result: [Int:Int] = [:]
//    var index: Int = 0
//
//    while target != 1 {
//        if target % primeNumber[index] == 0 {
//            if result[primeNumber[index]] == nil {
//                result[primeNumber[index]] = 1
//            } else {
//                result[primeNumber[index]]! += 1
//            }
//
//            target = target / primeNumber[index]
//
//        } else {
//            index += 1
//        }
//    }
//
//    for (key, value) in result.sorted{$0.key < $1.key} {
//        print("\(key) \(value)")
//    }
//}


// MARK: - 백준 7795번 먹을 것인가 먹힐 것인가

//let testCases: Int = Int(readLine()!)!
//
//func solution(arr: [Int], target: Int) -> Int {
//    var start: Int = 0
//    var end: Int = arr.count - 1
//    var result: Int = -1
//    while start<=end {
//        var mid: Int = (start+end) / 2
//        if arr[mid] < target {
//            result = mid
//            start = mid + 1
//        } else {
//            end = mid - 1
//        }
//    }
//    return result
//}
//
//
//for _ in 0..<testCases {
//    let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    let a: [Int] = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: <)
//    let b: [Int] = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: <)
//
//    var count: Int = 0
//    for num in a {
//        count += solution(arr: b, target: num) + 1
//    }
//    print(count)
//
//}

// MARK: - 백준 2012번 등수 매기기
//let n: Int = Int(readLine()!)!
//var arr: [Int] = []
//for _ in 0..<n {
//    arr.append(Int(readLine()!)!)
//}
//arr.sort(by: <)
//arr.insert(0, at: 0)
//var result: Int = 0
//
//for i in 1...n {
//    if arr[i] != i {
//        result += abs(arr[i]-i)
//    }
//}
//
//print(result)

// MARK: - 백준 10211번 Maximum Subarray
//let testCases: Int = Int(readLine()!)!
//for _ in 0..<testCases {
//    let n: Int = Int(readLine()!)!
//    let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    var dp: [Int] = Array(repeating: 0, count: n)
//    dp[0] = arr[0]
//    for i in 1..<n {
//        dp[i] = max(dp[i-1]+arr[i], arr[i])
//    }
//
//    print(dp.max()!)
//}

// MARK: - 백준 4375번 1
//while let n = readLine() {
//
//    var count = 0
//    var next = 1
//
//    while true {
//        count += 1
//        if next % Int(n)! == 0 {
//            print("\(count)")
//            break
//        }else {
//            next = ((next * 10) + 1)
//            next %= Int(n)!
//        }
//
//    }
//}


// MARK: - 백준 1269번 대칭 차집합
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var a: Set<Int> = Set(readLine()!.split(separator: " ").map{Int($0)!})
//var b: Set<Int> = Set(readLine()!.split(separator: " ").map{Int($0)!})
//var aa = a.subtracting(b)
//var bb = b.subtracting(a)
//print(aa.union(bb).count)


// MARK: - 백준 11441번 합 구하기
//let length: Int = Int(readLine()!)!
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let testCases: Int = Int(readLine()!)!
//var dp: [Int] = Array(repeating: 0, count: length+1)
//for i in 1...length {
//    dp[i] = arr[i-1] + dp[i-1]
//}
//
//
//for _ in 0..<testCases {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    print(dp[temp[1]] - dp[temp[0]-1])
//}

// MARK: - 백준 14425번 문자열 집합
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let m: Int = read[1]
//
//var dict: [String:Int] = [:]
//for _ in 0..<n {
//    let temp: String = readLine()!
//    if dict[temp] == nil {
//        dict[temp] = 1
//    } else {
//        dict[temp]! += 1
//    }
//}
//
//var result: Int = 0
//for _ in 0..<m {
//    let temp: String = readLine()!
//    if dict[temp] != nil {
//        result += 1
//    }
//}
//print(result)

// MARK: - 백준 9507번 Generations of Tribbles
//let testCases: Int = Int(readLine()!)!
//
//for _ in 0..<testCases {
//    let num: Int = Int(readLine()!)!
//    var arr: [Int] = [1, 1, 2, 4]
//    if num > 3 {
//        for i in 4...num {
//            arr.append(arr[i-1] + arr[i-2] + arr[i-3] + arr[i-4])
//        }
//    }
//    print(arr[num])
//}

// MARK: - 백준 1748번 수 이어 쓰기 1
//let n = Int(readLine()!)!
//var result = 0
//var start = 1
//
//while (start <= n) {
//  result += n - start + 1
//  start *= 10
//}
//print(result)

// MARK: - 백준 9657번 돌 게임 3
//let n: Int = Int(readLine()!)!
//if n%7 == 2 || n%7 == 0 {
//    print("CY")
//} else {
//    print("SK")
//}

// MARK: - 백준 15651번 N과 M (3)
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let m: Int = read[1]
//let k: [String] = Array(1...n).map{String($0)}
//func solution(_ arr: [String]) {
//    if arr.count == m {
//        print(arr.joined(separator: " "))
//        return
//    }
//
//    for i in k {
//        solution(arr+[i])
//    }
//}
//
//solution([])

// MARK: - 백준 15652번 N과 M (4)
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let m: Int = read[1]
//
//func solution(_ arr: [Int]) {
//    if arr.count == m {
//        arr.forEach{print($0, terminator: " ")}
//        print()
//        return
//    }
//
//    if arr.isEmpty {
//        for i in 1...n {
//            solution(arr + [i])
//        }
//
//    } else {
//        for i in 1...n where arr.last! <= i {
//            solution(arr + [i])
//        }
//    }
//}
//
//solution([])

// MARK: - 백준1699번 제곱수의 합
//let n = Int(readLine()!)!
//var dp: [Int] = Array(repeating: 0,count: n+1)
//for i in stride(from: 1,through: n,by: 1){
//    dp[i] = i
//
//    for j in stride(from: 1, through: i, by: 1) {
//        if j * j > i {
//            break
//        }
//        dp[i] = min(dp[i], dp[i - j * j] + 1)
//
//    }
//}
//print(dp[n])

// MARK: - 백트래킹 N과 M 연속 풀기

// MARK: - 백준 15649번 N과 M (1)

//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let m: Int = read[1]
//
//var visited: [Bool] = Array(repeating: false, count: n+1)
//
//func solution(_ arr: [Int]) {
//    if arr.count == m {
//        arr.forEach{print($0, terminator: " ")}
//        print()
//        return
//    }
//
//    for i in 1...n {
//        if visited[i] == false {
//            visited[i] = true
//            solution(arr + [i])
//            visited[i] = false
//        }
//    }
//}
//
//solution([])

// MARK: - 백준 15650번 N과 M (2)

//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let m: Int = read[1]
//
//var visited: [Bool] = Array(repeating: false, count: n+1)
//
//func solution(_ arr: [Int]) {
//    if arr.count == m {
//        arr.forEach{print($0, terminator: " ")}
//        print()
//        return
//    }
//
//    for i in 1...n where arr.last ?? 0 < 1{
//        solution(arr + [i])
//    }
//}
//
//solution([])


// MARK: - 백준 15651번 N과 M (3)

//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let m: Int = read[1]
//
//func solution(_ arr: [String]) {
//    if arr.count == m {
//        print(arr.joined(separator: " "))
//        return
//    }
//
//    for i in 1...n {
//        solution(arr + [String(i)])
//    }
//}
//
//solution([])

// MARK: - 백준 15652번 N과 M (4)
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let m: Int = read[1]
//
//func solution(_ arr: [String]) {
//    if arr.count == m {
//        print(arr.joined(separator: " "))
//        return
//    }
//
//    for i in 1...n where Int(arr.last ?? "0")! <= i{
//        solution(arr + [String(i)])
//    }
//}
//
//solution([])

// MARK: - 백준 15654번 N과 M (5)
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let m: Int = read[1]
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
//var visited: [Bool] = Array(repeating: false, count: n)
//func solution(_ k: [Int]) {
//    if k.count == m {
//        k.forEach{print($0, terminator: " ")}
//        print()
//        return
//    }
//
//    for i in 0..<n {
//        if visited[i] == false {
//            visited[i] = true
//            solution(k + [arr[i]])
//            visited[i] = false
//        }
//    }
//}
//
//solution([])

// MARK: 백준 15655번 N과 M (6)
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let m: Int = read[1]
//var inputArr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
//var visited: [Bool] = Array(repeating: false, count: n)
//
//func solution(_ arr: [Int]) {
//    if arr.count == m {
//        arr.forEach{print($0, terminator: " ")}
//        print()
//        return
//    }
//
//    for i in 0..<n {
//        if arr.last ?? 0 < inputArr[i] {
//            if visited[i] == false {
//                visited[i] = true
//                solution(arr + [inputArr[i]])
//                visited[i] = false
//            }
//        }
//    }
//}
//
//solution([])

// MARK: - 백준 15656번 N과 M (7)
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let m: Int = read[1]
//var inputArr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
//
//func solution(_ depth: Int, _ str: String) {
//    if depth == m {
//        print(str)
//        return
//    }
//
//    for i in 0..<n {
//        solution(depth + 1, str + "\(inputArr[i]) ")
//    }
//}
//
//solution(0, "")

// MARK: - 백준 15656번 N과 M (8)
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let m: Int = read[1]
//var visited: [Bool] = Array(repeating: false, count: n)
//var inputArr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
//func solution(_ arr: [Int]) {
//    if arr.count == m {
//        arr.forEach{print($0, terminator: " ")}
//        print()
//        return
//    }
//
//    for i in 0..<n {
//        if arr.last ?? 0 <= inputArr[i] {
//            solution(arr + [inputArr[i]])
//        }
//    }
//}
//
//solution([])

// MARK: - 백준 15656번 N과 M (9)

//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let m: Int = read[1]
//let inputArr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
//var tempDict: [[Int]:Int] = [:]
//var result: String = ""
//var visited: [Bool] = Array(repeating: false, count: n)
//func solution(_ arr: [Int]) {
//    if arr.count == m {
//        if tempDict[arr] == nil {
//            tempDict[arr] = 1
//            arr.forEach{print($0, terminator: " ")}
//            print()
//        }
//
//        return
//    }
//    for i in 0..<n {
//        if visited[i] == false {
//            visited[i] = true
//            solution(arr + [inputArr[i]])
//            visited[i] = false
//
//        }
//    }
//}
//
//solution([])

// MARK: - 백준 15664번 N과 M (10)
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let m: Int = read[1]
//let inputArr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
//var tempDict: [[Int]:Int] = [:]
//var visited: [Bool] = Array(repeating: false, count: n)
//func solution(_ arr: [Int]) {
//    if arr.count == m {
//        if tempDict[arr] == nil {
//            tempDict[arr] = 1
//            arr.forEach{print($0, terminator: " ")}
//            print()
//        }
//        return
//    }
//    for i in 0..<n where arr.last ?? 0 <= inputArr[i] {
//        if visited[i] == false {
//            visited[i] = true
//            solution(arr + [inputArr[i]])
//            visited[i] = false
//        }
//    }
//}
//
//solution([])

// MARK: - 백준 15664번 N과 M (11)
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let m: Int = read[1]
//let inputArr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
//var tempDict: [[String]:Int] = [:]
//var visited: [Bool] = Array(repeating: false, count: n)
//var result: String = ""
//func solution(_ arr: [String]) {
//    if arr.count == m {
//        if tempDict[arr] == nil {
//            tempDict[arr] = 1
//            result += "\(arr.joined(separator: " "))" + "\n"
//        }
//        return
//    }
//    for i in 0..<n {
//        solution(arr + [String(inputArr[i])])
//    }
//}
//
//solution([])
//print(result)

// MARK: - 백준 15664번 N과 M (12)
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let m: Int = read[1]
//var tempDict: [[String]:Int] = [:]
//var inputArr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
//var result: String = ""
//
//func solution(_ arr: [String]) {
//    if arr.count == m {
//        if tempDict[arr] == nil {
//            tempDict[arr] = 1
//            result += arr.joined(separator: " ") + "\n"
//        }
//        return
//    }
//    for i in 0..<n where Int(arr.last ?? "0")! <= inputArr[i] {
//        solution(arr + [String(inputArr[i])])
//    }
//}
//
//solution([])
//print(result)

// MARK: - 백준 9663번 N-Queen
//let n: Int = Int(readLine()!)!
//var result: Int = 0
//var chess: [[Int]] = Array(repeating: Array(0..<n), count: n)
//var visited: [Int] = Array(repeating: -1, count: n)
//
//func check(_ x: Int, _ y: Int) -> Bool {
//    for i in 0..<x {
//        if y == visited[i] || (abs(x-i) == abs(y-visited[i])) {
//            return false
//        }
//    }
//    return true
//}
//
//func solution(_ line: Int) {
//    if line == n {
//        result += 1
//        return
//    }
//
//    for i in 0..<n {
//        if check(line, i) {
//            visited[line] = i
//            solution(line+1)
//            visited[line] = -1
//        }
//    }
//}
//
//solution(0)
//print(result)

// MARK: - 백준 14888번 연산자 끼워넣기

//let n: Int = Int(readLine()!)!
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var operandArr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var maxResult: Int = Int.min
//var minResult: Int = Int.max
//var cal: [String] = []
//for i in 0..<4 {
//    while operandArr[i] >= 1 {
//        if i == 0 {
//            cal.append("+")
//            operandArr[i] -= 1
//        } else if i == 1 {
//            cal.append("-")
//            operandArr[i] -= 1
//        } else if i == 2 {
//            cal.append("*")
//            operandArr[i] -= 1
//        } else if i == 3 {
//            cal.append("/")
//            operandArr[i] -= 1
//        }
//    }
//}
//
//var visited: [Bool] = Array(repeating: false, count: cal.count)
//var result: [String] = []
//
//func solution(_ depth: Int) {
//    var index: Int = 1
//    var tempNum: Int = arr[0]
//    if depth == cal.count {
//        for i in result {
//            if i == "+" {
//                tempNum += arr[index]
//                index += 1
//            } else if i == "-" {
//                tempNum -= arr[index]
//                index += 1
//
//            } else if i == "*" {
//                tempNum *= arr[index]
//                index += 1
//
//            } else if i == "/" {
//                tempNum /= arr[index]
//                index += 1
//
//            }
//        }
//
//        maxResult = max(tempNum, maxResult)
//        minResult = min(tempNum, minResult)
//
//
//        return
//    }
//
//    for i in 0..<visited.count {
//        if visited[i] == false {
//            visited[i] = true
//            result.append(cal[i])
//            solution(depth+1)
//            visited[i] = false
//            result.removeLast()
//        }
//    }
//
//}
//solution(0)
//print(maxResult)
//print(minResult)


// MARK: - 백준 6603번 로또
//while true {
//    var arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//
//    if arr == [0] {
//        break
//    }
//
//    let n: Int = arr.removeFirst()
//    var visited: [Bool] = Array(repeating: false, count: n)
//
//
//
//    func solution(input: [Int]) {
//        if input.count == 6 {
//            input.forEach{print($0, terminator: " ")}
//            print()
//            return
//        }
//
//        for i in 0..<arr.count where input.last ?? 0 < arr[i] {
//            if visited[i] == false {
//                visited[i] = true
//                solution(input: input + [arr[i]])
//                visited[i] = false
//            }
//        }
//    }
//
//    solution(input: [])
//    print()
//
//}


//while true {
//    var arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//
//    if arr == [0] {
//        break
//    }
//    let n: Int = arr.removeFirst()
//    var visited: [Bool] = Array(repeating: false, count: n)
//    var result: [Int] = []
//
//    func solution(_ depth: Int, _ start: Int) {
//        if depth == 6 {
//            result.forEach{print($0, terminator: " ")}
//            print()
//            return
//        }
//
//        for i in start..<arr.count {
//            if visited[i] == false {
//                visited[i] = true
//                result.append(arr[i])
//                solution(depth+1, i)
//                result.removeLast()
//                visited[i] = false
//
//            }
//        }
//    }
//
//    solution(0, 0)
//    print()
//
//}
//
//

// MARK: - 백준 1182번 부분수열의 합

//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let target: Int = read[1]
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var sum: Int = 0
//var visited: [Bool] = Array(repeating: false, count: n)
//var count: Int = 0
//
//func solution(_ depth: Int, _ start: Int) {
//
//    if  depth > 0 && sum == target {
//        count += 1
//        return
//    }
//
//
//    for i in start..<n {
//        if visited[i] == false {
//            visited[i] = true
//            sum += arr[i]
//            solution(depth+1, i)
//            sum -= arr[i]
//            visited[i] = false
//
//        }
//    }
//}
//
//solution(0, 0)
//print(count)

// MARK: - 백준 1759번 암호 만들기

//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let target: Int = read[0]
//let n: Int = read[1]
//let arr: [String] = readLine()!.split(separator: " ").map{String($0)}.sorted()
//let vowel: [String] = ["a", "e", "i", "o", "u"]
//var visited: [Bool] = Array(repeating: false, count: n)
//var a: Int = 0
//var b: Int = 0
//
//func solution(_ depth: Int, _ start: Int, _ str: String) {
//    if depth == target && a >= 1 && b >= 2 {
//        print(str)
//        return
//    }
//
//    for i in start..<n {
//        if !visited[i] {
//            visited[i] = true
//            if vowel.contains(arr[i]) {
//                a += 1
//            } else {
//                b += 1
//            }
//            solution(depth+1, i, str+arr[i])
//            if vowel.contains(arr[i]) {
//                a -= 1
//            } else {
//                b -= 1
//            }
//
//            visited[i] = false
//        }
//    }
//}
//
//solution(0, 0, "")

// MARK: - 백준 1987번 알파벳
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let r: Int = read[0]
//let c: Int = read[1]
//var arr: [[String]] = []
//for i in 0..<r {
//    let temp: [String] = readLine()!.map{String($0)}
//    arr.append(temp)
//}
//let dx: [Int] = [1, -1, 0, 0]
//let dy: [Int] = [0, 0, 1, -1]
//
//var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: c), count: r)
//var dict: [String:Int] = [arr[0][0]:1]
//var result: [String] = [arr[0][0]]
//var count: Int = Int.min
//func solution(_ x: Int, _ y: Int) {
//    count = max(count, result.count)
//
//    for i in 0..<4 {
//        let nx: Int = x + dx[i]
//        let ny: Int = y + dy[i]
//
//        if nx < 0 || nx >= r || ny < 0 || ny >= c {
//            continue
//        } else {
//            if visited[nx][ny] == false {
//
//                if !result.contains(arr[nx][ny]) {
//                    visited[nx][ny] = true
//                    result.append(arr[nx][ny])
//                    solution(nx, ny)
//                    result.removeLast()
//                    visited[nx][ny] = false
//
//                }
//
//
//            }
//        }
//    }
//
//
//}
//
//solution(0, 0)
//print(count)

// MARK: - 백준 10819번 차이를 최대로
//let n: Int = Int(readLine()!)!
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var visited: [Bool] = Array(repeating: false, count: n)
//var sum: Int = 0
//func solution(_ depth: [Int]) {
//    if depth.count == n {
//        var temp: Int = 0
//        for i in 0..<n-1 {
//            temp += abs(depth[i] - depth[i+1])
//        }
//        sum = max(sum, temp)
//    }
//
//    for i in 0..<n {
//        if visited[i] == false {
//            visited[i] = true
//            solution(depth + [arr[i]])
//            visited[i] = false
//        }
//    }
//}
//
//
//solution([])
//print(sum)

// MARK: - 백준 10974번 모든 순열
//let n: Int = Int(readLine()!)!
//let numArr: [Int] = Array(1...n)
//var visited: [Bool] = Array(repeating: false, count: n)
//
//func solution(_ arr: [Int]) {
//    if arr.count == n {
//        print(arr.map{String($0)}.joined(separator: " "))
//    }
//
//    for i in 0..<n {
//        if visited[i] == false {
//            visited[i] = true
//            solution(arr + [numArr[i]])
//            visited[i] = false
//        }
//
//    }
//}
//
//solution([])

// MARK: - 백준 2529번 부등호
//let n: Int = Int(readLine()!)!
//let arr: [String] = readLine()!.split(separator: " ").map{String($0)}
//var maxResult: String = String(Int.min)
//var minResult: String = String(Int.max)
//var visited: [Bool] = Array(repeating: false, count: 10)
//func solution(_ target: [String]) {
//    if target.count == n+1 {
//        for i in 0..<arr.count {
//            if target[i] > target[i+1] && arr[i] == ">" {
//                continue
//            } else if target[i] < target[i+1] && arr[i] == "<" {
//                continue
//            } else {
//                return
//            }
//
//
//        }
//
//        if Int(maxResult)! < Int(target.joined(separator: ""))! {
//            maxResult = target.joined(separator: "")
//        }
//
//        if Int(minResult)! > Int(target.joined(separator: ""))! {
//            minResult = target.joined(separator: "")
//        }
//
//
//    }
//
//    for i in 0...9 {
//        if visited[i] == false {
//            visited[i] = true
//            solution(target + [String(i)])
//            visited[i] = false
//        }
//    }
//}
//
//solution([])
//print(maxResult)
//print(minResult)


//let n: Int = Int(readLine()!)!
//let arr: [String] = readLine()!.split(separator: " ").map{String($0)}
//var visited: [Bool] = Array(repeating: false, count: 10)
//var result: [String] = []
//
//func solution(_ depth: Int, _ lastNum: Int, _ str: String) {
//    if depth == n {
//        result.append(str)
//        return
//    }
//
//    for i in 0...9 {
//        if visited[i] == false {
//            if arr[depth] == "<" {
//                if lastNum < i {
//                    visited[i] = true
//                    solution(depth+1, i, str + "\(i)")
//                    visited[i] = false
//                }
//            } else {
//                if lastNum > i {
//                    visited[i] = true
//                    solution(depth+1, i, str + "\(i)")
//                    visited[i] = false
//                }
//            }
//        }
//    }
//}
//
//for i in 0...9 {
//    visited[i] = true
//    solution(0, i, "\(i)")
//    visited[i] = false
//}
//
//print(result.last!)
//print(result[0])

// MARK: - 백준 3273번 두 수의 합
//let n: Int = Int(readLine()!)!
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let target: Int = Int(readLine()!)!
//var dict: [Int:Int] = [:]
//for i in arr {
//    if dict[i] == nil {
//        dict[i] = 1
//    }
//}
//
//var result: Int = 0
//
//for i in arr {
//    if dict[target-i] != nil {
//        result += 1
//    }
//}
//
//
//
//print(result/2)

// MARK: - 백준 2559번 수열
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let k: Int = read[1]
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//
//var sum: Int = arr[0..<k].reduce(0, +)
//var maxResult: Int = sum
//
//for i in k..<n {
//    sum += -arr[i-k] + arr[i]
//    maxResult = max(maxResult, sum)
//}
//print(maxResult)


// MARK: - 백준 2491번 수열
//let n: Int = Int(readLine()!)!
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//
//var maxResult: Int = 1
//var minResult: Int = 1
//var result: Int = 1
//
//func solution() {
//    for i in 0..<n-1 {
//        if arr[i] <= arr[i+1] {
//            maxResult += 1
//        } else {
//            maxResult = 1
//        }
//
//        if arr[i] >= arr[i+1] {
//            minResult += 1
//        } else {
//            minResult = 1
//        }
//
//        result = max(result, max(maxResult, minResult))
//    }
//}
//
//solution()
//print(result)

// MARK: - 백준 2003번 수들의 합2
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let m: Int = read[1]
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//
//var result: Int = 0
//for i in 0..<n {
//    var temp: Int = 0
//    for j in i..<n {
//        temp += arr[j]
//        if temp == m {
//            result += 1
//            break
//        }
//    }
//}
//
//print(result)

// MARK: - 백준 11659번 구간 합 구하기 4
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//for i in 1..<read[0] {
//    arr[i] = arr[i-1] + arr[i]
//}
//
//for _ in 0..<read[1] {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    let a: Int = temp[0] - 1
//    let b: Int = temp[1] - 1
//
//    if a == 0 {
//        print(arr[b])
//    } else {
//        print(arr[b] - arr[a-1])
//    }
//}

// MARK: - 백준 9375번 패션완 신해빈
//let testCases: Int = Int(readLine()!)!
//for _ in 0..<testCases {
//    let clothes: Int = Int(readLine()!)!
//    var dict: [String:Int] = [:]
//    for _ in 0..<clothes {
//        let temp: [String] = readLine()!.split(separator: " ").map{String($0)}
//        if dict[temp[1]] == nil {
//            dict[temp[1]] = 1
//        } else {
//            dict[temp[1]]! += 1
//        }
//    }
//
//    var result: Int = 1
//    for (_, value) in dict {
//        result = result*(value+1)
//    }
//    print(result-1)
//
//}

// MARK: - 백준 10972번 다음 순열

//let n: Int = Int(readLine()!)!
//var arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//
//if Array(1...n).reversed() == arr {
//    print("-1")
//} else {
//    var index: Int = 0
//    for i in 0..<n {
//        if i+1 < n && arr[i] < arr[i+1] {
//            index = i
//        }
//    }
//
//    var mainIndex: Int = 0
//    for j in index..<n {
//        if arr[index] < arr[j] {
//            mainIndex = j
//        }
//    }
//
//    arr.swapAt(index, mainIndex)
//    arr = arr[...index] + arr[(index+1)...].sorted()
//    print(arr.map{String($0)}.joined(separator: " "))
//}

// MARK: - 백준 2407번 조합

//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let m: Int = read[1]
//
//var maxValue: UInt64 = 1000000000000000000
//var left: [[UInt64]] = Array(repeating: [UInt64](repeating: 0, count: n+1), count: n+1)
//var right: [[UInt64]] = Array(repeating: [UInt64](repeating: 0, count: n+1), count: n+1)
//
//right[1][0] = 1
//right[1][1] = 1
//
//for i in 2...n {
//    right[i][0] = 1
//    right[i][i] = 1
//
//    for j in 1..<i {
//        right[i][j] = right[i-1][j-1] + right[i-1][j]
//        left[i][j] = left[i-1][j-1] + left[i-1][j]
//
//        if right[i][j] >= maxValue {
//            right[i][j] -= maxValue
//            left[i][j] += 1
//        }
//    }
//}
//
//if left[n][m] > 0 {
//    print("\(left[n][m])\(right[n][m])")
//} else {
//    print("\(right[n][m])")
//}

// MARK: - 백준 15965번 K번째 소수
//let limits = 10000000
//
//let N = Int(readLine()!)!
//
//let maxNum = 9000000
//var arr: [Bool] = Array(repeating: false, count: maxNum+1)
//let limit: Int = Int(sqrt(Double(maxNum)))
//arr[0] = true
//arr[1] = true
//
//for i in 2...limit {
//    guard !arr[i] else { continue }
//    for j in stride(from: i*i, through: maxNum, by: i) {
//        arr[j] = true
//    }
//}
//
//var primeArr: [Int] = []
//for i in 0..<arr.count {
//    guard !arr[i] else { continue }
//    primeArr.append(i)
//}
//
//print(primeArr[N-1])

// MARK: - 백준 17427번 약수의 합 2

//let n: Int = Int(readLine()!)!
//var sum: Int = 0
//for i in 1...n {
//    sum += n/i*i
//}
//print(sum)

// MARK: - 백준 1260번 DFS와 BFS
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let m: Int = read[1]
//let startNum: Int = read[2]
//var graph: [[Int]] = Array(repeating: [Int](), count: n+1)
//for _ in 0..<m {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    let a: Int = temp[0]
//    let b: Int = temp[1]
//    graph[a].append(b)
//    graph[b].append(a)
//    graph[a].sort()
//    graph[b].sort()
//}
//
//var dfsVisited: [Bool] = Array(repeating: false, count: n+1)
//var dfsResult: [Int] = []
//
//func dfs(_ arr: [[Int]], _ startNode: Int) {
//    dfsVisited[startNode] = true
//    dfsResult.append(startNode)
//
//    for i in arr[startNode] {
//        if !dfsVisited[i] {
//            dfs(arr, i)
//        }
//    }
//}
//
//dfs(graph, startNum)
//dfsResult.forEach{print($0, terminator: " ")}
//print()
//
//var bfsVisited: [Bool] = Array(repeating: false, count: n+1)
//var bfsResult: [Int] = []
//
//func bfs(_ startNum: Int) {
//    var queue: [Int] = [startNum]
//    bfsVisited[startNum] = true
//
//    while queue.isEmpty == false {
//        let v = queue.removeFirst()
//        bfsResult.append(v)
//        for i in graph[v] {
//            if bfsVisited[i] == false {
//                queue.append(i)
//                bfsVisited[i] = true
//            }
//        }
//    }
//
//    bfsResult.forEach{print($0, terminator: " ")}
//}
//
//
//bfs(startNum)

// MARK: - 프로그래머스 2단계 타겟 넘버

//var result: Int = 0
//func solution(_ numbers: [Int], _ target: Int) -> Int {
//    dfs(numbers, target, 0, 0)
//
//    return result
//}
//
//func dfs(_ numbers: [Int], _ target: Int, _ sum: Int, _ depth: Int) {
//    if depth == numbers.count {
//        if sum == target {
//            result += 1
//        }
//        return
//    }
//
//    dfs(numbers, target, sum + numbers[depth], depth + 1)
//    dfs(numbers, target, sum - numbers[depth], depth + 1)
//}
//
//print(solution([1, 1, 1, 1, 1], 3))

// MARK: - 프로그래머스 2단계 소수 찾기
//func solution(_ numbers:String) -> Int {
//    var result: Int = 0
//    var arr: [String] = numbers.map{String($0)}.sorted(by: >)
//    var maxValue: Int = Int(arr.joined(separator: ""))!
//    var target: [Int:Int] = makePrimeNumber(maxValue)
//
//    var tempResult: [String] = []
//    var visited: [Bool] = Array(repeating: false, count: arr.count)
//    var resultSet: Set<Int> = []
//    func dfs(_ target: Int) {
//
//        if tempResult.count == target {
//            resultSet.insert(Int(tempResult.joined(separator: ""))!)
//        }
//
//        for i in 0..<arr.count {
//            if visited[i] == false {
//                visited[i] = true
//                tempResult.append(arr[i])
//                dfs(target)
//                tempResult.removeLast()
//                visited[i] = false
//            }
//        }
//    }
//
//    for i in 1...arr.count {
//        dfs(i)
//    }
//    for i in resultSet {
//        if target[i] == 1 {
//            result += 1
//        }
//    }
//
//
//    return result
//}
//print(solution("011"))
//
//
//func makePrimeNumber(_ num: Int) -> [Int:Int] {
//    var arr: [Int] = Array(0...num)
//    arr[1] = 0
//
//    for i in 2...num {
//        if arr[i] == 0 {continue}
//        for j in stride(from: i*2, through: num, by: i) {
//            arr[j] = 0
//        }
//    }
//
//    let temp: [Int] = arr.filter{$0 != 0}
//    var returnValue: [Int:Int] = [:]
//    for i in temp {
//        if returnValue[i] == nil {
//            returnValue[i] = 1
//        }
//    }
//
//    return returnValue
//}

// MARK: - 백준 1012번 유기농 배추
//let testCases: Int = Int(readLine()!)!
//for _ in 0..<testCases {
//    let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    let m: Int = read[0]
//    let n: Int = read[1]
//    let line: Int = read[2]
//
//    var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)
//    for _ in 0..<line {
//        let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//        graph[temp[1]][temp[0]] = 1
//    }
//
//
//    let dx: [Int] = [1, -1, 0, 0]
//    let dy: [Int] = [0, 0, 1, -1]
//
//    func dfs(_ x: Int, _ y: Int) -> Bool {
//        if x<0 || x>=n || y<0 || y>=m {
//            return false
//        }
//
//        if graph[x][y] == 1 {
//            graph[x][y] = 0
//            for i in 0..<4 {
//                let nx: Int = x + dx[i]
//                let ny: Int = y + dy[i]
//                dfs(nx, ny)
//            }
//            return true
//        }
//        return false
//    }
//
//    var result: Int = 0
//
//    for i in 0..<n {
//        for j in 0..<m {
//            if dfs(i, j) {
//                result += 1
//            }
//        }
//    }
//
//    print(result)
//}

// MARK: - 백준 11053번 가장 긴 증가하는 부분 순열
//let n: Int = Int(readLine()!)!
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var result: [Int] = Array(repeating: 1, count: n)
//
//for i in 1..<n {
//    for j in 0..<i {
//        if arr[j] < arr[i] {
//            result[i] = max(result[i], result[j] + 1)
//        }
//    }
//}
//
//print(result.max()!)


// MARK: - 백준 1057번 토너먼트
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//var firstTarget: Int = read[1]
//var secondTarget: Int = read[2]
//
//var result: Int = 0
//
//var target: Int = 1
//
//while firstTarget != secondTarget {
//    firstTarget -= firstTarget / 2
//    secondTarget -= secondTarget / 2
//
//    result += 1
//}
//
//print(result)

// MARK: - 백준 1931번 회의실 배정
//let n: Int = Int(readLine()!)!
//var arr: [(Int,Int)] = []
//for _ in 0..<n {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    arr.append((temp[0], temp[1]))
//}
//
//arr.sort{
//    if $0.1 == $1.1 {
//        return $0.0 < $1.0
//    }
//    return $0.1 < $1.1
//}
//
//var result: Int = 0
//var temp: Int = 0
//for i in arr {
//    if i.0 >= temp {
//        temp = i.1
//        result += 1
//    }
//}
//
//print(result)

// MARK: - 백준 1912번 연속합

//let n: Int = Int(readLine()!)!
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var result: [Int] = Array(repeating: arr.min()!, count: n)
//
//if arr.max()! < 0 {
//    print(arr.max()!)
//} else {
//    result[0] = arr[0]
//    for i in 1..<n {
//        result[i] = max(arr[i], arr[i] + result[i-1])
//    }
//
//    print(result.max()!)
//}

// MARK: - 백준 4948번 베르트랑 공준

//while true {
//    let n: Int = Int(readLine()!)!
//    if n == 0 {
//        break
//    }
//    var arr: [Int] = Array(0...(n*2))
//    arr[1] = 0
//    for i in 2...n*2 {
//        if arr[i] == 0 {continue}
//        for j in stride(from: i*2, through: n*2, by: i) {
//            arr[j] = 0
//        }
//    }
//
//    print(arr.filter{$0 != 0 && $0 > n && $0 <= 2*n}.count)
//}

// MARK: - 백준 11724번 연결 요소의 개수
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let node: Int = read[0]
//let cases: Int = read[1]
//var graph: [[Int]] = Array(repeating: [Int](), count: node+1)
//var visited: [Bool] = Array(repeating: false, count: node+1)
//for _ in 0..<cases {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    let a: Int = temp[0]
//    let b: Int = temp[1]
//
//    graph[a].append(b)
//    graph[b].append(a)
//
//    graph[a].sort()
//    graph[b].sort()
//}
//
//var result: Int = 0
//
//func dfs(_ v: Int) {
//    visited[v] = true
//
//    for i in graph[v] {
//        if visited[i] == false {
//            visited[i] = true
//            dfs(i)
//
//        }
//
//    }
//}
//
//for i in 1...node {
//    if visited[i] == false {
//        result += 1
//        dfs(i)
//    }
//}
//
//print(result)

// MARK: - 백준 1541번 잃어버린 괄호
//let arr: [String] = readLine()!.split(separator: "-").map{String($0)}
//var result: [Int] = []
//for str in arr {
//    if str.contains("+") {
//        result.append(str.split(separator: "+").map{Int($0)!}.reduce(0, +))
//    } else {
//        result.append(Int(str)!)
//    }
//}
//
//print(result.reduce(result[0]*2, -))

// MARK: - 백준 14889번 스타트와 링크
//let n: Int = Int(readLine()!)!
//var arr: [[Int]] = []
//var visited: [Bool] = Array(repeating: false, count: n)
//var result: Int = Int.max
//var resultArr: [Int] = []
//var startTeam: Int = 0
//var linkTeam: Int = 0
//
//for _ in 0..<n {
//    arr.append(readLine()!.split(separator: " ").map{Int($0)!})
//}
//
//func dfs(_ depth: Int, _ start: Int) {
//    if depth == n/2 {
//        // 팀 나누기 성공
//        startTeam = 0
//        linkTeam = 0
//        for i in 0..<n {
//            for j in 0..<n {
//                if visited[i] == false && visited[j] == false {
//                    startTeam += arr[i][j]
//                }
//                if visited[i] == true && visited[j] == true {
//                    linkTeam += arr[i][j]
//                }
//            }
//        }
//        result = min(result, abs(startTeam-linkTeam))
//        return
//
//    }
//
//    for i in start..<n {
//        if visited[i] == false {
//            visited[i] = true
//            dfs(depth+1, i)
//            visited[i] = false
//        }
//    }
//}
//
//dfs(0, 0)
//print(result)

// MARK: - 백준 4963번 섬의 개수
//while true {
//    let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    if read == [0, 0] {
//        break
//    }
//
//    let w: Int = read[0]
//    let h: Int = read[1]
//
//    var graph: [[Int]] = []
//
//    for _ in 0..<h {
//        let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//        graph.append(temp)
//    }
//
//    var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: w), count: h)
//
//    let dx: [Int] = [1, -1, 0, 0, 1, 1, -1, -1]
//    let dy: [Int] = [0, 0, 1, -1, 1, -1, -1, 1]
//
//    var island: Int = 0
//
//    func dfs(_ x: Int, _ y: Int) {
//        for i in 0..<8 {
//            let nx: Int = x + dx[i]
//            let ny: Int = y + dy[i]
//
//            if nx<0 || nx>=w || ny<0 || ny>=h {
//                continue
//            } else {
//                if visited[ny][nx] == false && graph[ny][nx] == 1 {
//                    visited[ny][nx] = true
//                    dfs(nx, ny)
//                }
//            }
//        }
//    }
//
//    for i in 0..<h {
//        for j in 0..<w {
//            if graph[i][j] == 1 && visited[i][j] == false{
//                visited[i][j] = true
//                dfs(j, i)
//                island += 1
//            }
//        }
//    }
//
//    print(island)
//
//}

// MARK: - 백준 6603번 로또

//while true {
//    var read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    if read == [0] {
//        break
//    }
//    let n: Int = read.remove(at: 0)
//
//    var result: [Int] = []
//    var visited: [Bool] = Array(repeating: false, count: n)
//
//    func solution(_ depth: Int, _ start: Int) {
//        if depth == 6 {
//            print(result.map{String($0)}.joined(separator: " "))
//        }
//
//        for i in start..<n {
//            if visited[i] == false {
//                visited[i] = true
//                result.append(read[i])
//                solution(depth+1, i)
//                result.removeLast()
//                visited[i] = false
//            }
//        }
//    }
//
//    solution(0, 0)
//
//    print()
//}


// MARK: - 백준 1927번 최소 힙
//let n: Int = Int(readLine()!)!
//var arr: [Int] = []
//for _ in 0..<n {
//    let temp: Int = Int(readLine()!)!
//    if temp == 0 {
//        if arr.isEmpty {
//            print(0)
//        } else {
//            var min: Int = Int.max
//            var index: Int = 0
//            for i in 0..<arr.count {
//                if min > arr[i] {
//                    min = arr[i]
//                    index = i
//                }
//            }
//
//            print(arr.remove(at: index))
//        }
//    } else {
//        arr.append(temp)
//    }
//}

// MARK: - 백준 1182번 부분수열의 합
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let target: Int = read[1]
//let inputArr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//
//var visited: [Bool] = Array(repeating: false, count: n)
//var sum: Int = 0
//var result: Int = 0
//func solution(_ arr: [Int], _ start: Int) {
//    if !arr.isEmpty && sum == target {
//        result += 1
//    }
//
//    for i in start..<n {
//        if visited[i] == false {
//            visited[i] = true
//            sum += inputArr[i]
//            solution(arr+[inputArr[i]], i)
//            sum -= inputArr[i]
//            visited[i] = false
//        }
//    }
//}
//
//solution([], 0)
//print(result)

// MARK: - 백준 11279번 최대 힙

//let n: Int = Int(readLine()!)!
//var arr: [Int] = []
//
//for _ in 0..<n {
//    let temp: Int = Int(readLine()!)!
//    if temp == 0 {
//        if arr.isEmpty {
//            print(0)
//        } else {
//            var minValue: Int = Int.min
//            var index: Int = 0
//
//            for i in 0..<arr.count {
//                if minValue < arr[i] {
//                    minValue = arr[i]
//                    index = i
//                }
//            }
//            print(arr.remove(at: index))
//        }
//    } else {
//        arr.append(temp)
//    }
//}

// MARK: - 백준 7562번 나이트의 이동
//let testCases: Int = Int(readLine()!)!
//for _ in 0..<testCases {
//    let length: Int = Int(readLine()!)!
//    var visited: [[Int]] = Array(repeating: Array(repeating: -1, count: length), count: length)
//    let tempA: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    let start: (Int,Int) = (tempA[0], tempA[1])
//    let tempB: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    let target: (Int,Int) = (tempB[0], tempB[1])
//
//    let dx: [Int] = [1, 2, 2, 1, -1, -2, -2, -1]
//    let dy: [Int] = [2, 1, -1, -2, -2, -1, 1, 2]
//
//    var queue: [(Int,Int)] = []
//
//    visited[start.0][start.1] = 0
//    queue.append((start.0, start.1))
//
//    var index: Int = 0
//
//    while queue.count > index {
//        let temp: (Int, Int) = queue[index]
//        for i in 0..<dx.count {
//            let nx: Int = temp.0 + dx[i]
//            let ny: Int = temp.1 + dy[i]
//            let next: (Int, Int) = (nx, ny)
//
//            if nx<0 || nx>=length || ny<0 || ny>=length {
//                continue
//            } else {
//                if visited[next.0][next.1] == -1 {
//                    queue.append(next)
//                    visited[next.0][next.1] = visited[temp.0][temp.1] + 1
//                }
//            }
//
//        }
//        index += 1
//    }
//
//    print(visited[target.0][target.1])
//
//}

// MARK: - 백준 11055번 가장 큰 증가 부분 수열

//let n: Int = Int(readLine()!)!
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var dp: [Int] = Array(repeating: 0, count: n+1)
//
//for i in 1...n{
//    dp[i] = arr[i-1]
//    for j in 1...i {
//        if arr[i-1] > arr[j-1] {
//            dp[i] = max(dp[j] + arr[i-1], dp[i])
//        }
//    }
//}
//print(dp.max()!)

// MARK: - 백준 11054번 가장 긴 바이토닉 부분 수열
//let n: Int = Int(readLine()!)!
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var plusDP: [Int] = Array(repeating: 1, count: n)
//var minusDP: [Int] = Array(repeating: 1, count: n)
//
//for i in 1..<n {
//    for j in 0..<i {
//        if arr[j] < arr[i] {
//            plusDP[i] = max(plusDP[j]+1, plusDP[i])
//        }
//    }
//}
//
//for i in stride(from: n-1, through: 0, by: -1) {
//    for j in stride(from: n-1, through: i, by: -1) {
//        if arr[i] > arr[j] {
//            minusDP[i] = max(minusDP[j]+1, minusDP[i])
//        }
//    }
//}
//
//var result: Int = 0
//for i in 0..<plusDP.count {
//    result = max(result, plusDP[i]+minusDP[i]-1)
//}
//print(result)

// MARK: - 백준 11722번 가장 긴 감소하는 부분 수열
//let n: Int = Int(readLine()!)!
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var dp: [Int] = Array(repeating: 1, count: n)
//
//for i in 1..<n {
//    for j in 0..<i {
//        if arr[j] > arr[i] {
//            dp[i] = max(dp[i], dp[j]+1)
//        }
//    }
//}
//
//print(dp.max()!)

// MARK: - 백준 12015번 가장 긴 증가하는 부분 수열 2
//let n: Int = Int(readLine()!)!
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var result: [Int] = [arr[0]]
//
//for i in 1..<n {
//    if arr[i] > result.last! {
//        result.append(arr[i])
//    } else {
//        var start: Int = 0
//        var end: Int = result.count-1
//
//        while start <= end {
//            let mid: Int = (start+end) / 2
//
//            if result[mid] < arr[i] {
//                start = mid + 1
//            } else {
//                end = mid - 1
//            }
//        }
//
//        result[start] = arr[i]
//    }
//
//}
//print(result.count)

// MARK: - 백준 1780번 종이의 개수
//let n: Int = Int(readLine()!)!
//var graph: [[Int]] = []
//for _ in 0..<n {
//    graph.append(readLine()!.split(separator: " ").map{Int($0)!})
//}
//var result: [Int] = Array(repeating: 0, count: 3)
//
//func solution(_ row: Int, _ col: Int, _ arr: [[Int]], _ size: Int) {
//    if check(row, col, arr, size) { return }
//    else {
//        let newSize: Int = size/3
//        for i in 0..<3 {
//            for j in 0..<3 {
//                solution(row+(newSize*i), col+(newSize*j), arr, newSize)
//            }
//        }
//    }
//}
//
//func check(_ row: Int, _ col: Int, _ arr: [[Int]], _ size: Int) -> Bool {
//    let k = arr[row][col]
//    for i in row..<row+size {
//        for j in col..<col+size {
//            if graph[i][j] != k {
//                return false
//            }
//        }
//    }
//    result[k+1] += 1
//    return true
//}
//
//solution(0, 0, graph, n)
//result.forEach({
//    print($0)
//})

// MARK: - 백준 트리의 부모 찾기
//let n: Int = Int(readLine()!)!
//var arr: [[Int]] = Array(repeating: [Int](), count: n+1)
//var visited: [Bool] = Array(repeating: false, count: n+1)
//var result: [Int] = Array(repeating: 0, count: n+1)
//for _ in 0..<n-1 {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    let a: Int = temp[0]
//    let b: Int = temp[1]
//
//    arr[a].append(b)
//    arr[b].append(a)
//
//    arr[a].sort()
//    arr[b].sort()
//}
//
//
//func dfs(_ v: Int) {
//
//    for i in arr[v] {
//        if visited[i] == false {
//            visited[i] = true
//            result[i] = v
//            dfs(i)
//        }
//    }
//}
//
//dfs(1)
//for i in 2...n {
//    print(result[i])
//}


//let height: [Int] = [140, 21, 21, 32]
//let width: [Int] = [2, 1, 3, 7]
//
//var dict: [Int:Int] = [:]
//for i in 0..<height.count {
//    dict[i] = height[i]
//}
//print(dict)
//var temp: [Int] = []
//for i in 0..<height.count {
//    let k = dict.filter{$0.value >= height[i]}
//    print("자신보다 크거나 같은 높이 필터링: \(k)")
//
//
//    var totalWidth: Int = 0
//    k.forEach {
//        totalWidth += width[$0.key]
//    }
//    temp.append(height[i]*totalWidth)
//
//}
//
//print(temp.max()!)

// MARK: - 백준 2644번 촌수계산
//
//let n: Int = Int(readLine()!)!
//let target: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let node: Int = Int(readLine()!)!
//
//var graph: [[Int]] = Array(repeating: [Int](), count: n+1)
//
//for _ in 0..<node {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    graph[temp[0]].append(temp[1])
//    graph[temp[1]].append(temp[0])
//}
//
//var stack: [(Int, Int)] = [(target[0], 0)]
//var visited: [Bool] = Array(repeating: false, count: n+1)
//visited[target[0]] = true
//
//var result = -1
//while !stack.isEmpty {
//    let k = stack.removeLast()
//    if k.0 == target[1] {
//        result = k.1
//        break
//    }
//    for i in graph[k.0] {
//        if visited[i] == true {continue }
//        visited[i] = true
//        stack.append((i, k.1 + 1))
//    }
//}
//
//print(result)
//var graph: [Int: [[Int]]] = [:]
//for i in 1...n {
//    graph[i] = []
//}
//for _ in 0..<node {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    graph[temp[0]]!.append([temp[0], temp[1]])
//    graph[temp[1]]!.append([temp[1], temp[0]])
//}
//
//var visited: [Int] = Array(repeating: Int.max, count: n+1)
//visited[target[0]] = 0
//var stack = graph[target[0]]!
//
//while !stack.isEmpty {
//    let k = stack.popLast()!
//    if visited[k[1]] > visited[k[0]] + 1 {
//        stack += graph[k[1]]!
//        visited[k[1]] = visited[k[0]] + 1
//    }
//}
//
//if visited[target[1]] == Int.max {
//    print(-1)
//} else {
//    print(visited[target[1]])
//}
//



// MARK: - 백준 10819번 차이를 최대로
//let n: Int = Int(readLine()!)!
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var result: Int = 0
//
//var temp: [Int] = []
//var visited: [Bool] = Array(repeating: false, count: n)
//func solution(_ depth: Int) {
//    if depth == n {
//        var sum: Int = 0
//        for i in 1..<n {
//            sum += abs(temp[i-1] - temp[i])
//        }
//        result = max(result, sum)
//    }
//
//    for i in 0..<n {
//        if visited[i] == false {
//            visited[i] = true
//            temp.append(arr[i])
//            solution(depth + 1)
//            temp.removeLast()
//            visited[i] = false
//        }
//    }
//}
//
//solution(0)
//print(result)

// MARK: - 백준 18870번 좌표 압축
//let n: Int = Int(readLine()!)!
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let sortedArr: [Int] = Array(Set(arr).sorted(by: <))
//var dict: [Int:Int] = [:]
//for i in 0..<sortedArr.count {
//    dict[sortedArr[i]] = i
//}
//
//for i in arr {
//    print(dict[i]!, terminator: " ")
//}

// MARK: - 백준 1890번 점프
//let n: Int = Int(readLine()!)!
//var arr: [[Int]] = []
//for _ in 0..<n {
//    arr.append(readLine()!.split(separator: " ").map{Int($0)!})
//}
//var visited: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)
//visited[0][0] = 1
//
//for y in 0..<n {
//    for x in 0..<n {
//        if visited[y][x] != 0 {
//            if x + arr[y][x] < n && arr[y][x] != 0 {
//                visited[y][x + arr[y][x]] += visited[y][x]
//            }
//            if y + arr[y][x] < n && arr[y][x] != 0 {
//                visited[y + arr[y][x]][x] += visited[y][x]
//            }
//        }
//    }
//}
//
//print(visited[n-1][n-1])

// MARK: - 백준 9184번 신나는 함수 실행

//var result: [[[Int]]] = Array(repeating: Array(repeating: Array(repeating: 0, count: 21), count: 21), count: 21)
//
//func solution(_ a: Int, _ b: Int, _ c: Int) -> Int {
//    if a<=0 || b<=0 || c<=0 {
//        return 1
//    }
//
//    if a<21 && b<21 && c<21 && result[a][b][c] != 0 {
//        return result[a][b][c]
//    }
//
//    if a>20 || b>20 || c>20 {
//        result[20][20][20] = solution(20, 20, 20)
//        return solution(20, 20, 20)
//    }
//
//    if a<b && b<c {
//        result[a][b][c] = solution(a, b, c-1) + solution(a, b-1, c-1) - solution(a, b-1, c)
//        return solution(a, b, c-1) + solution(a, b-1, c-1) - solution(a, b-1, c)
//    }
//    result[a][b][c] = solution(a-1, b, c) + solution(a-1, b-1, c) + solution(a-1, b, c-1) - solution(a-1, b-1, c-1)
//    return solution(a-1, b, c) + solution(a-1, b-1, c) + solution(a-1, b, c-1) - solution(a-1, b-1, c-1)
//
//}
//
//while true {
//    let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    if read == [-1, -1, -1] {
//        break
//    }
//    print("w(\(read[0]), \(read[1]), \(read[2])) = \(solution(read[0], read[1], read[2]))")
//
//}


// MARK: - 백준 2004번 조합 0의 개수
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let m: Int = read[1]
//
//
//func solution2(_ num: Int) -> Int {
//    var count: Int = 0
//    var i: Int = 2
//    while num >= i {
//        count += num/i
//        i *= 2
//    }
//    return count
//}
//
//func solution5(_ num: Int) -> Int {
//    var count: Int = 0
//    var i: Int = 5
//    while num >= i {
//        count += num/i
//        i *= 5
//    }
//    return count
//}
//
//let a: Int = solution2(n) - (solution2(m)+solution2(n-m))
//let b: Int = solution5(n) - (solution5(m)+solution5(n-m))
//print(min(a, b))

// MARK: - 백준 2504번 괄호의 값
//let arr: [String] = readLine()!.map{String($0)}
//
//var result: Int = 0
//var temp: Int = 1
//var check: Bool = true
//var stack: [String] = []
//
//
//for i in 0..<arr.count {
//    if arr[i] == "(" {
//        temp *= 2
//        stack.append(arr[i])
//
//    } else if arr[i] == "[" {
//        temp *= 3
//        stack.append(arr[i])
//
//    } else if arr[i] == ")" {
//
//        if stack.isEmpty || stack.last != "(" {
//            check = false
//            break
//        }
//
//        if arr[i-1] == "(" {
//            result += temp
//        }
//        stack.removeLast()
//        temp /= 2
//
//    } else if arr[i] == "]" {
//        if stack.isEmpty || stack.last != "[" {
//            check = false
//            break
//        }
//
//        if arr[i-1] == "[" {
//            result += temp
//        }
//        stack.removeLast()
//        temp /= 3
//
//    }
//}
//
//if !stack.isEmpty || !check{
//    print(0)
//} else {
//    print(result)
//}
//

// MARK: - 백준 15663번 N과 M(9)
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let m: Int = read[1]
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: <)
//
//var result: [Int] = []
//var visited: [Bool] = Array(repeating: false, count: n)
//var dict: [[Int]:Int] = [:]
//var answer: [[Int]] = []
//
//func solution(_ depth: Int, _ start: Int) {
//    if depth == m {
//        if dict[result] == nil {
//            result.forEach{print($0, terminator: " ")}
//            print()
//            dict[result] = 1
//
//        }
//    }
//
//    for i in 0..<n {
//        if visited[i] == false {
//            visited[i] = true
//            result.append(arr[i])
//            solution(depth+1, i)
//            result.removeLast()
//            visited[i] = false
//        }
//    }
//}
//
//solution(0, 0)

// MARK: - 백준 10451번 순열 사이클
//let testCases: Int = Int(readLine()!)!
//
//for _ in 0..<testCases {
//    let length: Int = Int(readLine()!)!
//    let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    var dict: [Int:Int] = [:]
//    for i in 0..<length {
//        dict[i+1] = arr[i]
//    }
//    var visited: [Bool] = Array(repeating: false, count: length+1)
//    var result: Int = 0
//
//    func solution(_ key: Int) {
//        if visited[key] == false {
//            visited[key] = true
//            solution(dict[key]!)
//        }
//    }
//
//    for i in 1...length {
//        if visited[i] == false {
//            solution(i)
//            result += 1
//        }
//    }
//
//    print(result)
//}

// MARK: - 백준 2529번 부등호
//let n: Int = Int(readLine()!)!
//let arr: [String] = readLine()!.split(separator: " ").map{String($0)}
//
//var visited: [Bool] = Array(repeating: false, count: 10)
//var result: [String] = []
//func solution(_ depth: Int, _ lastNumber: Int, _ str: String) {
//    if depth == n {
//        result.append(str)
//        return
//    }
//
//    for i in 0...9 {
//        if visited[i] == false {
//            if arr[depth] == "<" {
//                if lastNumber < i {
//                    visited[i] = true
//                    solution(depth+1, i, str+"\(i)")
//                    visited[i] = false
//                }
//            } else {
//                if lastNumber > i {
//                    visited[i] = true
//                    solution(depth+1, i, str+"\(i)")
//                    visited[i] = false
//                }
//            }
//        }
//    }
//}
//
//for i in 0...9 {
//    visited[i] = true
//    solution(0, i, "\(i)")
//    visited[i] = false
//}
//
//print(result.last!)
//print(result[0])

// MARK: - 백준 15666번 N과 M (12)
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let length: Int = read[0]
//let target: Int = read[1]
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: <)
//var visited: [Bool] = Array(repeating: false, count: length)
//var result: [Int] = []
//var dict: [[Int]:Int] = [:]
//
//func solution(_ depth: Int) {
//    if depth == target {
//        if dict[result] == nil {
//            result.forEach{print($0, terminator: " ")}
//            print()
//            dict[result] = 1
//        }
//        return
//    }
//
//    for i in 0..<length where result.last ?? 0 <= arr[i]{
//        result.append(arr[i])
//        solution(depth+1)
//        result.removeLast()
//    }
//}
//
//solution(0)

// MARK: - 백준 15664번 N과 M (10)
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let m: Int = read[1]
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
//var visited: [Bool] = Array(repeating: false, count: n)
//var dict: [[Int]:Int] = [:]
//
//var result: [Int] = []
//
//func solution(_ depth: Int) {
//    if depth == m {
//        if dict[result] == nil {
//            result.forEach{print($0, terminator: " ")}
//            print()
//            dict[result] = 1
//            return
//        }
//    }
//
//    for i in 0..<n where result.last ?? 0 <= arr[i] {
//        if visited[i] == false {
//            visited[i] = true
//            result.append(arr[i])
//            solution(depth+1)
//            result.removeLast()
//            visited[i] = false
//        }
//    }
//}
//
//solution(0)

// MARK: - 백준 15988번 1, 2, 3 더하기 3
//let testCases: Int = Int(readLine()!)!
//var arr: [Int] = Array(repeating: 0, count: 1000001)
//arr[1] = 1
//arr[2] = 2
//arr[3] = 4
//
//for i in stride(from: 4, through: 1000000, by: 1) {
//    arr[i] = (arr[i-1] + arr[i-2] + arr[i-3]) % 1000000009
//}
//
//for _ in 0..<testCases {
//    let target: Int = Int(readLine()!)!
//    print(arr[target])
//}

// MARK: - 백준 15665번 N과 M (11)
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let m: Int = read[1]
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
//var dict: [[String]:Int] = [:]
//
//func solution(_ temp: [String]) {
//    if temp.count == m {
//        if dict[temp] == nil {
//            print(temp.joined(separator: " "))
//            dict[temp] = 1
//        }
//        return
//    }
//
//    for i in 0..<n {
//        solution(temp + [String(arr[i])])
//    }
//}
//
//solution([])


// MARK: - 백준 1850번 최대공약수
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let A: Int = read[0]
//let B: Int = read[1]
//
//func solution(_ x: Int, _ y: Int) -> Int {
//    var a: Int = max(x, y)
//    var b: Int = min(x, y)
//
//    while b > 0 {
//        let temp: Int = a
//        a = b
//        b = temp % b
//    }
//
//    return a
//}
//
//print(String(repeating: "1", count: solution(A, B)))

// MARK: - 백준 5567번 결혼식
//let n: Int = Int(readLine()!)!
//let node: Int = Int(readLine()!)!
//var graph: [[Int]] = Array(repeating: [Int](), count: n+1)
//for _ in 0..<node {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    let a: Int = temp[0]
//    let b: Int = temp[1]
//    graph[a].append(b)
//    graph[b].append(a)
//}
//
//var visited: [Bool] = Array(repeating: false, count: n+1)
//visited[1] = true
//var arr: [Int] = graph[1]
//
//func solution(_ v: Int) {
//
//    for i in graph[v] {
//        if visited[i] == false {
//            visited[i] = true
//        }
//    }
//
//}
//
//for i in arr {
//    visited[i] = true
//    solution(i)
//}
//
//print(visited.filter{$0 == true}.count - 1)

//let n: Int = Int(readLine()!)!
//let node: Int = Int(readLine()!)!
//var graph: [[Int]] = Array(repeating: [Int](), count: n+1)
//for _ in 0..<node {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    let a: Int = temp[0]
//    let b: Int = temp[1]
//    graph[a].append(b)
//    graph[b].append(a)
//}
//
//var result: Int = graph[1].count
//var visited: [Bool] = Array(repeating: false, count: n+1)
//visited[1] = true
//graph[1].forEach{visited[$0] = true}
//graph[1].forEach{graph[$0].forEach{
//    if visited[$0] == false {
//        visited[$0] = true
//        result += 1
//    }
//}}
//
//print(result)

// MARK: - 백준 18111번 마인크래프트
//let input: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let h: Int = input[0]
//let w: Int = input[1]
//let block: Int = input[2]
//var field: [[Int]] = []
//for _ in 0..<h {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    field.append(temp)
//}
//
//var minValue: Int = 256
//var maxValue: Int = 0
//
//for i in 0..<h {
//    for j in 0..<w {
//        if field[i][j] <= minValue {
//            minValue = field[i][j]
//        }
//        if field[i][j] >= maxValue {
//            maxValue = field[i][j]
//        }
//    }
//}
//
//var result: [Int] = [0, 0]
//
//for i in stride(from: maxValue, through: minValue, by: -1) {
//    var time: Int = 0
//    var tempBlock: Int = block
//
//    for j in 0..<h {
//        for k in 0..<w {
//            if field[j][k] < i {
//                tempBlock -= (i - field[j][k])
//                time += (i - field[j][k])
//            } else if field[j][k] > i {
//                tempBlock += (field[j][k] - i)
//                time += (field[j][k] - i) * 2
//
//            } else {
//                continue
//            }
//        }
//    }
//
//    if tempBlock < 0 {
//        continue
//    }
//
//    if result[0] == 0 {
//        result[0] = time
//        result[1] = i
//    } else {
//        if result[0] > time {
//            result[0] = time
//            result[1] = i
//        } else if result[0] == time {
//            result[1] = max(result[1], i)
//        }
//    }
//}
//
//print(result[0], result[1])

// MARK: - 백준 15990번 1, 2, 3 더하기 5
//let testCases: Int = Int(readLine()!)!
//var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: 4), count: 100001)
//dp[1][1] = 1
//dp[2][2] = 1
//dp[3][1] = 1
//dp[3][2] = 1
//dp[3][3] = 1
//for i in stride(from: 4, through: 100000, by: 1) {
//    dp[i][1] = (dp[i - 1][2] + dp[i - 1][3]) % 1000000009
//    dp[i][2] = (dp[i - 2][1] + dp[i - 2][3]) % 1000000009
//    dp[i][3] = (dp[i - 3][1] + dp[i - 3][2]) % 1000000009
//}
//
//for _ in 0..<testCases {
//    let read: Int = Int(readLine()!)!
//    print("\((dp[read][1] + dp[read][2] + dp[read][3]) % 1000000009)")
//}

// MARK: - 백준 11060번 점프 점프
//let n: Int = Int(readLine()!)!
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var dp: [Int] = Array(repeating: Int.max, count: 1001)
//dp[1] = 0
//for i in 1...n {
//    for j in stride(from: 1, through: arr[i-1], by: 1) {
//        if i + j <= n {
//            dp[i+j] = min(dp[i]+1, dp[i+j])
//        }
//    }
//}
//
//
//if dp[n] == Int.max {
//    print(-1)
//} else {
//    print(dp[n])
//}

// MARK: - 백준 5525번 IOIOI
//let n: Int = Int(readLine()!)!
//let str: String = "IO"
//var target: String = ""
//for _ in 0..<n {
//    target += str
//}
//target += "I"
//
//
//var result: Int = 0
//let length: Int = Int(readLine()!)!
//let arr: [String] = readLine()!.map{String($0)}
//
//for i in 0...(length - target.count) {
//    if arr[i] == "O" {continue}
//    let temp: String = arr[i..<i+target.count].joined(separator: "")
//    if temp == target {
//        result += 1
//    }
//
//}
//
//print(result)

//let n = Int(readLine()!)!
//let m = Int(readLine()!)!
//let s = readLine()!.map{$0}
//print(s)
//var result = 0
//var compare = 0
//var i = 0
//while i < m-2 {
//    if String(s[i...i+2]) == "IOI" {
//        compare += 1
//        if compare == n {
//            compare -= 1
//            result += 1
//        }
//        i += 1
//    } else {
//        compare = 0
//    }
//    i += 1
//}
//
//print(result)

// MARK: - 백준 1024번 수열의 합
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let targetNumber: Int = read[0]
//var minLength: Int = read[1]
//
//var result: Int = -1
//var tempIndex: Int = 0
//
//for i in stride(from: minLength, through: 100, by: 1) {
//    let k: Int = i*(i-1)/2
//    if ((targetNumber-k)%i == 0 && (targetNumber-k)/i >= 0) {
//        result = (targetNumber-k) / i
//        tempIndex = i
//        break
//    }
//}
//
//if result == -1 {
//    print(-1)
//} else {
//    for i in 0..<tempIndex {
//        print(result+i, terminator: " ")
//    }
//}

// MARK: - 백준 2210번 숫자판 점프
//var graph: [[String]] = []
//for _ in 0..<5 {
//    graph.append(readLine()!.split(separator: " ").map{String($0)})
//}
//
//let dx: [Int] = [1, -1, 0, 0]
//let dy: [Int] = [0, 0, 1, -1]
//
//var result: Set<String> = []
//
//func solution(_ depth: Int, _ x: Int, _ y: Int, _ str: String) {
//    if depth == 6 {
//        result.insert(str)
//        return
//    }
//
//    for i in 0..<dx.count {
//        let nx: Int = x + dx[i]
//        let ny: Int = y + dy[i]
//
////        if nx < 0 || nx >= 5 || ny < 0 || ny >= 5 { continue }
////        solution(depth + 1, nx, ny, str + graph[nx][ny])
//
//        if nx>=0 && nx<5 && ny>=0 && ny<5 {
//            solution(depth+1, nx, ny, str + graph[nx][ny])
//        }
//    }
//}
//
//for i in 0..<5 {
//    for j in 0..<5 {
//        solution(0, i, j, "")
//    }
//}
//
//print(result.count)


// MARK: - 백준 15903번 카드 합체 놀이
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let length: Int = read[0]
//let count: Int = read[1]
//var result: Int = 0
//var cards: [Int] = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: <)
//
//for _ in 0..<count {
//    let temp: Int = cards[0] + cards[1]
//    cards[0] = temp
//    cards[1] = temp
//    cards.sort(by: <)
//}
//
//print(cards.reduce(0, +))

// MARK: - 백준 15658번 연산자 끼워넣기 2

//let n: Int = Int(readLine()!)!
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var cal: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//
//var minResult: Int = Int.max
//var maxResult: Int = Int.min
//
//func solution(_ depth: Int, _ result: Int, _ plus: Int, _ minus: Int, _ multiply: Int, _ divide: Int) {
//    if depth == n-1 {
//        minResult = min(minResult, result)
//        maxResult = max(maxResult, result)
//        return
//    }
//
//    for i in 0..<cal.count {
//        if i == 0 && cal[i] > plus {
//            solution(depth+1, result + arr[depth+1], plus+1, minus, multiply, divide)
//        }
//        if i == 1 && cal[i] > minus {
//            solution(depth+1, result - arr[depth+1], plus, minus+1, multiply, divide)
//        }
//        if i == 2 && cal[i] > multiply {
//            solution(depth+1, result * arr[depth+1], plus, minus, multiply+1, divide)
//        }
//        if i == 3 && cal[i] > divide {
//            solution(depth+1, result / arr[depth+1], plus, minus, multiply, divide+1)
//        }
//    }
//}
//
//solution(0, arr[0], 0, 0, 0, 0)
//print(maxResult)
//print(minResult)

// MARK: - 백준 2304번 창고 다각형
//let n: Int = Int(readLine()!)!
//var block: [(Int, Int)] = []
//var maxHeight: (Int, Int) = (0, 0)
//var dict: [Int:Int] = [:]
//for _ in 0..<n {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    if temp[1] > maxHeight.1 {
//        maxHeight = (temp[0], temp[1])
//    }
//    block.append((temp[0], temp[1]))
//
//    if dict[temp[0]] == nil {
//        dict[temp[0]] = temp[1]
//    }
//
//}
//
//block.sort{$0.0 < $1.0}
//
//var leftSum: Int = 0
//var initLeftHeight: Int = block[0].1
//var initLeftIndex: Int = 0
//var rightSum: Int = 0
//var initRightHeight: Int = block[block.count-1].1
//var initRightIndex: Int = block.count - 1
//
//for i in (block[0].0)..<maxHeight.0 {
//    if dict[i] == nil {
//        leftSum += initLeftHeight
//    } else {
//        if initLeftHeight < dict[i]! {
//            initLeftHeight = dict[i]!
//        }
//        leftSum += initLeftHeight
//    }
//
//    print(leftSum)
//}
//
//for i in stride(from: block.last!.0, to: maxHeight.0, by: -1) {
//    if dict[i] == nil {
//        rightSum += initRightHeight
//    } else {
//        if initRightHeight < dict[i]! {
//            initRightHeight = dict[i]!
//        }
//        rightSum += initRightHeight
//    }
//}
//
//print(leftSum + rightSum + maxHeight.1)

// MARK: - 백준 2961번 도영이가 만든 맛있는 음식
//
//let n: Int = Int(readLine()!)!
//var arr: [(Int, Int)] = []
//for _ in 0..<n {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    arr.append((temp[0], temp[1]))
//}
//var visited: [Bool] = Array(repeating: false, count: n)
//
//var temp: [(Int, Int)] = []
//var result: Int = Int.max
//func solution(_ start: Int) {
//    if temp.isEmpty == false {
//        var s: Int = 1
//        var b: Int = 0
//
//        for cook in temp {
//            s *= cook.0
//            b += cook.1
//        }
//
//        result = min(result, abs(s - b))
//
//
//    }
//
//    for i in start..<arr.count {
//        if visited[i] == false {
//            visited[i] = true
//            temp.append(arr[i])
//            solution(i)
//            temp.removeLast()
//            visited[i] = false
//        }
//    }
//}
//
//solution(0)
//print(result)

// MARK: - 백준 14620번 꽃길
//let n: Int = Int(readLine()!)!
//var graph: [[Int]] = []
//for _ in 0..<n {
//    graph.append(readLine()!.split(separator: " ").map{Int($0)!})
//}
//var result: [Int] = []
//var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: n)
//var minResult: Int = Int.max
//let dx: [Int] = [0, 1, -1, 0, 0]
//let dy: [Int] = [0, 0, 0, 1, -1]
//
//func isInGraph(_ x: Int, _ y: Int) -> Bool {
//    if x>=0 && x<n && y>=0 && y<n {
//        return true
//    }
//    return false
//}
//
//func isExistFlower(_ x: Int, _ y: Int) -> Bool {
//    for i in 0..<5 {
//        let nx: Int = x + dx[i]
//        let ny: Int = y + dy[i]
//        if isInGraph(nx, ny) == false || visited[nx][ny] == true {
//            return false
//        }
//    }
//    return true
//}
//
//func totalPrice(_ x: Int, _ y: Int) -> Int {
//    var sum: Int = 0
//    for i in 0..<5 {
//        let nx: Int = x + dx[i]
//        let ny: Int = y + dy[i]
//        visited[nx][ny] = true
//        sum += graph[nx][ny]
//    }
//    return sum
//}
//
//func makeFalse(_ x: Int, _ y: Int) {
//    for i in 0..<5 {
//        let nx: Int = x + dx[i]
//        let ny: Int = y + dy[i]
//        visited[nx][ny] = false
//    }
//}
//
//func solution(_ x: Int, _ y: Int, _ sum: Int, _ count: Int) {
//    if count == 3 {
//        minResult = min(minResult, sum)
//        return
//    }
//
//    for i in x..<n-1 {
//        for j in 1..<n-1 {
//            if isExistFlower(i, j) {
//                let price: Int = totalPrice(i, j)
//                solution(i, j, sum + price, count + 1)
//                makeFalse(i, j)
//            }
//        }
//    }
//
//}
//
//solution(0, 0, 0, 0)
//print(minResult)
//

//func solution(_ count: Int, _ x: Int, _ totalPrice: Int) {
//
//    if count == 3 {
//        minResult = min(minResult, totalPrice)
//        return
//    }
//
//    for i in x..<n-1 {
//        for j in 1..<n-1 {
//            let a: (Int, Int) = (i+1, j)
//            let b: (Int, Int) = (i-1, j)
//            let c: (Int, Int) = (i, j+1)
//            let d: (Int, Int) = (i, j-1)
//
//
//            if a.0>=0 && a.1<n && b.0>=0 && b.1<n && c.0>=0 && c.1<n && d.0>=0 && d.1<n && i>=0 && i<n && j>=0 && j<n {
//                if !visited[i][j] && !visited[a.0][a.1] && !visited[b.0][b.1] && !visited[c.0][c.1] && !visited[d.0][d.1] {
//                    visited[i][j] = true
//                    visited[a.0][a.1] = true
//                    visited[b.0][b.1] = true
//                    visited[c.0][c.1] = true
//                    visited[d.0][d.1] = true
//                    let sum: Int = graph[i][j] + graph[a.0][a.1] + graph[b.0][b.1] + graph[c.0][c.1] + graph[d.0][d.1]
////                    if result.count == 3 {
////                        result.sort()
////                        result.removeLast()
////                        result.append(sum)
////                    } else {
////                        result.append(sum)
////                    }
//
//
//                    solution(count + 1, i, totalPrice + sum)
//                    visited[i][j] = false
//                    visited[a.0][a.1] = false
//                    visited[b.0][b.1] = false
//                    visited[c.0][c.1] = false
//                    visited[d.0][d.1] = false
//                }
//
//            }
//        }
//    }
//}
//
//solution(0, 0, 0)
//print(minResult)

// MARK: - 백준 1535번 안녕
//let n: Int = Int(readLine()!)!
//let a: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let b: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//
//var arr: [(Int, Int)] = []
//
//for i in 0..<n {
//    arr.append((a[i], b[i]))
//}
//
//arr.sort{
//    if $0.0 == $1.0 {
//        return $0.1 > $1.1
//    }
//    return $0.0 < $1.0
//
//}
//
//
//var visited: [Bool] = Array(repeating: false, count: n)
//var sum: Int = 0
//var result: [(Int, Int)] = []
//var maxResult: Int = 0
//var tempResult: Int = 0
//func solution(_ start: Int) {
//    if sum < 100 && !result.isEmpty {
//        maxResult = max(maxResult, tempResult)
//    }
//
//    for i in start..<n {
//        if visited[i] == false {
//            visited[i] = true
//            sum += arr[i].0
//            result.append(arr[i])
//            tempResult += arr[i].1
//            solution(i)
//            tempResult -= arr[i].1
//            result.removeLast()
//            sum -= arr[i].0
//            visited[i] = false
//
//        }
//    }
//}
//
//solution(0)
//print(maxResult)

// MARK: - 백준 17103번 골드바흐 파티션

//let testCases: Int = Int(readLine()!)!
//
//func checkPrimeNumber(_ num: Int) -> [Int] {
//    var arr: [Int] = Array(0...num)
//    arr[1] = 0
//
//    for i in 0..<Int(sqrt(Double(num)))+1 {
//        if arr[i] == 0 { continue }
//        for j in stride(from: i*2, through: num, by: i) {
//            arr[j] = 0
//        }
//    }
//    return arr
//}
//
//
//for _ in 0..<testCases {
//    let n: Int = Int(readLine()!)!
//    var result: Int = 0
//    let arr: [Int] = checkPrimeNumber(n)
//    for i in stride(from: 2, through: n/2, by: 1) {
//        if arr[i] != 0 {
//            if arr[n-i] != 0 {
//            result += 1
//            }
//        }
//    }
//
//
//    print(result)
//}

// MARK: - 백준 9658번 돌 게임 4
//let n: Int = Int(readLine()!)!
//print(n%7 == 1 || n%7 == 3 ? "CY" : "SK")

// MARK: - 백준 2178번 미로 탐색
//let input: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let h: Int = input[0]
//let w: Int = input[1]
//var arr: [[Int]] = []
//for _ in 0..<h {
//    let temp: [Int] = readLine()!.map{Int(String($0))!}
//    arr.append(temp)
//}
//
//let dx: [Int] = [1, -1, 0, 0]
//let dy: [Int] = [0, 0, 1, -1]
//
//var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: w), count: h)
//var queue: [(Int, Int)] = [(0, 0)]
//
//while !queue.isEmpty {
//    let popValue: (Int, Int) = queue.removeFirst()
//    if visited[popValue.0][popValue.1] == false {
//        visited[popValue.0][popValue.1] = true
//        for i in 0..<4 {
//            let nx: Int = popValue.0 + dx[i]
//            let ny: Int = popValue.1 + dy[i]
//
//            if nx>=0 && nx<h && ny>=0 && ny<w {
//                if arr[nx][ny]>=1 && visited[nx][ny] == false {
//                    arr[nx][ny] = arr[popValue.0][popValue.1] + 1
//                    queue.append((nx, ny))
//                }
//            }
//        }
//    }
//}
//print(arr[h-1][w-1])

// MARK: - 백준 2667번 단지번호붙이기
/// BFS 풀이
//let n: Int = Int(readLine()!)!
//var graph: [[Int]] = []
//for _ in 0..<n {
//    graph.append(readLine()!.map{Int(String($0))!})
//}
//
//let dx: [Int] = [1, -1, 0, 0]
//let dy: [Int] = [0, 0, 1, -1]
//
//var result: [Int] = []
//var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: n)
//
//
//func BFS(_ input: (Int, Int)) {
//    var queue: [(Int, Int)] = [input]
//    var count: Int = 1
//
//    while !queue.isEmpty {
//        let popValue: (Int, Int) = queue.removeFirst()
//        graph[popValue.0][popValue.1] = 0
//
//        for i in 0..<4 {
//            let nx: Int = popValue.0 + dx[i]
//            let ny: Int = popValue.1 + dy[i]
//
//            if nx>=0 && nx<n && ny>=0 && ny<n {
//                if visited[nx][ny] == false {
//                    visited[nx][ny] = true
//                    if graph[nx][ny] == 1 {
//                        count += 1
//                        graph[nx][ny] = 0
//                        queue.append((nx, ny))
//                    }
//
//                }
//            }
//        }
//    }
//    result.append(count)
//}
//
//
//for i in 0..<n {
//    for j in 0..<n {
//        if graph[i][j] == 1 && visited[i][j] == false {
//            BFS((i, j))
//        }
//    }
//}
//
//print(result.count)
//print(result.sorted().map{String($0)}.joined(separator: "\n"))

/// DFS 풀이
//let n: Int = Int(readLine()!)!
//var graph: [[Int]] = []
//for _ in 0..<n {
//    graph.append(readLine()!.map{Int(String($0))!})
//}
//
//let dx: [Int] = [1, -1, 0, 0]
//let dy: [Int] = [0, 0, 1, -1]
//
//var result: [Int] = []
//var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: n)
//
//var count: Int = 0
//
//func dfs(_ x: Int, _ y: Int) {
//    count += 1
//
//    for i in 0..<4 {
//        let nx: Int = x + dx[i]
//        let ny: Int = y + dy[i]
//
//        if nx>=0 && nx<n && ny>=0 && ny<n {
//            if visited[nx][ny] == false && graph[nx][ny] == 1 {
//                visited[nx][ny] = true
//                graph[nx][ny] = 0
//                dfs(nx, ny)
//            }
//        }
//    }
//}
//
//for i in 0..<n {
//    for j in 0..<n {
//        if graph[i][j] == 1 && visited[i][j] == false {
//            graph[i][j] = 0
//            visited[i][j] = false
//            count = 0
//            dfs(i, j)
//            result.append(count)
//
//        }
//    }
//}
//
//
//print(result.count)
//print(result.sorted().map{String($0)}.joined(separator: "\n"))

// MARK: - 백준 1697번 숨바꼭질
//let input: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let subin: Int = input[0]
//let sister: Int = input[1]
//var graph: [Int] = Array(repeating: 0, count: 100001)
//var visited: [Bool] = Array(repeating: false, count: 100001)
//var count: Int = 0
//
//var queue: [Int] = []
//func bfs(_ subin: Int, _ sister: Int) -> Int {
//    queue.append(subin)
//
//    while !queue.isEmpty {
//        let popData: Int = queue.removeFirst()
//        if popData == sister {
//            break
//        }
//
//        if popData > 0 && visited[popData-1] == false {
//            queue.append(popData-1)
//            visited[popData-1] = true
//            graph[popData-1] = graph[popData] + 1
//        }
//
//        if popData < 100000 && visited[popData+1] == false {
//            queue.append(popData+1)
//            visited[popData+1] = true
//            graph[popData+1] = graph[popData] + 1
//        }
//
//        if popData*2 < 100001 && visited[popData*2] == false {
//            queue.append(popData*2)
//            visited[popData*2] = true
//            graph[popData*2] = graph[popData] + 1
//        }
//    }
//
//    return graph[sister]
//}
//
//print(bfs(subin, sister))

// MARK: - 백준 1932번 정수 삼각형
//let n: Int = Int(readLine()!)!
//var graph: [[Int]] = []
//for _ in 0..<n {
//    graph.append(readLine()!.split(separator: " ").map{Int($0)!})
//}
//
//for i in 1..<n {
//    let beforeArr: [Int] = graph[i-1]
//    let currentArr: [Int] = graph[i]
//    for j in 0..<currentArr.count {
//        if j==0 {
//            graph[i][j] += beforeArr[0]
//        } else if j==currentArr.count-1 {
//            graph[i][j] += beforeArr[beforeArr.count-1]
//        } else {
//            graph[i][j] = max(graph[i][j]+beforeArr[j-1], graph[i][j]+beforeArr[j])
//        }
//    }
//}
//
//print(graph.last!.max()!)

// MARK: - 백준 2156번 포도주 시식
//let n: Int = Int(readLine()!)!
//var arr: [Int] = [0]
//var result: [Int] = Array(repeating: 0, count: n+1)
//for _ in 0..<n {
//    arr.append(Int(readLine()!)!)
//}
//
//if n == 1 {
//    print(arr[1])
//} else if n == 2 {
//    print(arr[1]+arr[2])
//} else {
//    result[1] = arr[1]
//    result[2] = arr[1] + arr[2]
//    for i in 3...n {
//        result[i] = max(result[i-1], result[i-2] + arr[i], result[i-3] + arr[i-1] + arr[i])
//    }
//    print(result[n])
//}


// MARK: - 백준 10844번 쉬운 계단 수
//let n: Int = Int(readLine()!)!
//
//if n==1 {
//    print(9)
//} else if n==2 {
//    print(17)
//} else {
//    var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: 10), count: n+1)
//    arr[1] = [0, 1, 1, 1, 1, 1, 1, 1, 1, 1]
//    arr[2] = [1, 1, 2, 2, 2, 2, 2, 2, 2, 1]
//
//    for i in 3...n {
//        for j in 0...9 {
//            if j == 0 {
//                arr[i][j] = arr[i-1][j+1] % 1000000000
//            } else if j == 9 {
//                arr[i][j] = arr[i-1][j-1] % 1000000000
//            } else {
//                arr[i][j] = (arr[i-1][j-1] + arr[i-1][j+1]) % 1000000000
//            }
//        }
//    }
//    print(arr[n].reduce(0, +))
//}

// MARK: - 백준 9020번 골드바흐의 추측
//let testCases: Int = Int(readLine()!)!
//for _ in 0..<testCases {
//    let n: Int = Int(readLine()!)!
//    var primeNumber: [Int] = Array(0...n)
//    primeNumber[1] = 0
//    for i in 2..<Int(sqrt(Double(n)))+1 {
//        for j in stride(from: i*2, through: n, by: i) {
//            primeNumber[j] = 0
//        }
//    }
//    var result: [(Int, Int)] = []
//
//    for i in 2...n/2 {
//        if primeNumber[i] == 0 || primeNumber[n-i] == 0 { continue }
//        result.append((i, n-i))
//
//    }
//
//    print("\(result.last!.0) \(result.last!.1)")
//
//}

// MARK: - 백준 14888번 연산자 끼워넣기
//let n: Int = Int(readLine()!)!
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var inputOper: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var oper: [String] = []
//for i in 0..<4 {
//    while inputOper[i] >= 1 {
//        if i == 0 {
//            oper.append("+")
//            inputOper[i] -= 1
//        } else if i == 1 {
//            oper.append("-")
//            inputOper[i] -= 1
//        } else if i == 2 {
//            oper.append("*")
//            inputOper[i] -= 1
//        } else if i == 3 {
//            oper.append("/")
//            inputOper[i] -= 1
//        }
//    }
//
//}
//
//var minResult: Int = Int.max
//var maxResult: Int = Int.min
//
//var visited: [Bool] = Array(repeating: false, count: oper.count)
//var result: [String] = []
//
//func solution(_ depth: Int) {
//    if depth == n-1 {
//        var tempIndex: Int = 1
//        var tempValue: Int = arr[0]
//
//        for i in result {
//            if i == "+" {
//                tempValue += arr[tempIndex]
//                tempIndex += 1
//            } else if i == "-" {
//                tempValue -= arr[tempIndex]
//                tempIndex += 1
//            } else if i == "*" {
//                tempValue *= arr[tempIndex]
//                tempIndex += 1
//            } else if i == "/" {
//                tempValue /= arr[tempIndex]
//                tempIndex += 1
//            }
//        }
//
//        minResult = min(minResult, tempValue)
//        maxResult = max(maxResult, tempValue)
//        return
//
//    }
//
//    for i in 0..<oper.count {
//        if visited[i] == false {
//            visited[i] = true
//            result.append(oper[i])
//            solution(depth + 1)
//            result.removeLast()
//            visited[i] = false
//        }
//    }
//
//}
//
//solution(0)
//print(maxResult)
//print(minResult)

// MARK: - 백준 1149번 RGB거리
//let n: Int = Int(readLine()!)!
//var RGB: [[Int]] = []
//for _ in 0..<n {
//    RGB.append(readLine()!.split(separator: " ").map{Int($0)!})
//}
//
//var result: [[Int]] = []
//result.append(RGB[0])
//for i in 1..<n {
//    var temp: [Int] = []
//    temp.append(min(result[i-1][1], result[i-1][2]) + RGB[i][0])
//    temp.append(min(result[i-1][0], result[i-1][2]) + RGB[i][1])
//    temp.append(min(result[i-1][0], result[i-1][1]) + RGB[i][2])
//    result.append(temp)
//}
//print(result.last!.min()!)

// MARK: - 백준 11052번 카드 구매하기

//let n: Int = Int(readLine()!)!
//let price: [Int] = [0] + readLine()!.split(separator: " ").map{Int($0)!}
//let indexArr: [Int] = Array(0...n)
//var result: [Int] = []
//var sum: Int = 0
//var maxResult: Int = 0
//func solution(_ index: Int) {
//    if sum > n { return }
//
//    if sum == n {
//        var temp: Int = 0
//        for i in result {
//            temp += price[i]
//        }
//        maxResult = max(maxResult, temp)
//        return
//    }
//
//    for i in 1...n {
//            sum += indexArr[i]
//            result.append(indexArr[i])
//            solution(i)
//            sum -= indexArr[i]
//            result.removeLast()
//    }
//}
//
//solution(0)
//print(maxResult)

//let n: Int = Int(readLine()!)!
//let card: [Int] = [0] + readLine()!.split(separator: " ").map{Int($0)!}
//var dp: [Int] = Array(repeating: 0, count: n+1)
//
//for i in 1...n {
//    for j in 1...i {
//        dp[i] = max(dp[i-j] + card[j], dp[i])
//    }
//}
//
//print(dp[n])


// MARK: - 백준 16953번 A->B
//let input: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let a: Int = input[0]
//var b: Int = input[1]
//var count: Int = 0
//var check: Bool = false
//func solution(_ str: String, _ cnt: Int) {
//    if Int(str)! > b {
//        return
//    }
//
//    if Int(str)! == b {
//        check = true
//        count = cnt
//        return
//    }
//
//    solution(String(Int(str)!*2), cnt + 1)
//    solution(str + "1", cnt + 1)
//}
//
//solution(String(a), 1)
//
//if check {
//    print(count)
//} else {
//    print(-1)
//}

//var count: Int = 1
//
//while a<b {
//    if b%2 == 0 {
//        b /= 2
//    } else if b%10 == 1 {
//        b /= 10
//    } else {
//        break
//    }
//    count += 1
//}
//
//if a == b {
//    print(count)
//} else {
//    print(-1)
//}


// MARK: - ;;;
//let n: Int = Int(readLine()!)!
//let arr: [Int] = [0] + readLine()!.split(separator: " ").map{Int($0)!}
//var sale: [[(Int, Int)]] = [[(0,0)]]
//for _ in 0..<n {
//    let saleInfo: Int = Int(readLine()!)!
//    var tempInfo: [(Int,Int)] = []
//    for _ in 0..<saleInfo {
//        let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//        tempInfo.append((temp[0], temp[1]))
//    }
//    sale.append(tempInfo)
//}
//
//var visited: [Bool] = Array(repeating: false, count: n+1)
//var buyInfo: [Int] = []
//
//var minResult: Int = Int.max
//
//func solution() {
//    if buyInfo.count == n {
//        var paper: [Int] = arr
//        var myPrice: Int = 0
//        for i in buyInfo {
//            if paper[i] <= 0 {
//                myPrice += 1
//            } else {
//                myPrice += paper[i]
//            }
//
//            for j in sale[i] {
//                let index: Int = j.0
//                let saleInfo: Int = j.1
//                paper[index] -= saleInfo
//            }
//        }
//        minResult = min(minResult, myPrice)
//    }
//    for i in 1...n {
//        if visited[i] == false {
//            visited[i] = true
//            buyInfo.append(i)
//            solution()
//            buyInfo.removeLast()
//            visited[i] = false
//
//        }
//    }
//}
//solution()
//print("\(minResult)")


// MARK: - 백준 11048번 이동하기
//let input: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = input[0]
//let m: Int = input[1]
//var graph: [[Int]] = [Array(repeating: 0, count: m+1)]
//for _ in 0..<n {
//    graph.append([0] + readLine()!.split(separator: " ").map{Int($0)!})
//}
//
//var result: [[Int]] = Array(repeating: Array(repeating: 0, count: m+1), count: n+1)
//
//for i in 1...n {
//    for j in 1...m {
//        result[i][j] = max(result[i-1][j-1], result[i-1][j], result[i][j-1]) + graph[i][j]
//    }
//}
//
//
//print(result[n][m])

// MARK: - 백준 1500번 최대 곱
//let input: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let s: Int = input[0]
//let k: Int = input[1]
//let number: [Int] = Array(1...s)
//var result: [Int] = []
//var maxResult: Int = 0
//func dfs(_ depth: Int, _ start: Int, _ sum: Int, _ mul: Int) {
//
//    if sum > s {
//        return
//    }
//
//    if depth == k && sum == s {
//        print(result)
//        maxResult = max(maxResult, mul)
//        return
//    }
//
//    for i in start..<s-1 {
//        result.append(number[i])
//        dfs(depth+1, i, sum + number[i], mul * number[i])
//        result.removeLast()
//    }
//}
//
//if k == 1 {
//    print(s)
//} else {
//    dfs(0, 0, 0, 1)
//    print(maxResult)
//}



//let input: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let s: Int = input[0]
//var k: Int = input[1]
//
//var q: Int = s/k
//var r: Int = s%k
//var n: Int = 1
//
//while k>0 {
//    if r>0 {
//        n *= q+1
//        r -= 1
//    } else {
//        n *= q
//    }
//    k -= 1
//}
//
//print(n)



// MARK: - 백준 12761번 돌다리
//let input: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let a: Int = input[0]
//let b: Int = input[1]
//let dong: Int = input[2]
//let ju: Int = input[3]
//
//var graph: [Int] = Array(repeating: Int.max, count: 100001)
//var visited: [Bool] = Array(repeating: false, count: 100001)
//graph[dong] = 0
//var queue: [Int] = []
//func bfs(_ d: Int, _ j: Int) -> Int {
//    queue.append(d)
//
//    while !queue.isEmpty {
//        let popData: Int = queue.removeFirst()
//        if popData == j {
//            break
//        }
//
//        if popData+1 < 100001 && visited[popData+1] == false {
//            visited[popData+1] = true
//            graph[popData+1] = min(graph[popData]+1, graph[popData+1])
//            queue.append(popData+1)
//        }
//
//        if popData-1 > 0 && visited[popData-1] == false  {
//            visited[popData-1] = true
//            graph[popData-1] = min(graph[popData]+1, graph[popData-1])
//            queue.append(popData-1)
//        }
//
//        if popData+a < 100001 && visited[popData+a] == false  {
//            visited[popData+a] = true
//            graph[popData+a] = min(graph[popData]+1, graph[popData+a])
//            queue.append(popData+a)
//        }
//
//        if popData-a > 0 && visited[popData-a] == false  {
//            visited[popData-a] = true
//            graph[popData-a] = min(graph[popData]+1, graph[popData-a])
//            queue.append(popData-a)
//        }
//
//        if popData*a < 100001 && visited[popData*a] == false  {
//            visited[popData*a] = true
//            graph[popData*a] = min(graph[popData]+1, graph[popData*a])
//            queue.append(popData*a)
//        }
//
//        if popData+b < 100001 && visited[popData+b] == false  {
//            visited[popData+b] = true
//            graph[popData+b] = min(graph[popData]+1, graph[popData+b])
//            queue.append(popData+b)
//        }
//
//        if popData-b > 0 && visited[popData-b] == false  {
//            visited[popData-b] = true
//            graph[popData-b] = min(graph[popData]+1, graph[popData-b])
//            queue.append(popData-b)
//        }
//
//        if popData*b < 100001 && visited[popData*b] == false  {
//            visited[popData*b] = true
//            graph[popData*b] = min(graph[popData]+1, graph[popData*b])
//            queue.append(popData*b)
//        }
//
//
//    }
//    return graph[j]
//}
//
//print(bfs(dong, ju))

// MARK: - 백준 14225번 부분수열의 합
//let n: Int = Int(readLine()!)!
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let base: Int = arr.reduce(0, +)
//var dict: [Int:Int] = [:]
//for i in 1...base+1 {
//    dict[i] = 1
//}
//var visited: [Bool] = Array(repeating: false, count: n)
//var sum: Int = 0
//
//func dfs(_ start: Int) {
//    if sum > 0 {
//        dict.removeValue(forKey: sum)
//    }
//
//    for i in start..<n {
//        if visited[i] == false {
//            visited[i] = true
//            sum += arr[i]
//            dfs(i)
//            sum -= arr[i]
//            visited[i] = false
//        }
//    }
//}
//
//dfs(0)
//
//print(dict.sorted{$0.key < $1.key}[0].key)


//let n: Int = Int(readLine()!)!
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let base: Int = arr.reduce(0, +)
//var result: [Bool] = Array(repeating: false, count: base+2)
//
//var visited: [Bool] = Array(repeating: false, count: n)
//var sum: Int = 0
//
//func dfs(_ start: Int) {
//    if sum > 0 {
//        result[sum] = true
//    }
//
//    for i in start..<n {
//        if visited[i] == false {
//            visited[i] = true
//            sum += arr[i]
//            dfs(i)
//            sum -= arr[i]
//            visited[i] = false
//        }
//    }
//}
//
//dfs(0)
//
//for i in 1..<result.count {
//    if result[i] == false {
//        print(i)
//        break
//    }
//}

// MARK: - 백준 15989번 1, 2, 3 더하기 4
//let testCases: Int = Int(readLine()!)!
//var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: 4), count: 10001)
//for i in 1...3 {
//    for j in 1...i {
//        dp[i][j] = 1
//    }
//}
//
//for i in 4...10000 {
//    dp[i][1] = dp[i-1][1]
//    dp[i][2] = dp[i-2][1] + dp[i-2][2]
//    dp[i][3] = dp[i-3][1] + dp[i-3][2] + dp[i-3][3]
//}
//
//for _ in 0..<testCases {
//    let read: Int = Int(readLine()!)!
//    var result: Int = 0
//    for num in dp[read] {
//        result += num
//    }
//    print(result)
//}

// MARK: - 백준 6118번 숨바꼭질
//let input: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let node: Int = input[0]
//let line: Int = input[1]
//
//var graph: [[Int]] = Array(repeating: [Int](), count: node+1)
//
//for _ in 0..<line {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    graph[temp[0]].append(temp[1])
//    graph[temp[1]].append(temp[0])
//}
//var visited: [Bool] = Array(repeating: false, count: node+1)
//var result: [Int] = Array(repeating: 0, count: node+1)
//func bfs(_ v: Int) {
//    var queue: [Int] = [v]
//    visited[v] = true
//
//    while !queue.isEmpty {
//        let popValeu: Int = queue.removeFirst()
//        for i in graph[popValeu] {
//            if visited[i] == false {
//                queue.append(i)
//                visited[i] = true
//                result[i] = result[popValeu] + 1
//            }
//        }
//    }
//}
//
//bfs(1)
//let maxResult: Int = result.max()!
//
//print(result.firstIndex(of: maxResult)!, terminator: " ")
//print(maxResult, terminator: " ")
//print(result.filter{$0 == maxResult}.count, terminator: " ")
//
//


//
//public static int[] mergeSort(int[] arr, int p, int r) {
//    if (p < r) {
//        int q = (p+r) / 2;
//        mergeSort(arr, p, q);
//        mergeSort(arr, q+1, r);
//        merge(arr, p, q, r);
//    }
//    return arr;
//}

// MARK: - 백준 1790번 수 이어 쓰기 2
//let input: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = input[0]
//var k: Int = input[1]
//
//var result: Int = 0
//var digit: Int = 1
//var count: Int = 9
//
//while k > digit * count {
//    k -= digit * count
//    result += count
//    digit += 1
//    count *= 10
//}
//
//result = result + 1 + (k-1)/digit
//
//if result > n {
//    print(-1)
//} else {
//    let index: Int = (k-1) % digit
//    let str = String(result)
//    print(str[str.index(str.startIndex, offsetBy: index)])
//}

// MARK: - 백준 11057번 오르막 수
//let n: Int = Int(readLine()!)!
//var dp: [Int] = Array(repeating: 1, count: 10)
//
//for _ in 1..<n {
//    for i in 1...9 {
//        dp[i] = (dp[i] + dp[i-1]) % 10007
//    }
//}
//
//
//print(dp.reduce(0, +)%10007)


// MARK: - 백준 11660번 구간 합 구하기 5
//let input: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = input[0]
//let testCases: Int = input[1]
//var graph: [[Int]] = []
//var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: n+1), count: n+1)
//
//for _ in 0..<n {
//    graph.append(readLine()!.split(separator: " ").map{Int($0)!})
//}
//
//for i in 1...n {
//    for j in 1...n {
//        dp[i][j] += dp[i][j-1] + dp[i-1][j] - dp[i-1][j-1] + graph[i-1][j-1]
//    }
//}
//
//for _ in 0..<testCases {
//    let read = readLine()!.split(separator: " ").map{Int(String($0))!}
//    let (x1, y1, x2, y2) = (read[0],read[1],read[2],read[3])
//    print(dp[x2][y2] - dp[x2][y1-1] - dp[x1-1][y2] + dp[x1-1][y1-1])
//}

// MARK: - 백준 16194번 카드 구매하기 2
//let n: Int = Int(readLine()!)!
//let card: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var dp: [Int] = Array(repeating: 999999, count: n+1)
//dp[0] = 0
//for i in 1..<n+1 {
//    for j in 1..<i+1 {
//        dp[i] = min(dp[i], dp[i-j]+card[j-1])
//    }
//}
//
//print(dp[n])

// MARK: - 백준 11497번 통나무 건너뛰기
//let testCases: Int = Int(readLine()!)!
//for _ in 0..<testCases {
//    let size: Int = Int(readLine()!)!
//    let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
//    var result: [Int] = Array(repeating: 0, count: size)
//    result[0] = arr[0]
//
//    var flag: Bool = false
//    var index: Int = 1
//    var startIndex: Int = 1
//    var lastIndex: Int = size - 1
//
//    while startIndex<=lastIndex {
//        if flag == false {
//            result[startIndex] = arr[index]
//            startIndex += 1
//        } else {
//            result[lastIndex] = arr[index]
//            lastIndex -= 1
//        }
//        index += 1
//        flag.toggle()
//    }
//
//    let checkArr: [Int] = result + [result[0]]
//    var maxResult: Int = 0
//    for i in 1..<checkArr.count {
//        maxResult = max(maxResult, abs(checkArr[i]-checkArr[i-1]))
//    }
//    print(maxResult)
//}

// MARK: - 백준 2564번 경비원
//let input: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let width: Int = input[0]
//let height: Int = input[1]
//let n: Int = Int(readLine()!)!
//var place: [(Int, Int)] = []
//for _ in 0..<n {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    place.append((temp[0], temp[1]))
//}
//
//let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let muin: (Int, Int) = (temp[0], temp[1])
//
//var result: Int = 0
//
//
//if muin.0 == 1 {
//    for market in place {
//        if market.0 == muin.0 {
//            result += abs(muin.1 - market.1)
//        } else {
//            if market.0 == 2 {
//                result += min(muin.1 + height + market.1, width - muin.1 + height + width - market.1)
//            }
//
//            if market.0 == 3 {
//                result += muin.1 + market.1
//            }
//
//            if market.0 == 4 {
//                result += width - muin.1 + market.1
//            }
//        }
//    }
//
//}
//
//if muin.0 == 2 {
//    for market in place {
//        if market.0 == muin.0 {
//            result += abs(muin.1 - market.1)
//        } else {
//            if market.0 == 1 {
//                result += min(muin.1 + height + market.1, width - muin.1 + height + width - market.1)
//            }
//
//            if market.0 == 3 {
//                result += muin.1 + height - market.1
//            }
//
//            if market.0 == 4 {
//                result += width - muin.1 + height - market.1
//            }
//
//        }
//    }
//}
//
//if muin.0 == 3 {    // 서
//    for market in place {
//        if market.0 == muin.0 {
//            result += abs(muin.1 - market.1)
//        } else {
//            if market.0 == 1 {  // 북
//                result += muin.1 + market.1
//            }
//
//            if market.0 == 2 {  // 남
//                result += height - muin.1 + market.1
//            }
//
//            if market.0 == 4 { // 동
//                result += min(muin.1 + width + market.1, height - muin.1 + width + height - market.1)
//            }
//
//        }
//    }
//}
//
//if muin.0 == 4 {    // 동
//    for market in place {
//        if market.0 == muin.0 {
//            result += abs(muin.1 - market.1)
//        } else {
//            if market.0 == 1 {  // 북
//                result += muin.1 + width - market.1
//            }
//
//            if market.0 == 2 {  // 남
//                result += height - muin.1 + width - market.1
//            }
//
//            if market.0 == 3 { // 서
//                result += min(muin.1 + width + market.1, height - muin.1 + width + height - market.1)
//            }
//
//        }
//    }
//}
//
//print(result)


// MARK: - 백준 12101번 1, 2, 3 더하기 2
//let input: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let target: Int = input[0]
//let resultNum: Int = input[1]
//var result: [[String]] = []
//
//var temp: [Int] = []
//var sum: Int = 0
//
//func solution() {
//
//    if sum > target {
//        return
//    }
//
//    if sum == target {
//        result.append(temp.map{String($0)})
//        return
//    }
//
//    for i in 1...3 {
//        temp.append(i)
//        sum += i
//        solution()
//        sum -= i
//        temp.removeLast()
//
//    }
//}
//
//solution()
//
//
//if resultNum > result.count {
//    print(-1)
//} else {
//    let k: [String] = result[resultNum-1]
//    var resultString: String = ""
//    for i in 0..<k.count {
//        if i == k.count-1 {
//            resultString += k[i]
//        } else {
//            resultString += k[i]
//            resultString += "+"
//        }
//
//    }
//    print(resultString)
//}

// MARK: - 백준 1629번 곱셈

//let input: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let a: Int = input[0]
//let b: Int = input[1]
//let c: Int = input[2]
//
//func solution(_ n: Int) -> Int {
//    if n == 0 { return 1 }
//
//    if n%2 == 0 {
//        let num: Int = solution(n/2)
//        return num%c * num%c
//    } else {
//        let num = solution((n-1)/2)
//        return num%c * num%c * a%c
//    }
//}
//
//print(solution(b))


// MARK: - 백준 11051번 이항 계수 2
//let input: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = input[0]
//let k: Int = input[1]
//var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: n+1), count: n+1)
//graph[1][0] = 1
//graph[1][1] = 1
//
//if n>1 {
//    for i in 2...n {
//        for j in 0...i {
//            if j == 0 || j == i {
//                graph[i][j] = 1
//            } else {
//                graph[i][j] = (graph[i-1][j-1] + graph[i-1][j]) % 10007
//            }
//        }
//    }
//}
//
//print(graph[n][k] % 10007)

// MARK: - 백준 1389번 케빈 베이컨의 6단계 법칙
//let input: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let friends: Int = input[0]
//let line: Int = input[1]
//var graph: [[Int]] = Array(repeating: [Int](), count: friends+1)
//for _ in 0..<line {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    graph[temp[0]].append(temp[1])
//    graph[temp[1]].append(temp[0])
//}
//
//
//var visited: [Bool] = Array(repeating: false, count: friends+1)
//
//
//
//func bfs(_ v: Int) -> Int {
//    visited[v] = true
//    var quque: [Int] = [v]
//    var result: [Int] = Array(repeating: 0, count: friends+1)
//
//    while !quque.isEmpty {
//        let popData: Int = quque.removeFirst()
//        for i in graph[popData] {
//            if visited[i] == false {
//                visited[i] = true
//                quque.append(i)
//                result[i] = result[popData] + 1
//
//            }
//        }
//    }
//
//    return result.reduce(0, +)
//}
//
//var checkNum: Int = Int.max
//var resultIndex: Int = 0
//for i in 1...friends {
//    visited = Array(repeating: false, count: friends+1)
//    let k: Int = bfs(i)
//    if checkNum > k {
//        checkNum = k
//        resultIndex = i
//
//    }
//}
//
//print(resultIndex)

// MARK: - 백준 2502번 떡 먹는 호랑이
//let input: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let target: Int = input[0]
//var dduck: Int = input[1]
//
//var arr: [(Int, Int)] = Array(repeating: (0, 0), count: target+1)
//arr[1] = (1, 0)
//arr[2] = (0, 1)
//
//if target>=3 {
//    for i in 3...target {
//        arr[i] = (arr[i-1].0 + arr[i-2].0, arr[i-1].1 + arr[i-2].1)
//    }
//}
//
//let a: Int = arr[target].0
//let b: Int = arr[target].1
//
//var x: Int = 1
//var y: Int = 1
//
//while true {
//    if (dduck - (a*x)) % b == 0 {
//        y = (dduck - (a*x)) / b
//        break
//    } else {
//        x += 1
//    }
//}
//print(x)
//print(y)

// MARK: - 백준 16198번 에너지 모으기

//let n: Int = Int(readLine()!)!
//let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var maxResult: Int = 0
//
//func solution(_ inputArr: [Int], _ sum: Int) {
//    if inputArr.count == 2 {
//        maxResult = max(maxResult, sum)
//        return
//    }
//
//    for i in 1..<inputArr.count-1 {
//        var tempArr: [Int] = inputArr
//        tempArr.remove(at: i)
//        solution(tempArr, sum + inputArr[i-1] * inputArr[i+1])
//    }
//}
//
//solution(arr, 0)
//print(maxResult)


// MARK: - 백준 1342번 행운의 문자열
//let input: [String] = readLine()!.map{String($0)}
//var dict: [String:Int] = [:]
//for text in input {
//    if dict[text] == nil {
//        dict[text] = 1
//    } else {
//        dict[text]! += 1
//    }
//}
//
//var sortDict = dict.sorted(by: {$0.key < $1.key})
//var result: [String] = []
//var count: Int = 0
//
//func solution(_ lastText: String, _ depth: Int) {
//    if depth == input.count {
//        count += 1
//        return
//    }
//
//    for dictValue in 0..<sortDict.count {
//        if sortDict[dictValue].value < 1 || lastText == sortDict[dictValue].key { continue }
//        sortDict[dictValue].value -= 1
//        solution(sortDict[dictValue].key, depth+1)
//        sortDict[dictValue].value += 1
//    }
//}
//
//solution("", 0)
//print(count)

// MARK: - 백준 1926번 그림
//let input: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = input[0]
//let m: Int = input[1]
//var graph: [[Int]] = []
//for _ in 0..<n {
//    graph.append(readLine()!.split(separator: " ").map{Int($0)!})
//}
//
//let dx: [Int] = [1, -1, 0, 0]
//let dy: [Int] = [0, 0, 1, -1]
//var result: [Int] = []
//var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: m), count: n)
//
//func bfs(_ x: Int, _ y: Int) -> Int {
//    var queue: [(Int, Int)] = [(x, y)]
//    var count: Int = 0
//
//    while !queue.isEmpty {
//        let popValue: (Int, Int) = queue.removeFirst()
//        graph[popValue.0][popValue.1] = 0
//        count += 1
//        for i in 0..<dx.count {
//            let nx: Int = popValue.0 + dx[i]
//            let ny: Int = popValue.1 + dy[i]
//
//            if nx>=0 && nx<n && ny>=0 && ny<m && graph[nx][ny] == 1 && visited[nx][ny] == false {
//                visited[nx][ny] = true
//                queue.append((nx, ny))
//
//            }
//        }
//    }
//    return count
//}
//
//for i in 0..<n {
//    for j in 0..<m {
//        if graph[i][j] == 0 { continue }
//        result.append((bfs(i, j)))
//
//    }
//}
//
//print(result.count)
//if result.count == 0 {
//    print(0)
//} else {
//    print(result.max()!)
//}
//

// MARK: - 프로그래머스 level2 기능개발

//func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
//    var result: [Int] = []
//    var n: Int = 0
//
//    var progressesArr: [Int] = progresses
//    var speedsArr: [Int] = speeds
//
//    while !progressesArr.isEmpty {
//
//        if (100 - progressesArr[0]) % speedsArr[0] == 0 {
//            n = (100 - progressesArr[0]) / speedsArr[0]
//        } else {
//            n = (100 - progressesArr[0]) / speedsArr[0] + 1
//        }
//
//        for i in 0..<progressesArr.count {
//            progressesArr[i] += speedsArr[i] * n
//        }
//
//        var count: Int = 0
//
//        for i in 0..<progressesArr.count {
//            if progressesArr[i] >= 100 { count += 1 }
//            else {
//                break
//            }
//        }
//
//        result.append(count)
//
//        progressesArr = Array(progressesArr[count..<progressesArr.count])
//        speedsArr = Array(speedsArr[count..<speedsArr.count])
//
//    }
//
//    return result
//}

// MARK: - 프로그래머스 level1 실패율

//func solution(_ N:Int, _ stages:[Int]) -> [Int] {
//    var dict: [Int:Float] = [:]
//    var person: Int = stages.count
//
//    for i in 1...N {
//        let a: Int = stages.filter{$0 == i}.count
//        dict[i] = Float(a) / Float(person)
//        person -= a
//    }
//
//    let result = dict.sorted(by: <).sorted(by: {$0.value>$1.value})
//
//    return result.map{$0.key}
//}

// MARK: - 프로그래머스 level1 크레인 인형뽑기 게임

//func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
//
//    var newBoard: [[Int]] = Array(repeating: [Int](), count: board.count)
//    var movesIndex: [Int] = moves.map{$0 - 1}   // 배열 계산 편하게 하기 위해서
//    var result: Int = 0
//    var stack: [Int] = []
//
//    for i in 0..<board.count {
//        for j in 0..<board.count {
//            if board[j][i] == 0 { continue }
//            newBoard[i].insert(board[j][i], at: 0)
//        }
//    }
//
//    print(newBoard)
//
//    for i in movesIndex {
//        if newBoard[i].isEmpty { continue }
//        stack.append(newBoard[i].removeLast())
//
//        if stack.count > 1 {
//            if stack[stack.count-1] == stack[stack.count-2] {
//                stack.removeLast()
//                stack.removeLast()
//                result += 2
//            }
//        }
//
//    }
//
//    return result
//}
//
//print(solution([[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]], [1,5,3,5,1,2,1,4]))


// MARK: - 프로그래머스 level1 신고 결과 받기

//func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
//
//    var result: [Int] = []
//    var reportDict: [String:Set<String>] = [:]
//    for i in 0..<report.count {
//        let temp: [String] = report[i].split(separator: " ").map{String($0)}
//        if reportDict[temp[0]] == nil {
//            reportDict[temp[0]] = [temp[1]]
//        } else {
//            reportDict[temp[0]]!.insert(temp[1])
//        }
//    }
//
//    var countDict: [String:Int] = [:]
//    for i in id_list {
//        if countDict[i] == nil {
//            countDict[i] = 0
//        }
//    }
//
//
//    for (_, value) in reportDict {
//        value.forEach({
//            countDict[$0]! += 1
//        })
//    }
//
//
//    countDict = countDict.filter{ $0.value >= k }
//
//    for id in id_list {
//        var count: Int = 0
//        let setArr = reportDict[id] ?? []
//
//        for i in countDict {
//            if setArr.contains(i.key) {
//                count += 1
//            }
//        }
//
//        result.append(count)
//    }
//    return result
//}
//
//print(solution(["muzi", "frodo", "apeach", "neo"], ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"], 2))

// MARK: - 프로그래머스 level2 가장 큰 수 (정렬)
//func solution(_ numbers:[Int]) -> String {
//
//    let newNumbers: [Int] = numbers.sorted {
//        return Int("\($0)\($1)")! > Int("\($1)\($0)")!
//    }
//
//
//    let result: String = newNumbers.map{String($0)}.reduce("", +)
//    return result.first == "0" ? "0" : result
//
//}
//
//print(solution([0, 0, 0]))


// MARK: - 프로그래머스 level2 수식 최대화

//func solution(_ expression:String) -> Int64 {
//
//    let expressionArr: [String] = expression.map{String($0)}
//    var number: [String] = []
//    var operand: [String] = []
//    var temp: String = ""
//
//    /// 숫자, 기호  나눠서 배열에 저장
//    for i in 0..<expressionArr.count {
//        if expressionArr[i] == "+" || expressionArr[i] == "-" || expressionArr[i] == "*" {
//            operand.append(expressionArr[i])
//            number.append(temp)
//            temp = ""
//        } else {
//            temp += expressionArr[i]
//            if i == expressionArr.count - 1 {
//                number.append(temp)
//            }
//        }
//    }
//
//
//    /// 우선순위 선언 가능한 부호 집합 구성
//    let checkOperand: [String] = Array(Set(operand))
//    var operandSet: [[String]] = []
//
//    /// 존재하는 부호들로 우선순위 구성을 위한 백트래킹 func
//    var tempArr: [String] = []
//    var tempVisited: [Bool] = Array(repeating: false, count: checkOperand.count)
//    func makeOperandSet(_ depth: Int) {
//        if depth == checkOperand.count {
//            operandSet.append(tempArr)
//            return
//        }
//
//        for i in 0..<checkOperand.count {
//            if tempVisited[i] == false {
//                tempVisited[i] = true
//                tempArr.append(checkOperand[i])
//                makeOperandSet(depth + 1)
//                tempArr.removeLast()
//                tempVisited[i] = false
//            }
//        }
//    }
//
//    makeOperandSet(0)
//
//
//    var maxResult: Int64 = 0
//
//    for operSet in operandSet {
//        var copyNumber: [String] = number
//        var copyOperand: [String] = operand
//        var index: Int = 0
//        while !copyOperand.isEmpty {
//            if copyOperand.contains(operSet[index]) {
//                let findIndex: Int = copyOperand.firstIndex(of: operSet[index])!
//                let oper: String = copyOperand[findIndex]
//                copyOperand.remove(at: findIndex)
//
//                if oper == "+" {
//                    copyNumber[findIndex] = String(Int(copyNumber[findIndex])! + Int(copyNumber[findIndex+1])!)
//                    copyNumber.remove(at: findIndex + 1)
//
//                } else if oper == "*" {
//                    copyNumber[findIndex] = String(Int(copyNumber[findIndex])! * Int(copyNumber[findIndex+1])!)
//                    copyNumber.remove(at: findIndex + 1)
//
//                } else if oper == "-" {
//                    copyNumber[findIndex] = String(Int(copyNumber[findIndex])! - Int(copyNumber[findIndex+1])!)
//                    copyNumber.remove(at: findIndex + 1)
//
//                }
//
//
//            } else {
//                index += 1
//            }
//        }
//
//        maxResult = max(maxResult, abs(Int64(copyNumber[0])!))
//
//    }
//
//    return maxResult
//}
//
//print(solution("50*6-3*2"))

// MARK: - 프로그래머스 level2 순위 검색 -> 정확성 + 효율성

//func solution(_ info:[String], _ query:[String]) -> [Int] {
//    var infoArr: [(Set<String>, Int)] = []
//    var queryArr: [(Set<String>, Int)] = []
//
//    for i in info {
//        let temp: [String] = i.split(separator: " ").map{String($0)}
//        var tempSet: Set<String> = Set(temp[0..<temp.count-1])
//        var tempScore: Int = Int(temp.last!)!
//        infoArr.append((tempSet, tempScore))
//
//    }
//
//    for q in query {
//        var temp: [String] = q.replacingOccurrences(of: "and ", with: "").replacingOccurrences(of: "- ", with: "").split(separator: " ").map{String($0)}
//        var tempScore: Int = Int(temp.removeLast())!
//        var tempSet: Set<String> = Set(temp)
//        queryArr.append((tempSet, tempScore))
//    }
//
//    var result: [Int] = []
//
//    for q in queryArr {
//        var count: Int = 0
//        for i in infoArr {
//            if q.0.subtracting(i.0).isEmpty && i.1 >= q.1 { count += 1}
//        }
//        result.append(count)
//    }
//
//    return result
//}

//func solution(_ info:[String], _ query:[String]) -> [Int] {
//    var result: [Int] = []
//    var dict: [String:[Int]] = [:]
//
//    for text in info {
//        let infos = text.components(separatedBy: .whitespaces)
//        let languages: [String] = [infos[0], "-"]
//        let jobs: [String] = [infos[1], "-"]
//        let careers: [String] = [infos[2], "-"]
//        let soulFoods: [String] = [infos[3], "-"]
//        let score: Int = Int(infos[4])!
//
//        for lang in languages {
//            for job in jobs {
//                for career in careers {
//                    for food in soulFoods {
//                        let k: String = "\(lang) \(job) \(career) \(food)"
//                        if dict[k] == nil {
//                            dict[k] = [score]
//                        } else {
//                            dict[k]?.append(score)
//                        }
//                    }
//                }
//            }
//        }
//    }
//
//
//    for i in dict {
//        let sortedValue = i.value.sorted()
//        dict[i.key] = sortedValue
//    }
//
//
//    query.forEach {
//        let newQuery: [String] = $0.components(separatedBy: .whitespaces)
//
//        let lang: String = newQuery[0]
//        let job: String = newQuery[2]
//        let career: String = newQuery[4]
//        let food: String = newQuery[6]
//        let score: Int = Int(newQuery[7])!
//
//        let k: String = "\(lang) \(job) \(career) \(food)"
//
//        if let matchScores = dict[k] {
//            var start = 0
//            var end = matchScores.count
//            while start < end {
//                let mid = (start + end) / 2
//                if matchScores[mid] >= score {
//                    end = mid
//                } else {
//                    start = mid + 1
//                }
//            }
//
//            result.append(matchScores.count - start)
//        } else {
//            result.append(0)
//        }
//
//    }
//
//
//
//    return result
//}


// MARK: - 프로그래머스 level2 거리두기 확인하기

//func solution(_ places:[[String]]) -> [Int] {
//    var result: [Int] = []
//
//
//    for place in places {
//        var newPlace: [[String]] = []
//        place.forEach{newPlace.append($0.map{String($0)})}
//        var pPlace: [(Int, Int)] = []
//        var check: Bool = true
//        /// P인 곳의 좌표 확인
//        for i in 0..<place.count {
//            let temp: [String] = place[i].map{String($0)}
//            for j in 0..<temp.count {
//                if temp[j] == "P" { pPlace.append((i, j)) }
//            }
//        }
//
//        for i in 0..<pPlace.count {
//            for j in i+1..<pPlace.count {
//                let distance: Int = abs(pPlace[i].0 - pPlace[j].0) + abs(pPlace[i].1 - pPlace[j].1)
//
//                if distance > 2 {
//                    continue
//                } else if distance == 2 {
//                    if pPlace[i].0 == pPlace[j].0 {
//                        let minIndex: Int = min(pPlace[i].1, pPlace[j].1) + 1
//                        if newPlace[pPlace[i].0][minIndex] == "O" {
//                            check = false
//                            break
//                        }
//                    } else if pPlace[i].1 == pPlace[j].1 {
//                        let minIndex: Int = min(pPlace[i].0, pPlace[j].0) + 1
//                        if newPlace[minIndex][pPlace[i].1] == "O" {
//                            check = false
//                            break
//                        }
//                    } else {
//                        if newPlace[pPlace[i].0][pPlace[j].1] == "O" || newPlace[pPlace[j].0][pPlace[i].1] == "O" {
//                            check = false
//                            break
//                        }
//                    }
//                } else {
//                    check = false
//                    break
//                }
//            }
//        }
//
//
//        if check { result.append(1) }
//        else { result.append(0) }
//    }
//
//    return result
//}
//
//
//print(solution([["POOOP", "OXXOX", "OPXPX", "OOXOX", "POXXP"],
//                ["POOPX", "OXPXP", "PXXXO", "OXXXO", "OOOPP"],
//                ["PXOPX", "OXOXP", "OXPOX", "OXXOP", "PXPOX"],
//                ["OOOXX", "XOOOX", "OOOXX", "OXOOX", "OOOOO"],
//                ["PXPXP", "XPXPX", "PXPXP", "XPXPX", "PXPXP"]]))


// MARK: - 프로그래머스 level3 표 편집

//func solution(_ n:Int, _ k:Int, _ cmd:[String]) -> String {
//
//    /// 이름 확인을 위한 배열
//    let baseArr: [Int] = Array(0..<n)
//    /// 로직 수행을 위한 배열
//    var arr: [Int?] = Array(0..<n)
//    /// 삭제 된 요소 확인을 위한 스택 ( 가장 최근에 삭제된 것을 확인하기 위해 removeLast() 사용
//    var delete: [(Int, Int)] = []
//    /// 현재 선택 중인 위치 확인을 위해서
//    var currentIndex: Int = k
//
//    var result: String = ""
//
//
//
//    for c in cmd {
//        let cmdText: [String] = c.split(separator: " ").map{String($0)}
//        if cmdText[0] == "U" {
//            var count: Int = 0
//
//            while count != Int(cmdText[1])! {
//                currentIndex -= 1
//                if currentIndex == 0 { break }
//
//                if arr[currentIndex] == nil {
//                    continue
//                } else {
//                    count += 1
//                }
//            }
//
//
//        } else if cmdText[0] == "D" {
//            var count: Int = 0
//            while count != Int(cmdText[1])! {
//                currentIndex += 1
//                if currentIndex == arr.count - 1 { break }
//
//                if arr[currentIndex] == nil {
//                    continue
//                } else {
//                    count += 1
//                }
//            }
//        } else if cmdText[0] == "C" {
//            if currentIndex == arr.count-1 {
//                delete.append((currentIndex, currentIndex))
//                arr[currentIndex] = nil
//                currentIndex -= 1
//                while arr[currentIndex] == nil {
//                    if currentIndex == 0 { break }
//                    currentIndex -= 1
//
//                }
//
//
//            } else {
//                delete.append((currentIndex, currentIndex))
//                arr[currentIndex] = nil
//                currentIndex += 1
//                while arr[currentIndex] == nil {
//                    if currentIndex == arr.count-1 { break }
//                    currentIndex += 1
//                }
//
//            }
//
//        } else if cmdText[0] == "Z" {
//            let popValue: (Int, Int) = delete.removeLast()
//            arr[popValue.0] = popValue.1
//        }
//    }
//
//
//    arr.forEach({
//        if $0 == nil { result += "X" }
//        else { result += "O" }
//    })
//
//
//
//    return result
//}



//
//func solution(_ n:Int, _ k:Int, _ cmd:[String]) -> String {
//
//    var linkedList: [(Int, Int, Int, Bool)] = []
//    var currentIndex: Int = k
//    var deletedList: [Int] = []
//    var result: String = ""
//
//    for i in 0..<n {
//        linkedList.append((i-1, i, i+1, false))
//    }
//
//
//    for c in cmd {
//        let cmdText: [String] = c.split(separator: " ").map{String($0)}
//
//        switch cmdText[0] {
//        case "D":
//            for _ in 0..<Int(cmdText[1])! {
//                currentIndex = linkedList[currentIndex].2
//            }
//
//        case "U":
//            for _ in 0..<Int(cmdText[1])! {
//                currentIndex = linkedList[currentIndex].0
//            }
//
//        case "C":
//            deletedList.append(currentIndex)
//
//            if linkedList[currentIndex].2 == n {
//                linkedList[linkedList[currentIndex].0].2 = linkedList[currentIndex].2
//                linkedList[currentIndex].3 = true
//                currentIndex = linkedList[currentIndex].0
//            } else {
//                if linkedList[currentIndex].0 == -1 {
//                    linkedList[linkedList[currentIndex].2].0 = linkedList[currentIndex].0
//                    linkedList[currentIndex].3 = true
//                    currentIndex = linkedList[currentIndex].2
//
//                } else {
//                    linkedList[linkedList[currentIndex].0].2 = linkedList[currentIndex].2
//                    linkedList[linkedList[currentIndex].2].0 = linkedList[currentIndex].0
//                    linkedList[currentIndex].3 = true
//                    currentIndex = linkedList[currentIndex].2
//
//                }
//            }
//        case "Z":
//            let popValue: Int = deletedList.removeLast()
//
//            linkedList[popValue].3 = false
//
//            if linkedList[popValue].0 >= 0 {
//                linkedList[linkedList[popValue].0].2 = popValue
//            }
//
//            if linkedList[popValue].2 <= linkedList.count - 1 {
//                linkedList[linkedList[popValue].2].0 = popValue
//            }
//
//        default:
//            print("default")
//            break
//        }
//
//    }
//
//    for list in linkedList {
//        result += list.3 ? "X" : "O"
//    }
//
//    return result
//
//}
//
//
//
//print(solution(8, 2, ["D 2","C","U 3","C","D 4","C","U 2","Z","Z"]))
//
//

// MARK: - 프로그래머스 level3 보석 쇼핑

//func solution(_ gems:[String]) -> [Int] {
//
//    let gemsCount: Int = Set(gems).count
//
//    if gemsCount == 1 {
//        return [1, 1]
//    }
//
//    var dict: [String:Int] = [:]
//    var leftIndex: Int = 0
//    var rightIndex: Int = 0
//    var result: [Int] = [0, gems.count-1]
//    var minus: Int = gems.count
//
//    while rightIndex < gems.count {
//
//        if dict[gems[leftIndex]] == nil {
//            dict[gems[leftIndex]] = 0
//
//        } else {
//            if dict.count == gemsCount {
//
//                if (rightIndex - leftIndex) < minus {
//                    minus = rightIndex - leftIndex
//                    result[0] = leftIndex + 1
//                    result[1] = rightIndex + 1
//
//                }
//
//                dict[gems[leftIndex]]! -= 1
//
//                if dict[gems[leftIndex]] == 0 {
//                    dict[gems[leftIndex]] = nil
//
//                }
//
//                leftIndex += 1
//
//            } else {
//                if dict[gems[rightIndex]] == nil {
//                    dict[gems[rightIndex]] = 0
//
//                } else {
//                    dict[gems[rightIndex]]! += 1
//                    rightIndex += 1
//
//                }
//            }
//        }
//    }
//
//    return result
//}
//
//print(solution(["DIA", "RUBY", "RUBY", "DIA", "DIA", "EMERALD", "SAPPHIRE", "DIA"]))

// MARK: - 프로그래머스 level1 키패드 누르기

//func solution(_ numbers:[Int], _ hand:String) -> String {
//
//    let keypad: [(Int, Int)] = [(3, 1), (0, 0), (0, 1), (0, 2), (1, 0), (1, 1), (1, 2), (2, 0), (2, 1), (2, 2)]
//    var result: String = ""
//    var leftHand: Int = -1
//    var rightHand: Int = -1
//
//    for num in 0..<numbers.count {
//
//        switch numbers[num] {
//        case 1, 4, 7:
//            result += "L"
//            leftHand = numbers[num]
//
//        case 3, 6, 9:
//            result += "R"
//            rightHand = numbers[num]
//
//        case 2, 5, 8, 0:
//            if leftHand == -1 && rightHand == -1 {
//                if hand == "left" {
//                    result += "L"
//                    leftHand = numbers[num]
//                } else {
//                    result += "R"
//                    rightHand = numbers[num]
//                }
//            } else if leftHand == -1 {
//                let n: Int = numbers[num]
//                if (abs(3-keypad[n].0) + abs(0-keypad[n].1)) == (abs(keypad[rightHand].0 - keypad[n].0) + abs(keypad[rightHand].1) - keypad[n].1) {
//                    if hand == "left" {
//                        result += "L"
//                        leftHand = n
//                    } else {
//                        result += "R"
//                        rightHand = n
//                    }
//                } else if (abs(3-keypad[n].0) + abs(0-keypad[n].1)) < (abs(keypad[rightHand].0 - keypad[n].0) + abs(keypad[rightHand].1) - keypad[n].1) {
//                    result += "L"
//                    leftHand = n
//                } else {
//                    result += "R"
//                    rightHand = n
//                }
//
//            } else if rightHand == -1 {
//                let n: Int = numbers[num]
//                if  (abs(keypad[leftHand].0 - keypad[n].0) + abs(keypad[leftHand].1) - keypad[n].1) == abs(3 - keypad[n].0) + abs(2 - keypad[n].1) {
//                    if hand == "left" {
//                        result += "L"
//                        leftHand = n
//                    } else {
//                        result += "R"
//                        rightHand = n
//                    }
//                } else if (abs(keypad[leftHand].0 - keypad[n].0) + abs(keypad[leftHand].1 - keypad[n].1)) < (abs(3 - keypad[n].0) + abs(2 - keypad[n].1)) {
//                    result += "L"
//                    leftHand = n
//                } else {
//                    result += "R"
//                    rightHand = n
//                }
//            } else {
//
//                let n: Int = numbers[num]
//                if  (abs(keypad[leftHand].0 - keypad[n].0) + abs(keypad[leftHand].1 - keypad[n].1)) == (abs(keypad[rightHand].0 - keypad[n].0) + abs(keypad[rightHand].1 - keypad[n].1)) {
//                    if hand == "left" {
//                        result += "L"
//                        leftHand = n
//                    } else {
//                        result += "R"
//                        rightHand = n
//                    }
//                } else if (abs(keypad[leftHand].0 - keypad[n].0) + abs(keypad[leftHand].1 - keypad[n].1)) < (abs(keypad[rightHand].0 - keypad[n].0) + abs(keypad[rightHand].1 - keypad[n].1)) {
//                    result += "L"
//                    leftHand = n
//                } else {
//                    result += "R"
//                    rightHand = n
//                }
//
//            }
//
//
//        default:
//            break
//        }
//    }
//
//
//
//
//
//    return result
//}
//
//
//print(solution([1, 3, 4, 5, 8, 2, 1, 4, 5, 9, 5], "right"))

//let keypad: [String:(Int, Int)] = ["1":(0, 0), "2":(0, 1), "3":(0, 2),
//                                   "4":(1, 0), "5":(1, 1), "6":(1, 2),
//                                   "7":(2, 0), "8":(2, 1), "9":(2, 2),
//                                   "*":(3, 0), "0":(3, 1), "#":(3, 2)]

//func solution(_ numbers:[Int], _ hand:String) -> String {
//
//    var result: String = ""
//    var leftHand: String = "*"
//    var rightHand: String = "#"
//    let userHand: String = hand == "right" ? "R" : "L"
//
//    for number in numbers {
//        if number == 1 || number == 4 || number == 7 {
//            result += "L"
//            leftHand = String(number)
//        } else if number == 3 || number == 6 || number == 9 {
//            result += "R"
//            rightHand = String(number)
//        } else if number == 2 || number == 5 || number == 8 || number == 0 {
//            let leftDistance: Int = distance(leftHand, String(number))
//            let rightDistance: Int = distance(rightHand, String(number))
//
//            if leftDistance == rightDistance {
//                result += userHand
//                if userHand == "L" {
//                    leftHand = String(number)
//                } else {
//                    rightHand = String(number)
//                }
//            } else if leftDistance < rightDistance {
//                result += "L"
//                leftHand = String(number)
//            } else if leftDistance > rightDistance {
//                result += "R"
//                rightHand = String(number)
//            }
//        }
//    }
//
//    return result
//}
//
//func distance(_ start: String, _ end: String) -> Int {
//    let x1 = keypad[start]!.0
//    let y1 = keypad[start]!.1
//
//    let x2 = keypad[end]!.0
//    let y2 = keypad[end]!.1
//
//    return abs(x1-x2) + abs(y1-y2)
//}
//
//print(solution([1, 3, 4, 5, 8, 2, 1, 4, 5, 9, 5], "right"))


// MARK: - 프로그래머스 level3 경주로 건설

//func solution(_ board:[[Int]]) -> Int {
//
//    let n: Int = board.count
//    var road: [[Int]] = Array(repeating: Array(repeating: Int.max, count: n), count: n)
//    let direction: [(Int, Int)] = [(0, 1), (1, 0), (-1, 0), (0, -1)]
//
//    func dfs(_ current: (x: Int, y: Int, cost: Int, move: Int)) {
//        if board[current.x][current.y] == 1 || current.cost > road[current.x][current.y] {
//            return
//        }
//
//        road[current.x][current.y] = current.cost
//
//        for i in 0..<direction.count {
//            let nx: Int = current.x + direction[i].0
//            let ny: Int = current.y + direction[i].1
//
//            if nx>=0 && nx<n && ny>=0 && ny<n {
//                if current.move == i {
//                    dfs((x: nx, y: ny, cost: current.cost + 100, move: i))
//                } else {
//                    dfs((x: nx, y: ny, cost: current.cost + 600, move: i))
//                }
//            }
//        }
//    }
//
//    road[0][0] = 0
//
//    dfs((x: 0, y: 1, cost: 100, move: 0))
//    dfs((x: 1, y: 0, cost: 100, move: 1))
//
//    return road[n-1][n-1]
//}

// MARK: - 프로그래머스 level2 튜플

//func solution(_ s:String) -> [Int] {
//
//    var result: [Int] = []
//    var temp = s
//    temp.removeLast(2)
//    temp.removeFirst(2)
//    temp = temp.replacingOccurrences(of: "},{", with: " ")
//    let tempTuple: [String] = temp.split(separator: " ").map{String($0)}
//
//    var tuple: [[String]] = []
//
//    for t in tempTuple {
//        tuple.append(t.replacingOccurrences(of: ",", with: " ").split(separator: " ").map{String($0)})
//    }
//    tuple.sort{$0.count < $1.count}
//
//
//    for arr in tuple {
//        arr.forEach{
//            if !result.contains(Int($0)!) {
//                result.append(Int($0)!)
//            }
//        }
//    }
//
//    return result
//}
//
//print(solution("{{4,2,3},{3},{2,3,4,1},{2,3}}"))

// MARK: - 프로그래머스 level3 불량 사용자

//func solution(_ user_id:[String], _ banned_id:[String]) -> Int {
//    var result: Int = 0
//    var checkDict: [Set<[String]>:Int]
//
//    while true {
//        var visited: [Bool] = Array(repeating: false, count: user_id.count)
//
//        for ban in banned_id {
//            let banArr: [String] = ban.map{String($0)}
//            for i in 0..<user_id.count {
//                if ban.count != user_id[i].count { continue }
//
//                let userArr: [String] = user_id[i].map{String($0)}
//                var check: Bool = true
//
//                for j in 0..<banArr.count {
//
//                }
//
//
//            }
//        }
//    }
//
//
//    return result
//}


//func solution(_ user_id:[String], _ banned_id:[String]) -> Int {
//
//    func isEqualCheck(userID: String, bannedID: String) -> Bool {
//        if userID.count != bannedID.count { return false }
//
//        let userIDArr: [String] = userID.map{String($0)}
//        let bannedIDArr: [String] = bannedID.map{String($0)}
//
//        for i in 0..<bannedIDArr.count {
//            if bannedIDArr[i] != "*" && bannedIDArr[i] != userIDArr[i] {
//                return false
//            }
//
//        }
//        return true
//    }
//
//    func findID(userID: [String], bannedID: [String]) -> [[Int]] {
//        var banArr: [[Int]] = Array(repeating: [Int](), count: bannedID.count)
//
//        for (i, u) in userID.enumerated() {
//            for (j, b) in bannedID.enumerated() {
//                if isEqualCheck(userID: u, bannedID: b) {
//                    banArr[j].append(i)
//                }
//            }
//        }
//        return banArr
//    }
//
//    var result: Set<[Int]> = []
//
//    func makeResult(banArray: [[Int]], banIDSet: Set<Int>, answer:inout Set<[Int]>, index: Int) {
//        for id in banArray[index] {
//            var newBandsIds = banIDSet
//            newBandsIds.insert(id)
//
//            if index != banArray.count - 1 {
//                makeResult(banArray: banArray, banIDSet: newBandsIds, answer: &answer, index: index + 1)
//            } else if newBandsIds.count == banArray.count {
//                answer.insert(newBandsIds.sorted())
//            }
//        }
//    }
//
//
//    let banArr = findID(userID: user_id, bannedID: banned_id)
//    makeResult(banArray: banArr, banIDSet: [], answer: &result, index: 0)
//
//    return result.count
//}
//
//print(solution(["frodo", "fradi", "crodo", "abc123", "frodoc"], ["fr*d*", "abc1**"]))
//

// MARK: - 프로그래머스 level3 징검다리 건너기

//func solution(_ stones:[Int], _ k:Int) -> Int {
//
//    var bridge: [Int] = stones
//    var result: Int = 0
//    var check: Bool = true
//
//    while check {
//        for i in 0..<bridge.count {
//            if bridge[i] != 0 {
//                bridge[i] -= 1
//            }
//        }
//
//        var count: Int = 0
//        for i in bridge {
//            if i == 0 {
//                count += 1
//                if count >= k {
//                    check = false
//                    break
//                }
//            } else {
//                count = 0
//            }
//
//        }
//
//        result += 1
//    }
//
//    return result
//}

//func solution(_ stones:[Int], _ k:Int) -> Int {
//    var left: Int = 1
//    var right: Int = 200000000
//
//    while left < right {
//        let mid: Int = (left + right) / 2
//        var zeroCount: Int = 0
//
//        for i in 0..<stones.count {
//            if stones[i] - mid <= 0 {
//                zeroCount += 1
//
//                if zeroCount >= k {
//                    break
//                }
//            } else {
//                zeroCount = 0
//            }
//        }
//
//        if zeroCount >= k {
//            right = mid
//        } else {
//            left = mid + 1
//        }
//    }
//
//    return left
//}
//
//print(solution([2, 4, 5, 3, 2, 1, 4, 2, 5, 1], 3))


// MARK: - 프로그래머스 level2 k진수에서 소수 개수 구하기

//func solution(_ n:Int, _ k:Int) -> Int {
//
//    let changeNum: String = String(n, radix: k)
//    let arr: [Int] = changeNum.split(separator: "0").map{String($0)}.filter{$0 != "1"}.map{Int($0)!}
//    var result: Int = 0
//
//
//    for num in arr {
//        var check: Bool = true
//        for i in 2...Int(sqrt(Double(num))) + 1 {
//            if (num % i == 0) && (i != num) {
//                check = false
//                break
//            }
//        }
//
//        if check { result += 1 }
//    }
//
//    return result
//}
//print(solution(110011, 10))


// MARK: - 프로그래머스 level2 주차 요금 계산

//func solution(_ fees:[Int], _ records:[String]) -> [Int] {
//    let baseTime: Int = fees[0]
//    let baseFee: Int = fees[1]
//    let upperTime: Int = fees[2]
//    let upperFee: Int = fees[3]
//    var result: [Int] = []
//    var dict: [String:[(String, String)]] = [:]
//
//    for record in records {
//        let temp: [String] = record.split(separator: " ").map{String($0)}
//        if dict[temp[1]] == nil {
//            dict[temp[1]] = [(temp[0], temp[2])]
//        } else {
//            dict[temp[1]]!.append((temp[0], temp[2]))
//        }
//    }
//
//    let recordDict = dict.sorted{$0.key < $1.key}
//
//    for (_, values) in recordDict {
//        var recordValue = values
//        if values.count % 2 == 1 {
//            recordValue.append(("23:59", "OUT"))
//        }
//
//        var totalFee: Int = 0
//        var totalTime: Int = 0
//
//        for i in stride(from: 0, to: recordValue.count, by: 2) {
//            let inTime: [Int] = recordValue[i].0.split(separator: ":").map{Int($0)!}
//            let outTime: [Int] = recordValue[i+1].0.split(separator: ":").map{Int($0)!}
//            let time: Int = ((outTime[0] - inTime[0]) * 60) + (outTime[1] - inTime[1])
//
//            totalTime += time
//
//        }
//
//        if totalTime <= baseTime {
//            totalFee += baseFee
//        } else {
//            var tempFee: Int = 0
//            tempFee += baseFee
//            totalTime -= baseTime
//
//            totalTime = Int(ceil((Double(totalTime)/Double(upperTime))))
//            tempFee += totalTime * upperFee
//
//            totalFee += tempFee
//        }
//
//        result.append(totalFee)
//    }
//
//    return result
//}
//
//solution([180, 5000, 10, 600], ["05:34 5961 IN", "06:00 0000 IN", "06:34 0000 OUT", "07:59 5961 OUT", "07:59 0148 IN", "18:59 0000 IN", "19:09 0148 OUT", "22:59 5961 IN", "23:00 5961 OUT"])



// MARK: - 프로그래머스 level2 양궁 대회

//func solution(_ n:Int, _ info:[Int]) -> [Int] {
//    var result = Array(repeating: 0, count: 11)
//    var arr = Array(repeating: 0, count: 11)
//    var ryonSum = 0
//    var apeachSum = 0
//    var scoreGap = 0 //점수차이 계산
//    var ryonWin = false
//
//    func dfs(_ depth: Int, _ start: Int) {
//        if depth == n{
//            print(arr)
//            ryonSum = 0
//            apeachSum = 0
//
//            for i in 0...10 {
//                if arr[i] == 0 && info[i] == 0 { continue }
//                if info[i] < arr[i] {
//                    ryonSum += 10 - i
//                } else {
//                    apeachSum += 10 - i
//                }
//            }
//
//            if ryonSum > apeachSum {
//                ryonWin = true
//                if ryonSum - apeachSum > scoreGap {
//                    result = arr
//                    scoreGap = ryonSum - apeachSum
//                }
//            }
//            return
//        }
//
//        for i in start...10 {
//            arr[10 - i] += 1
//            dfs(depth + 1, i)
//            arr[10 - i] -= 1
//        }
//    }
//
//    dfs(0, 0)
//
//    if !ryonWin{
//        result = [-1]
//    }
//
//
//    return result
//}
//
//
//print(solution(5, [2,1,1,1,0,0,0,0,0,0,0]))
//

// MARK: - 프로그래머스 level2 행렬 테두리 회전하기

//func solution(_ rows:Int, _ columns:Int, _ queries:[[Int]]) -> [Int] {
//    var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: columns), count: rows)
//    var one: Int = 1
//    for i in 0..<rows {
//        for j in 0..<columns {
//            graph[i][j] = one
//            one += 1
//        }
//    }
//
//    var result: [Int] = []
//
//    for q in queries {
//        var query: [Int] = q
//        for i in 0..<query.count {
//            query[i] -= 1
//        }
//
//        let x1: Int = query[0]
//        let y1: Int = query[1]
//        let x2: Int = query[2]
//        let y2: Int = query[3]
//
//        var tempX1: Int = query[0]
//        var tempY1: Int = query[1]
//        var tempX2: Int = query[2]
//        var tempY2: Int = query[3]
//        var targetIndex: [(Int, Int)] = []
//
//
//        for i in 0..<4 {
//
//            if i==0 {
//                while tempY1 != y2+1 {
//                    targetIndex.append((x1, tempY1))
//                    tempY1 += 1
//                }
//            } else if i==1 {
//                while tempX1 != x2 + 1 {
//                    if targetIndex.last! != (tempX1, y2) {
//                        targetIndex.append((tempX1, y2))
//                    }
//                    tempX1 += 1
//                }
//            } else if i==2 {
//                while tempY2 != y1 {
//                    if targetIndex.last! != (x2, tempY2) {
//                        targetIndex.append((x2, tempY2))
//                    }
//                    tempY2 -= 1
//                }
//
//            } else {
//                while tempX2 != x1 {
//                    if targetIndex.last! != (tempX2, y1) {
//                        targetIndex.append((tempX2, y1))
//                    }
//                    tempX2 -= 1
//                }
//            }
//
//        }
//
//
//        var targetNumber: [Int] = []
//
//        for ti in targetIndex {
//            targetNumber.append(graph[ti.0][ti.1])
//        }
//
//        result.append(targetNumber.min()!)
//
//        targetNumber.insert(targetNumber.last!, at: 0)
//
//        for i in 0..<targetIndex.count {
//            graph[targetIndex[i].0][targetIndex[i].1] = targetNumber[i]
//        }
//
//    }
//    return result
//}
//print(solution(100, 97, [[1,1,100,97]]))


// MARK: - 프로그래머스 level2 메뉴 리뉴얼
//
//var menuCollection: [[String]:Int] = [:]
//
//func solution(_ orders:[String], _ course:[Int]) -> [String] {
//
//    var result: [String] = []
//
//    for o in orders {
//        let order: [String] = o.map{String($0)}.sorted()
//        for i in 2...order.count {
//            let tempVisited: [Bool] = Array(repeating: false, count: order.count)
//            tracking(targetNum: i, depth: 0, visit: tempVisited, arr: [], startIndex: 0, orderArr: order)
//        }
//
//    }
//
//    for i in course {
//        let tempMenu: [[String]:Int] = menuCollection.filter{$0.key.count == i}
//        let maxCount: Int = tempMenu.values.max() ?? 0
//        let menuCourse: [[String]:Int] = tempMenu.filter{$0.value == maxCount}.filter{$0.value > 1}
//        for (key, _) in menuCourse {
//            result.append(key.joined(separator: ""))
//        }
//    }
//
//    return result.sorted()
//}
//
//func tracking(targetNum: Int, depth: Int, visit: [Bool], arr: [String], startIndex: Int, orderArr: [String]) {
//    var visited: [Bool] = visit
//    if depth == targetNum {
//        if menuCollection[arr] == nil {
//            menuCollection[arr] = 1
//        } else {
//            menuCollection[arr]! += 1
//        }
//        return
//    }
//
//    for i in startIndex..<orderArr.count where arr.last ?? "" < orderArr[i] {
//        if visited[i] == false {
//            visited[i] = true
//            tracking(targetNum: targetNum, depth: depth+1, visit: visited, arr: arr + [orderArr[i]], startIndex: startIndex+1, orderArr: orderArr)
//        }
//    }
//}
//
//print(solution(["ABCDE", "AB", "CD", "ADE", "XYZ", "XYZ", "ACD"], [2, 3, 5]))


// MARK: - 프로그래머스 level2 문자열 압축

//func solution(_ s:String) -> Int {
//    let arr: [String] = s.map{String($0)}
//    var result: String = String(repeating: "a", count: 1001)
//
//    var strCount: Int = 1
//
//
//    if s.count == 1 {
//        return 1
//    }
//
//
//    while strCount <= (s.count/2) {
//        var sliceArr: [String] = []
//
//        for i in stride(from: 0, to: s.count, by: strCount) {
//            if (i+strCount) < s.count {
//                sliceArr.append(arr[i..<i+strCount].joined(separator: ""))
//            } else {
//                sliceArr.append(arr[i...].joined(separator: ""))
//            }
//        }
//
//
//        var startIndex: Int = 1
//        var startStr: String = sliceArr[0]
//        var count: Int = 1
//        var tempResult: String = ""
//
//        while startIndex < sliceArr.count {
//            if startStr == sliceArr[startIndex] {
//                count += 1
//                sliceArr.remove(at: startIndex)
//
//            } else {
//                if count == 1 {
//                    tempResult += startStr
//                } else if count >= 2{
//                    tempResult += "\(count)\(startStr)"
//                }
//
//                startStr = sliceArr[startIndex]
//                startIndex += 1
//                count = 1
//
//            }
//        }
//
//        if count == 1 {
//            tempResult += startStr
//        } else if count >= 2{
//            tempResult += "\(count)\(startStr)"
//        }
//
//
//        result = tempResult.count < result.count ? tempResult : result
//
//        strCount += 1
//
//    }
//
//    return result.count
//}
//
//print(solution("a"))
//

// MARK: - 프로그래머스 level2 괄호 변환

//func solution(_ p:String) -> String {
//
//    if p == "" {
//        return ""
//    }
//
//    if checkRightString(p) {
//        return p
//    }
//
//    var result: String = ""
//    var balanceString: [String] = splitString(p)
//
//    if checkRightString(balanceString[0]) {
//        result += balanceString[0]
//        result += solution(balanceString[1])
//    } else {
//        var emptyString: String = "("
//        emptyString += solution(balanceString[1])
//        emptyString += ")"
//
//        var tempU: String = balanceString[0]
//        tempU.removeFirst()
//        tempU.removeLast()
//
//        var newU: String = ""
//
//        for i in tempU {
//            if i == "(" { newU += ")"}
//            else if i == ")" { newU += "("}
//        }
//
//        result += emptyString + newU
//
//    }
//    return result
//}
//
//func checkRightString(_ p: String) -> Bool {
//
//    if p == "" {
//        return false
//    }
//
//    let pString: [String] = p.map{String($0)}
//    var stack: [String] = []
//
//
//    for str in pString {
//        stack.append(str)
//        if stack.count >= 2 {
//            if stack[stack.count-2..<stack.count].joined(separator: "") == "()" {
//                stack.removeLast(2)
//            }
//        }
//    }
//
//
//    return stack.isEmpty ? true : false
//}
//
//func splitString(_ p: String) -> [String] {
//
//    if p == "" {
//        return []
//    }
//
//    var sum: Int = 0
//    let pString: [String] = p.map{String($0)}
//    var index: Int = 0
//
//    for i in 0..<pString.count {
//        if pString[i] == "(" { sum += 1 }
//        else if pString[i] == ")" { sum -= 1 }
//
//        if sum == 0 {
//            index = i
//            break
//        }
//    }
//
//    return [pString[0...index].joined(separator: ""), pString[index+1..<pString.count].joined(separator: "")]
//}
//
//
//
//
//
//print(solution("()))((()"))


// MARK: - 프로그래머스 level2 오픈채팅방

//func solution(_ record:[String]) -> [String] {
//    var user: [String:String] = [:]
//    var userRecord: [[String]] = []
//    var result: [String] = []
//    for r in record {
//        let temp: [String] = r.split(separator: " ").map{String($0)}
//
//        if temp[0] == "Enter" {
//            if user[temp[1]] == nil {
//                user[temp[1]] = temp[2]
//            } else {
//                user[temp[1]] = temp[2]
//            }
//
//            userRecord.append([temp[1], "님이 들어왔습니다."])
//
//        } else if temp[0] == "Leave" {
//            userRecord.append([temp[1], "님이 나갔습니다."])
//
//        } else if temp[0] == "Change" {
//            user[temp[1]]! = temp[2]
//        }
//
//
//
//    }
//
//
//    for i in 0..<userRecord.count {
//        userRecord[i][0] = user[userRecord[i][0]]!
//        result.append(userRecord[i].joined(separator: ""))
//
//    }
//
//
//    return result
//}
//
//print(solution(["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"]))


// MARK: - 프로그래머스 level2 후보키

//var typeCollection: [[Int]] = []
//var typeCheckDict: [[Int]:Int] = [:]
//
//func solution(_ relation:[[String]]) -> Int {
//
//    for i in 0..<relation[0].count {
//        let tempVisit: [Bool] = Array(repeating: false, count: relation[0].count)
//        combination(i, [], tempVisit, Array(0..<relation[0].count))
//    }
//
//    typeCollection.sort{$0.count < $1.count}
//    var startIndex: Int = 0
//
//    while startIndex < typeCollection.count {
//        let baseKey: [Int] = typeCollection[startIndex]
//
//        if checkUniqueKey(relation, baseKey) == true {
//            var findIndex: Int = startIndex + 1
//
//            while findIndex < typeCollection.count {
//                // 포함하고 있다면
//                if Set(baseKey).subtracting(Set(typeCollection[findIndex])).count == 0 {
//                    typeCollection.remove(at: findIndex)
//                } else {
//                    findIndex += 1
//                }
//            }
//            startIndex += 1
//        } else {
//            typeCollection.remove(at: startIndex)
//        }
//    }
//
//    return typeCollection.count
//}
//
//func checkUniqueKey(_ inputData: [[String]], _ inputType: [Int]) -> Bool {
//    var checkUniqueDict: [[String]:Int] = [:]
//
//    for i in 0..<inputData.count {
//        var temp: [String] = []
//        for typeIndex in inputType {
//            temp.append(inputData[i][typeIndex])
//        }
//        if checkUniqueDict[temp] == nil {
//            checkUniqueDict[temp] = 1
//        } else {
//            checkUniqueDict[temp]! += 1
//        }
//    }
//
//    return checkUniqueDict.keys.count == inputData.count ? true : false
//}
//
//func combination(_ start: Int, _ arr: [Int], _ inputVisit: [Bool], _ inputArr: [Int]) {
//
//    if arr.count > 0 {
//        if typeCheckDict[arr] == nil {
//            typeCheckDict[arr] = 1
//            typeCollection.append(arr)
//        }
//    }
//
//    var visited: [Bool] = inputVisit
//    for i in start..<inputArr.count {
//        if visited[i] == false {
//            visited[i] = true
//            combination(i+1, arr + [inputArr[i]], visited, inputArr)
//        }
//    }
//}
//
//print(solution([["100","ryan","music","2"],["200","apeach","math","2"],["300","tube","computer","3"],["400","con","computer","4"],["500","muzi","music","3"],["600","apeach","music","2"]]))
//

// MARK: - 프로그래머스 level3 다단계 칫솔 판매

//func solution(_ enroll:[String], _ referral:[String], _ seller:[String], _ amount:[Int]) -> [Int] {
//
//    var sellerGraphDict: [String:String] = [:] // key: 자식 노드, value: 부모 노드로 가정한 딕셔너리
//    var resultDict: [String:Int] = [:]
//    for i in 0..<enroll.count {
//        if sellerGraphDict[enroll[i]] == nil {
//            sellerGraphDict[enroll[i]] = referral[i]
//        }
//
//        if resultDict[enroll[i]] == nil {
//            resultDict[enroll[i]] = 0
//        }
//    }
//
//
//    for i in 0..<seller.count {
//        var parentNode: String = seller[i]
//        var startMoney: Int = amount[i] * 100
//
//        while parentNode != "-" && startMoney > 0 {
//            resultDict[parentNode]! += (startMoney - startMoney/10)
//
//            parentNode = sellerGraphDict[parentNode]!
//            startMoney /= 10
//
//        }
//    }
//
//    var result: [Int] = []
//    for user in enroll {
//        result.append(resultDict[user]!)
//    }
//
//    return result
//}
//
//print(solution(["john", "mary", "edward", "sam", "emily", "jaimie", "tod", "young"],
//               ["-", "-", "mary", "edward", "mary", "mary", "jaimie", "edward"],
//               ["young", "john", "tod", "emily", "mary"],
//               [12, 4, 2, 5, 10]))
//



// MARK: - 프로그래머스 level3 합승 택시 요금

//func solution(_ n:Int, _ s:Int, _ a:Int, _ b:Int, _ fares:[[Int]]) -> Int {
//
//    var result: Int = 0
//    var node: [[Int]] = []
//
//    for i in 0...n {
//        var arr: [Int] = []
//        for _ in 0...n {
//            arr.append(999999)
//        }
//        node.append(arr)
//        node[i][i] = 0
//    }
//
//    for fare in fares {
//        node[fare[0]][fare[1]] = fare[2]
//        node[fare[1]][fare[0]] = fare[2]
//    }
//
//
//    for k in 1...n {
//        for i in 1...n {
//            for j in 1...n {
//                if node[i][j] > node[i][k] + node[k][j] {
//                    node[i][j] = node[i][k] + node[k][j]
//
//                }
//            }
//        }
//    }
//
//    result = node[s][a] + node[s][b]
//
//    for i in 1...n {
//        result = min(result, node[s][i] + node[i][a] + node[i][b])
//    }
//
//    return result
//}
//
//print(solution(6, 4, 6, 2, [[4, 1, 10], [3, 5, 24], [5, 6, 2], [3, 1, 41], [5, 1, 24], [4, 6, 50], [2, 4, 66], [2, 3, 22], [1, 6, 25]]))
//


// MARK: - 프로그래머스 level3 양과 늑대

//func solution(_ info:[Int], _ edges:[[Int]]) -> Int {
//    var result: Int = 0
//    var graph: [[Int]] = Array(repeating: [Int](), count: info.count)
//    for edge in edges {
//        graph[edge[0]].append(edge[1])
//
//    }
//
//    func tracking(_ node: Int, _ edge: [Int], _ sheep: Int, _ wolf: Int) {
//        var nextEdge: [Int] = edge
//        var countedSheep: Int = sheep
//        var countedWolf: Int = wolf
//
//        if info[node] == 0 { countedSheep += 1 }
//        else { countedWolf += 1 }
//
//        if countedWolf >= countedSheep { return }
//        result = max(result, countedSheep)
//
//        nextEdge.append(contentsOf: graph[node])
//        if let index = nextEdge.firstIndex(of: node) {
//            nextEdge.remove(at: index)
//        }
//
//        for i in nextEdge {
//            tracking(i, nextEdge, countedSheep, countedWolf)
//        }
//    }
//
//    tracking(0, [0], 0, 0)
//    return result
//}
//
//solution([0,0,1,1,1,0,1,0,1,0,1,1], [[0,1],[1,2],[1,4],[0,8],[8,7],[9,10],[9,11],[4,3],[6,5],[4,6],[8,9]])

// MARK: - 프로그래머스 level3 파괴되지 않은 건물

//func solution(_ board:[[Int]], _ skill:[[Int]]) -> Int {
//
//    var addNumBoard: [[Int]] = Array(repeating: Array(repeating: 0, count: board[0].count+1), count: board.count+1)
//    for sk in skill {
//        changeBoard(&addNumBoard, sk)
//    }
//    addVertical(&addNumBoard)
//
//
//    return addHotizontal(&addNumBoard, board)
//}
//
//
//func addHotizontal(_ board: inout [[Int]], _ original: [[Int]]) -> Int {
//    var count: Int = 0
//
//    for i in 0..<board.count-1 {
//        for j in 0..<board[0].count-1 {
//            if j != 0 {
//                board[i][j] += board[i][j-1]
//            }
//            if board[i][j] + original[i][j] > 0 {
//                count += 1
//            }
//        }
//    }
//    return count
//}
//
//func addVertical(_ board: inout [[Int]]) {
//    for j in 0..<board[0].count-1 {
//        for i in 1..<board.count-1 {
//            board[i][j] += board[i-1][j]
//        }
//    }
//}
//
//func changeBoard(_ board: inout [[Int]], _ skill: [Int]) {
//    let start: (Int, Int) = (skill[1], skill[2])
//    let end: (Int, Int) = (skill[3], skill[4])
//    let degree: Int = skill[0] == 2 ? skill[5] : -skill[5]
//
//    board[start.0][start.1] += degree
//    board[end.0+1][end.1+1] += degree
//    board[start.0][end.1+1] -= degree
//    board[end.0+1][start.1] -= degree
//}
//
//
//print(solution([[5,5,5,5,5],[5,5,5,5,5],[5,5,5,5,5],[5,5,5,5,5]], [[1,0,0,3,4,4],[1,2,0,2,3,2],[2,1,0,3,1,2],[1,0,1,3,3,1]]))
//


//MARK: - 프로그래머스 level2 프린터

//func solution(_ priorities:[Int], _ location:Int) -> Int {
//
//    var arr: [(Int, Int)] = []
//    for (index, priority) in priorities.enumerated() {
//        arr.append((index, priority))
//    }
//    var count: Int = 0
//    while true {
//        let maxPriorities: Int = arr.map{Int($0.1)}.max()!
//
//        if arr[0].1 == maxPriorities {
//            if arr[0].0 == location {
//                count += 1
//                break
//            }
//            arr.removeFirst()
//            count += 1
//        } else {
//            let popValue: (Int, Int) = arr.removeFirst()
//            arr.append(popValue)
//        }
//
//    }
//
//    return count
//}
//solution([1, 1, 9, 1, 1, 1], 0)


// MARK: - 프로그래머스 level2 짝지어 제거하기

//func solution(_ s:String) -> Int{
//
//    var str: [String] = s.map{String($0)}
//    var stack: [String] = []
//
//
//    for i in 0..<str.count {
//        if stack.isEmpty {stack.append(str[i])}
//        else {
//            if stack.last! == str[i] {
//                stack.removeLast()
//            } else {
//                stack.append(str[i])
//            }
//        }
//    }
//
//    return stack.isEmpty ? 1 : 0
//}
//
//solution("baabaa")


// MARK: - 프로그래머스 level2 [1차]뉴스 클러스터링
//func solution(_ str1:String, _ str2:String) -> Int {
//    let alphabetSet: [String:Int] = ["a":1,"b":1,"c":1,"d":1,"e":1,"f":1,"g":1,"h":1,"i":1,"j":1,"k":1,"l":1,"m":1,"n":1,"o":1,"p":1,"q":1,"r":1,"s":1,"t":1,"u":1,"v":1,"w":1,"x":1,"y":1,"z":1]
//    let str1Arr: [String] = str1.lowercased().map{String($0)}
//    var str1Set: Set<String> = []
//    var str1Dict: [String:Int] = [:]
//    let str2Arr: [String] = str2.lowercased().map{String($0)}
//    var str2Set: Set<String> = []
//    var str2Dict: [String:Int] = [:]
//
//    for i in 0..<str1Arr.count-1 {
//        if alphabetSet[str1Arr[i]] != nil && alphabetSet[str1Arr[i+1]] != nil {
//            let str: String = str1Arr[i] + str1Arr[i+1]
//            str1Set.insert(str)
//            if str1Dict[str] == nil {
//                str1Dict[str] = 1
//            } else {
//                str1Dict[str]! += 1
//            }
//        }
//    }
//
//
//    for i in 0..<str2Arr.count-1 {
//        if alphabetSet[str2Arr[i]] != nil && alphabetSet[str2Arr[i+1]] != nil {
//            let str: String = str2Arr[i] + str2Arr[i+1]
//            str2Set.insert(str)
//            if str2Dict[str] == nil {
//                str2Dict[str] = 1
//            } else {
//                str2Dict[str]! += 1
//            }
//        }
//    }
//
//
//    if str1Set.count == 0 && str2Set.count == 0 {
//        return 65536
//    }
//
//
//    var intersectionArr: [String] = Array(str1Set.intersection(str2Set))
//    var unionArr: [String] = Array(str1Set.union(str2Set))
//
//    var intersectionCount: Int = 0
//    var unionCount: Int = 0
//
//
//    for str in intersectionArr {
//        intersectionCount += min(str1Dict[str]!, str2Dict[str]!)
//    }
//
//    for str in unionArr {
//        unionCount += max(str1Dict[str] ?? 0, str2Dict[str] ?? 0)
//    }
//
//
//
//    return Int(Double(intersectionCount)/Double(unionCount) * 65536)
//}
//
//print(solution("aa1+aa2", "AAAA12"))


// MARK: - 프로그래머스 level2 [1차]프렌즈4블록

//func solution(_ m:Int, _ n:Int, _ board:[String]) -> Int {
//    var newBoard: [[String]] = []
//    for b in board {
//        newBoard.append(b.map{String($0)})
//    }
//    var result: Int = 0
//
//    let dx: [Int] = [0, 1, 1]
//    let dy: [Int] = [1, 0, 1]
//
//    while true {
//        var removeIndex: Set<[Int]> = []
//
//        for i in 0..<m-1 {
//            for j in 0..<n-1 {
//                if newBoard[i][j] == "" { continue }
//                let nowBlock: String = newBoard[i][j]
//
//                if newBoard[i+1][j] == nowBlock && newBoard[i][j+1] == nowBlock && newBoard[i+1][j+1] == nowBlock {
//                    removeIndex.insert([i, j])
//                    removeIndex.insert([i+1, j])
//                    removeIndex.insert([i, j+1])
//                    removeIndex.insert([i+1, j+1])
//                }
//            }
//        }
//
//
//        for remove in removeIndex {
//            newBoard[remove[0]][remove[1]] = ""
//        }
//
//        if removeIndex.count == 0 {
//            break
//        }
//
//        newBoard = makeNewBoard(newBoard, m, n)
//        result += removeIndex.count
//
//    }
//
//
//
//
//    return result
//}
//
//
//
//func makeNewBoard(_ board: [[String]], _ m: Int, _ n: Int) -> [[String]] {
//
//    var tempBoard: [[String]] = []
//
//    for i in 0..<n {
//        var tempArr: [String] = []
//        for j in 0..<m {
//            if board[j][i] == "" { continue }
//            tempArr.append(board[j][i])
//        }
//
//
//        if tempArr.count < n {
//            for _ in 0..<m-tempArr.count {
//                tempArr.insert("", at: 0)
//            }
//        }
//
//        tempBoard.append(tempArr)
//    }
//
//    var newBoard: [[String]] = Array(repeating: Array(repeating: "", count: n), count: m)
//
//
//    for i in 0..<n {
//        for j in 0..<m {
//            newBoard[j][i] = tempBoard[i][j]
//        }
//    }
//    return newBoard
//}
//
//
////print(makeNewBoard([["C", "C", "B", "D", "E"], ["", "", "", "D", "E"], ["", "", "", "B", "F"], ["C", "C", "B", "B", "F"]], 4, 5))


// MARK: - 프로그래머스 level2 큰 수 만들기

//func solution(_ number:String, _ k:Int) -> String {
//    let num: [String] = number.map{String($0)}
//    var stack: [String] = []
//    var count: Int = 0
//
//    for i in 0..<num.count {
//        while stack.count > 0 && stack.last! < num[i] && count < k {
//            stack.removeLast()
//
//            count += 1
//        }
//
//        if count >= k {
//            stack.append(contentsOf: num[i...])
//            break
//        } else {
//            stack.append(num[i])
//        }
//
//    }
//
//    print(stack)
//
//    return String(stack.joined().prefix(number.count-k))
//}
//print(solution("1924", 2))


// MARK: - 프로그래머스 level2 N개의 최소공배수

//func solution(_ arr:[Int]) -> Int {
//    var numArr: [Int] = arr
//    var tempArr: [Int] = []
//
//    while numArr.count != 1 {
//        for i in stride(from: 0, to: numArr.count, by: 2) {
//            if i == numArr.count-1 && numArr.count%2 != 0 {
//                tempArr.append(numArr[i])
//                break
//            }
//
//            tempArr.append(numArr[i]*numArr[i+1]/gcd(numArr[i], numArr[i+1]))
//        }
//
//        numArr = tempArr
//        tempArr.removeAll()
//
//    }
//
//
//    return numArr[0]
//}
//
//func gcd(_ x: Int, _ y: Int) -> Int {
//
//    var a: Int = x
//    var b: Int = y
//    while b>0 {
//        let temp = a
//        a = b
//        b = temp%b
//
//    }
//    return a
//}

// MARK: - 프로그래머스 level2 스킬트리

//func solution(_ skill:String, _ skill_trees:[String]) -> Int {
//
//    let skillArr: [String] = skill.map{String($0)}
//    var skillDict: [String:Int] = [:]
//    for sk in skillArr {
//        if skillDict[sk] == nil {
//            skillDict[sk] = 1
//        }
//    }
//    var result: Int = 0
//
//    for skill_tree in skill_trees {
//        var skillTree: [String] = skill_tree.map{String($0)}
//        for i in 0..<skillTree.count {
//            if skillDict[skillTree[i]] == nil {
//                skillTree[i] = ""
//            }
//        }
//        skillTree = skillTree.joined(separator: "").map{String($0)}
//
//        var check: Bool = true
//        for i in 0..<skillTree.count {
//            if skillTree[i] != skillArr[i] { check = false}
//        }
//
//        if check == true { result += 1 }
//
//    }
//
//
//    return result
//}

//func solution(_ skill:String, _ skill_trees:[String]) -> Int {
//
//    var result: Int = 0
//
//    for st in skill_trees {
//        let str: String = st.filter{skill.contains($0)}
//
//        if skill.starts(with: str) { result += 1 }
//    }
//    return result
//}
//
//
//
//print(solution("CBD", ["BACDE", "CBADF", "AECB", "BDA"]))


// MARK: - 프로그래머스 level2 [1차]캐시

//func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
//    if cacheSize == 0 {
//        return 5 * cities.count
//    }
//
//    let lowerCities: [String] = cities.map{String($0).lowercased()}
//    var cache: [String] = []
//    var result: Int = 0
//
//
//    for city in lowerCities {
//        if cache.contains(city) {
//            cache.remove(at: cache.firstIndex(of: city)!)
//            cache.append(city)
//            result += 1
//
//        } else {
//            if cache.count >= cacheSize {
//                cache.removeFirst()
//                cache.append(city)
//            } else {
//                cache.append(city)
//            }
//            result += 5
//        }
//    }
//
//
//    return result
//}
//
//print(solution(2, ["Jeju", "Pangyo", "Seoul", "NewYork", "LA", "SanFrancisco", "Seoul", "Rome", "Paris", "Jeju", "NewYork", "Rome"]))


// MARK: - 프로그래머스 level2 모음사전

//func solution(_ word:String) -> Int {
//    let aeiou: [String] = ["A", "E", "I", "O", "U"]
//    var arr: [String] = []
//
//    var arrCollection: [String] = []
//    var arrDict: [String:Int] = [:]
//    var index: Int = 1
//    func tracking(_ depth: Int, _ startIndex: Int) {
//        if depth > 5 { return }
//        if depth > 0 {
//            arrCollection.append(arr.joined(separator: ""))
//            arrDict[arr.joined(separator: "")] = index
//            index += 1
//        }
//
//        for i in 0..<aeiou.count {
//            arr.append(aeiou[i])
//            tracking(depth + 1, i)
//            arr.removeLast()
//        }
//    }
//
//    tracking(0, 0)
//    return arrDict[word]!
//}
//
//print(solution("EIO"))


// MARK: - 프로그래머스 level2 행렬의 곱셈

//func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
//    var result: [[Int]] = Array(repeating: [Int](), count: arr1.count)
//
//    for i in 0..<arr1.count {
//        for j in 0..<arr2[0].count {
//            var temp: Int = 0
//            for k in 0..<arr2.count {
//                temp += arr1[i][k] * arr2[k][j]
//            }
//            result[i].append(temp)
//        }
//    }
//
//    return result
//}
//
//print(solution([[2, 3, 2], [4, 2, 4], [3, 1, 4]], [[5, 4, 3], [2, 4, 1], [3, 1, 1]]))

// MARK: - 프로그래머스 level2 [3차]방금그곡

//func solution(_ m:String, _ musicinfos:[String]) -> String {
//
//    let myMusic: String = makeNewMusic(m)
//    var musicInfos: [(Int, String, String, String)] = []
//    for musicinfo in musicinfos {
//        let music: [String] = musicinfo.split(separator: ",").map{String($0)}
//        let time: Int = playTime(music[0], music[1])
//        let musicWithTime: String = musicOfPlayTime(music[3], time)
//        if myMusic.count <= time {
//            if musicWithTime.contains(myMusic) {
//                musicInfos.append((time, music[0], music[2], musicOfPlayTime(music[3], time)))
//            }
//        }
//    }
//
//    musicInfos = musicInfos.sorted {
//        if $0.0 == $1.0 {
//            return $0.1 < $1.1
//        }
//        return $0.0 > $1.0
//    }
//
//    if musicInfos.isEmpty {
//        return "(None)"
//    }
//
//    return musicInfos[0].2
//}
//
//func playTime(_ start: String, _ end: String) -> Int {
//    let startTime: [Int] = start.split(separator: ":").map{Int(String($0))!}
//    let endTime: [Int] = end.split(separator: ":").map{Int(String($0))!}
//    return ((endTime[0] - startTime[0]) * 60) + (endTime[1] - startTime[1])
//}
//
//func musicOfPlayTime(_ inputMusic: String, _ inputTime: Int) -> String {
//    let music: [String] = makeNewMusic(inputMusic).map{String($0)}
//    var musicStr: String = ""
//    var index: Int = 0
//    while musicStr.count != inputTime {
//        musicStr.append(music[index])
//        index += 1
//        if index == music.count { index = 0 }
//    }
//
//    return musicStr
//}
//
//func makeNewMusic(_ musicInfo: String) -> String {
//    var music: String = musicInfo
//    music = music.replacingOccurrences(of: "C#", with: "c")
//    music = music.replacingOccurrences(of: "D#", with: "d")
//    music = music.replacingOccurrences(of: "F#", with: "f")
//    music = music.replacingOccurrences(of: "G#", with: "g")
//    music = music.replacingOccurrences(of: "A#", with: "a")
//    return music
//}
//
//print(makeNewMusic("CC#BCC#BCC#BCC#B"))
//
//
//print(solution("ABCDEFG", ["12:00,12:14,HELLO,CDEFGAB", "13:00,13:05,WORLD,ABCDEF"]    ))


// MARK: - 프로그래머스 예상 대진표

//func solution(_ n: Int, _ a: Int, _ b: Int) -> Int {
//    var result: Int = 0
//    var A: Int = a
//    var B: Int = b
//
//    while A != B {
//        if A%2 == 1 {
//            A = (A+1) / 2
//        } else {
//            A = A / 2
//        }
//
//        if B%2 == 1 {
//            B = (B+1) / 2
//        } else {
//            B = B / 2
//        }
//
//        result += 1
//    }
//    return result
//}


// MARK: - 프로그래머스 level2 괄호 회전하기
//func solution(_ s:String) -> Int {
//    if s.count % 2 == 1 { return 0 }
//    var arr: [String] = s.map{String($0)}
//    var result: Int = 0
//    for _ in 0..<arr.count {
//        if checkRight(arr) { result += 1 }
//        arr.append(arr.removeFirst())
//    }
//
//    return result
//}
//
//func checkRight(_ arr: [String]) -> Bool {
//    var stack: [String] = []
//    for i in 0..<arr.count {
//        if stack.isEmpty { stack.append(arr[i]) }
//        else {
//            if stack.last! == "[" && arr[i] == "]" {
//                stack.removeLast()
//            } else if stack.last! == "{" && arr[i] == "}" {
//                stack.removeLast()
//            } else if stack.last! == "(" && arr[i] == ")" {
//                stack.removeLast()
//            } else {
//                stack.append(arr[i])
//            }
//        }
//    }
//
//    return stack.isEmpty ? true : false
//}

// MARK: - 프로그래머스 level2 다리를 지나는 트럭

//func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
//    var bridge: [Int] = Array(repeating: 0, count: bridge_length)
//    var truck: [Int] = truck_weights
//    var result: Int = 0
//    var currentWeight: Int = 0
//
//    while !bridge.isEmpty {
//        result += 1
//        currentWeight -= bridge.removeFirst()
//
//        if let t = truck.first {
//            if t + currentWeight <= weight {
//                currentWeight += truck.removeFirst()
//                bridge.append(t)
//            } else {
//                bridge.append(0)
//            }
//        }
//    }
//
//    return result
//}
//
//print(solution(2, 10, [7, 4, 5, 6]))

// MARK: - 프로그래머스 H-Index

//func solution(_ citations:[Int]) -> Int {
//    var result: Int = 0
//
//    for i in 0...citations.max()! {
//        var a: [Int] = []
//        var b: [Int] = []
//        citations.forEach {
//            if $0 >= i {
//                a.append($0)
//            } else {
//                b.append($0)
//            }
//        }
//
//        if a.count >= i && b.count <= i {
//            result = max(result, i)
//
//        }
//    }
//
//
//    return result
//}
//
//print(solution([3, 0, 6, 1, 5]))

// MARK: - 프로그래머스 level2 이진 변환 반복하기

//func solution(_ s:String) -> [Int] {
//    var str: [String] =  s.map{String($0)}
//    var removeZeroCount: Int = 0
//    var result: Int = 0
//
//    while str != ["1"] {
//        removeZeroCount += str.filter{$0 == "0"}.count
//        str = str.joined(separator: "").replacingOccurrences(of: "0", with: "").map{String($0)}
//        let count: Int = str.count
//        str = String(count, radix: 2).map{String($0)}
//        result += 1
//    }
//
//    return [result, removeZeroCount]
//}
//
//print(solution("1111111"))
//print(String(4, radix: 2))


// MARK: - 프로그래머스 levle2 [3차] 파일명 정렬
//func solution(_ files:[String]) -> [String] {
//    var newFiles: [(Int, String, String, String)] = []
//    var result: [String] = []
//    for i in 0..<files.count {
//        var file: [String] = files[i].map{String($0)}
//        let Head: String = String(files[i].prefix{!$0.isNumber})
//        file = Array(file[Head.count...])
//        var Number: [String] = []
//        var Tail: [String] = []
//
//        for i in 0..<file.count {
//            if i < 5 && Int(file[i]) != nil {
//                Number.append(file[i])
//            } else { break }
//        }
//
//        Tail = Array(file[Number.count...])
//
//
//        newFiles.append((i, Head, Number.joined(separator: ""), Tail.joined(separator: "")))
//
//    }
//
//    newFiles = newFiles.sorted{
//
//        if $0.1.description.lowercased() == $1.1.description.lowercased() {
//            return Int($0.2)! < Int($1.2)!
//        }
//
//        if $0.1.description.lowercased() == $1.1.description.lowercased() && Int($0.2)! == Int($1.2)! {
//            return $0.0 < $1.0
//        }
//
//        return $0.1.description.lowercased() < $1.1.description.lowercased()
//    }
//
//    for file in newFiles {
//        result.append(file.1 + file.2 + file.3)
//    }
//
//    return result
//}
//print(solution(["F-5 Freedom Fighter", "B-50 Superfortress", "A-10 Thunderbolt II", "F-99999999 ", "k=========================================adsjfkalsdnjk1"]))
//
//var tempIndex: Int = 0
//var file: String = "k=========================================adsjfkalsdnjk1"
//print(file.prefix{!$0.isNumber})
////print(tempIndex)

// MARK: - 프로그래머스 level2 최대값과 최솟값
//func solution(_ s:String) -> String {
//    let arr: [Int] = s.split(separator: " ").map{Int(String($0))!}
//    var maxValue: Int = Int.min
//    var minValue: Int = Int.max
//    for num in arr {
//        maxValue = max(maxValue, num)
//        minValue = min(minValue, num)
//    }
//    return "\(minValue) \(maxValue)"
//}
//
//print(solution("-1 -2 -3 -4"))

// MARK: - 프로그래머스 level2 다음 큰 숫자
//func solution(_ n:Int) -> Int{
//    var answer:Int = n+1
//    let oneCount: Int = String(n, radix: 2).map{String($0)}.filter{$0 == "1"}.count
//    while true {
//        let count: Int = String(answer, radix: 2).map{String($0)}.filter{$0 == "1"}.count
//        if count == oneCount {
//            break
//        }
//        answer += 1
//    }
//    return answer
//}

//func solution(_ n:Int) -> Int{
//    var answer:Int = n+1
//    let oneCount: Int = n.nonzeroBitCount
//    while true {
//        if oneCount == answer.nonzeroBitCount {
//            break
//        }
//        answer += 1
//    }
//    return answer
//}
//

// MARK: - 프로그래머스 level2 피보나치 수

//func solution(_ n: Int) -> Int {
//    var arr: [Int] = Array(repeating: 0, count: n+1)
//    arr[0] = 0
//    arr[1] = 1
//    for i in 2...n {
//        arr[i] = (arr[i-1] + arr[i-2]) % 1234567
//    }
//
//    return arr[n]
//}
//print(solution(5))


// MARK: - 프로그래머스 level2 최솟값 만들기

//func solution(_ A:[Int], _ B:[Int]) -> Int {
//    let newA: [Int] = A.sorted(by: <)
//    let newB: [Int] = B.sorted(by: >)
//
//    var result: Int = 0
//
//    for i in 0..<newA.count {
//        result += newA[i] * newB[i]
//    }
//
//    return result
//}
//
//print(solution([1, 4, 2], [5, 4, 4]))

// MARK: - 프로그래머스 JadenCase 문자열 만들기

//func solution(_ s:String) -> String {
//    var arr: [String] = s.components(separatedBy: " ").map{$0.lowercased()}
//    print(arr.joined(separator: " "))
//    for i in 0..<arr.count {
//        if !arr[i].isEmpty {
//            var temp: [String] = arr[i].map{String($0)}
//            if Character(temp[0]).isLetter {
//                temp[0] = temp[0].uppercased()
//            }
//            arr[i] = temp.joined(separator: "")
//        }
//
//    }
//    return arr.joined(separator: " ")
//}

//solution("123     123")

// MARK: - 프로그래머스 level2 n^2 배열 자르기
//func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
//    var numArr: [Int] = []
//    let startR: Int = Int(left) / n
//    let startC: Int = Int(left) % n
//    let endR: Int = Int(right) / n
//    let endC: Int = Int(right) % n
//
//    for i in startR...endR {
//        var temp: [Int] = Array(repeating: i+1, count: i+1)
//
//        if i+1 < n {
//            temp.append(contentsOf: Array(i+2...n))
//        }
//
//        if startR == endR {
//            return Array(temp[startC...endC])
//        }
//
//        if i == startR {
//            numArr.append(contentsOf: temp[startC...])
//        } else if i == endR {
//            numArr.append(contentsOf: temp[...endC])
//        } else {
//            numArr.append(contentsOf: temp)
//        }
//
//    }
//    return numArr
//}
//print(solution(4, 8, 10))

// MARK: - 프로그래머스 levle2 올바른 괄호

//func solution(_ s:String) -> Bool{
//    let arr: [String] = s.map{String($0)}
//    var result: Int = 0
//    for str in arr {
//        if str == "(" { result += 1 }
//        else if str == ")" { result -= 1 }
//        if result < 0 { return false }
//    }
//
//    return result == 0 ? true : false
//}
//print(solution("(()("))

// MARK: - 프로그래머스 level2 [3차]n진수 게임
//func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
//    let arr: [Int] = Array(0...t*m)
//    var numArr: [String] = []
//    var result: String = ""
//    for num in arr {
//        numArr.append(contentsOf: String(num, radix: n).map{String($0)})
//    }
//    var index: Int = p-1
//    while result.count != t {
//        result += numArr[index].uppercased()
//        index += m
//    }
//    return result
//}
//print(solution(16, 16, 2, 1))

// MARK: - 프로그래머스 levle2 영어 끝말잇기
//func solution(_ n:Int, _ words:[String]) -> [Int] {
//    var dict: [String:Int] = [:]
//    dict[words[0]] = 1
//    for i in 1..<words.count {
//        if words[i-1].last == words[i].first! {
//            if dict[words[i]] == nil {
//                dict[words[i]] = 1
//            } else {
//                return [i%n+1, i/n+1]
//            }
//        } else {
//
//            return [i%n+1, i/n+1]
//        }
//    }
//
//
//    return [0, 0]
//}
//
//print(solution(2, ["hello", "one", "even", "never", "now", "world", "draw"]))

// MARK: - 프로그래머스 level2 [3차]압축
//func solution(_ msg:String) -> [Int] {
//    var result: [Int] = []
//    let message: [String] = msg.map{String($0)}
//    let arr: [String] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".map{String($0)}
//    var dict: [String:Int] = [:]
//    for (index, alphabet) in arr.enumerated() {
//        dict[alphabet] = index+1
//    }
//
//    var index: Int = 0
//    var str: String = ""
//    while index < message.count {
//        let next: String = message[index]
//        let tempString: String = str + next
//
//        guard let _ = dict[tempString] else {
//            dict[tempString] = dict.count+1
//            result.append(dict[str]!)
//
//            str = ""
//            continue
//        }
//
//        str += next
//        index += 1
//    }
//
//    result.append(dict[str]!)
//    return result
//}
//
//print(solution("ABABABABABABABAB"))

// MARK: - 프로그래머스 level2 땅따먹기
//func solution(_ land:[[Int]]) -> Int {
//    var result: [[Int]] = land
//
//    for i in 1..<land.count {
//        result[i][0] += max(result[i-1][1], result[i-1][2], result[i-1][3])
//        result[i][1] += max(result[i-1][0], result[i-1][2], result[i-1][3])
//        result[i][2] += max(result[i-1][0], result[i-1][1], result[i-1][3])
//        result[i][3] += max(result[i-1][0], result[i-1][1], result[i-1][2])
//    }
//
//    return result.last!.max()!
//}
//
//print(solution([[1,2,3,5],[5,6,7,8],[4,3,2,1]]))

// MARK: - 프로그래머스 level2 가장 큰 정사각형 찾기

//func solution(_ board:[[Int]]) -> Int {
//
//    var newBoard: [[Int]] = board
//    var result: Int = 0
//
//    if board.count == 1 || board[0].count == 1 {
//        for i in 0..<board.count {
//            for j in 0..<board[0].count {
//                result = result < newBoard[i][j] ? newBoard[i][j] : result
//            }
//        }
//    } else {
//        for i in 1..<board.count {
//            for j in 1..<board[0].count {
//                if board[i][j] == 1 {
//                    newBoard[i][j] += min(newBoard[i-1][j-1], newBoard[i-1][j], newBoard[i][j-1])
//                    result = result < newBoard[i][j] ? newBoard[i][j] : result
//                }
//            }
//        }
//    }
//
//    return result * result
//}
//
//print(solution([[0,1,1,1]]))

// MARK: - 프로그래머스 level2 방문 길이

//func solution(_ dirs:String) -> Int {
//    var arr: [[Int]] = [[0, 0]]
//    var result: Int = 0
//    var checkDict: [[Int]:Int] = [:]
//    var start: (Int, Int) = (0, 0)
//    for dir in dirs {
//        var temp: (Int, Int) = start
//        if dir == "U" {
//            temp = (temp.0, temp.1 + 1)
//        } else if dir == "D" {
//            temp = (temp.0, temp.1 - 1)
//        } else if dir == "L" {
//            temp = (temp.0 - 1, temp.1)
//        } else if dir == "R" {
//            temp = (temp.0 + 1, temp.1)
//        }
//
//        if temp.0 >= -5 && temp.0 <= 5 && temp.1 >= -5 && temp.1 <= 5 {
//
//            arr.append([temp.0, temp.1])
//            start = temp
//
//        } else {
//            continue
//        }
//    }
//
//    for i in 0..<arr.count-1 {
//        let temp1: [Int] = arr[i] + arr[i+1]
//        let temp2: [Int] = arr[i+1] + arr[i]
//        if checkDict[temp1] == nil && checkDict[temp2] == nil {
//            checkDict[temp1] = 1
//            checkDict[temp2] = 1
//            result += 1
//        }
//    }
//
//    return result
//}
//
//print(solution("UUUUDUDUDUUU"))

// MARK: - 프로그래머스 level2 점프와 순간 이동

//func solution(_ n:Int) -> Int {
//
//    var result: Int = 0
//    var number: Int = n
//
//    while number != 0 {
//        if number % 2 == 1 {
//            result += 1
//        }
//        number /= 2
//    }
//
//
//
//    return result
//}
//
//print(solution(5000))


// MARK: - 프로그래머스 level2 2개 이하로 다른 비트

//func solution(_ numbers:[Int64]) -> [Int64] {
//    var result: [Int64] = []
//
//    for number in numbers {
//        if number%2 == 0 {result.append(number+1)}
//        else {
//            var numberArr: [String] = String(number, radix: 2).map{String($0)}
//            if !numberArr.contains("0") {
//                numberArr[0] = "0"
//                numberArr = ["1"] + numberArr
//                result.append(Int64(numberArr.joined(separator: ""), radix: 2)!)
//            } else {
//                numberArr = numberArr.reversed()
//                for i in 0..<numberArr.count {
//                    if numberArr[i] == "0" {
//                        numberArr[i] = "1"
//                        numberArr[i-1] = "0"
//                        result.append(Int64(numberArr.reversed().joined(separator: ""), radix: 2)!)
//                        break
//                    }
//                }
//
//            }
//        }
//    }
//
//
//    return result
//}

//print(solution([2, 11]))

// MARK: - 프로그래머스 level2 교점에 별 만들기
//func solution(_ line:[[Int]]) -> [String] {
//    var arr: [(Int, Int)] = []
//    var minXValue: Int = Int.max
//    var maxXValue: Int = Int.min
//    var minYValue: Int = Int.max
//    var maxYValue: Int = Int.min
//
//    for i in 0..<line.count-1 {
//        let A: Int = line[i][0]
//        let B: Int = line[i][1]
//        let E: Int = line[i][2]
//
//        for j in i+1..<line.count {
//            let C: Int = line[j][0]
//            let D: Int = line[j][1]
//            let F: Int = line[j][2]
//
//            if (A*D)-(B*C) != 0 && (B*F - E*D) % (A*D - B*C) == 0 && (E*C - A*F) % (A*D - B*C) == 0 {
//                arr.append(((B*F - E*D) / (A*D - B*C), (E*C - A*F) / (A*D - B*C)))
//                minXValue = min(minXValue, (B*F - E*D) / (A*D - B*C))
//                maxXValue = max(maxXValue, (B*F - E*D) / (A*D - B*C))
//                minYValue = min(minYValue, (E*C - A*F) / (A*D - B*C))
//                maxYValue = max(maxYValue, (E*C - A*F) / (A*D - B*C))
//            }
//        }
//    }
//
//    var tempArr: [[String]] = Array(repeating: Array(repeating: ".", count: maxXValue-minXValue+1), count: maxYValue-minYValue+1)
//
//    for location in arr {
//        tempArr[location.1 - minYValue][location.0 - minXValue] = "*"
//    }
//
//    var result: [String] = []
//    for i in tempArr.reversed() {
//        result.append(i.joined(separator: ""))
//    }
//
//    return result
//}
//
//print(solution([[2, -1, 4], [-2, -1, 4], [0, -1, 1], [5, -8, -12], [5, 8, 12]]))

// MARK: - 프로그래머스 level2 전략망을 둘로 나누기

//func solution(_ n:Int, _ wires:[[Int]]) -> Int {
//    var graph: [[Int]] = Array(repeating: [Int](), count: n+1)
//    var maxCount: Int = 0
//    for wire in wires {
//        graph[wire[0]].append(wire[1])
//        graph[wire[1]].append(wire[0])
//        maxCount = max(maxCount, graph[wire[0]].count, graph[wire[1]].count)
//    }
//
//    var countArr: [Int] = []
//
//
//    var result: Int = n
//    for node in 1...n {
//        for startNode in graph[node] {
//            var copyGraph: [[Int]] = graph
//            copyGraph[node] = copyGraph[node].filter{$0 != startNode}
//            copyGraph[startNode] = copyGraph[startNode].filter{$0 != node}
//
//            var visited: [Bool] = Array(repeating: false, count: n+1)
//
//
//            for i in 1...n {
//
//                if visited[i] == false {
//                    var queue: [Int] = copyGraph[i]
//                    var sum: Int = 0
//                    while !queue.isEmpty {
//                        let popValue: Int = queue.removeFirst()
//                        if visited[popValue] == false {
//                            queue.append(contentsOf: copyGraph[popValue])
//                            visited[popValue] = true
//                            sum += 1
//                        }
//                    }
//
//                    if sum == 0 {countArr.append(1)}
//                    else {countArr.append(sum)}
//                }
//            }
//            let a: Int = countArr.removeLast()
//            let b: Int = countArr.removeLast()
//            result = min(result, abs(a-b))
//
//        }
//    }
//
//
//
//    return result
//}
//print(solution(7, [[1,2],[2,7],[3,7],[3,4],[4,5],[6,7]]))
//
//
// MARK: - 프로그래머스 level2 피로도

//func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
//
//    var arr: [[Int]] = []
//    var arrVisited: [Bool] = Array(repeating: false, count: dungeons.count)
//    func dfs(_ start: Int, _ dfsArr: [Int]) {
//        if dfsArr.count == dungeons.count {
//            arr.append(dfsArr)
//            return
//        }
//
//        for i in 0..<dungeons.count {
//            if arrVisited[i] == false {
//                arrVisited[i] = true
//                dfs(i+1, dfsArr + [i])
//                arrVisited[i] = false
//            }
//        }
//    }
//
//    dfs(0, [])
//
//
//    var result: Int = 0
//
//    for i in arr {
//        var count: Int = 0
//        var newK: Int = k
//        for j in i {
//            if dungeons[j][0] <= newK {
//                newK -= dungeons[j][1]
//                count += 1
//            } else {
//                break
//            }
//        }
//        result = max(result, count)
//    }
//
//
//
//    return result
//}
//
//print(solution(80, [[80,20],[50,40],[30,10]]))
//


// MARK: - 프로그래머스 level2 배달
//func solution(_ N:Int, _ road:[[Int]], _ k:Int) -> Int {
//    var answer = 0
//
//    if N == 1 { return 1 }
//
//    var graph: [[Int]] = Array(repeating: [Int](), count: N+1)
//    var graphWeight: [[Int]] = Array(repeating: Array(repeating: 500001, count: N+1), count: N+1)
//    for r in road {
//
//        graph[r[0]].append(r[1])
//        graph[r[1]].append(r[0])
//
//        graphWeight[r[0]][r[1]] = min(graphWeight[r[0]][r[1]], r[2])
//        graphWeight[r[1]][r[0]] = min(graphWeight[r[1]][r[0]], r[2])
//
//
//    }
//
//    var result: [Int] = Array(repeating: 500001, count: N+1)
//
//    result[1] = 0
//    for i in 1...N {
//        let temp: [Int] = graph[i]
//        var visited: [Bool] = Array(repeating: false, count: N+1)
//        var queue: [Int] = graph[i]
//        while !queue.isEmpty {
//            let popValue: Int = queue.removeFirst()
//            if visited[popValue] == false {
//                visited[popValue] = true
//                queue.append(contentsOf: graph[popValue])
//                for j in graph[popValue] {
//                    result[j] = min(result[j], result[popValue] + graphWeight[popValue][j])
//                }
//
//            }
//        }
//
//    }
//
//
//    for i in 2...N {
//        if result[i] > 0 && result[i] <= k  {
//            answer += 1
//        }
//    }
//    return answer+1
//}
//
//print(solution(5, [[1, 2, 4], [1, 3, 1], [3, 4, 1], [4, 2, 1], [2, 5, 1]], 4))


//func solution(_ N:Int, _ road:[[Int]], _ k:Int) -> Int {    // 플로이드 와샬 알고리즘
//    var answer = 0
//
//    var graphWeight: [[Int]] = Array(repeating: Array(repeating: 500001, count: N+1), count: N+1)
//
//    for r in road {
//        graphWeight[r[0]][r[1]] = min(graphWeight[r[0]][r[1]], r[2])
//        graphWeight[r[1]][r[0]] = min(graphWeight[r[1]][r[0]], r[2])
//    }
//
//    for i in 1...N {
//        graphWeight[i][i] = 0
//    }
//
//    for k in 1...N {
//        for i in 1...N {
//            for j in 1...N {
//                if graphWeight[i][k] + graphWeight[k][j] < graphWeight[i][j] {
//                    graphWeight[i][j] = graphWeight[i][k] + graphWeight[k][j]
//                }
//            }
//        }
//    }
//
//    for i in 1...N{
//        if graphWeight[1][i] <= k{
//            answer += 1
//        }
//    }
//
//    return answer
//}
//print(solution(5, [[1, 2, 4], [1, 3, 1], [3, 4, 1], [4, 2, 1], [2, 5, 1]], 4))

// MARK: - 프로그래머스 level3 [1차]셔틀 버스

//func solution(_ n:Int, _ t:Int, _ m:Int, _ timetable:[String]) -> String {
//    // 버스 시간 분으로 통일
//    var busTime: [Int] = [540]
//    if n>1 {
//        for i in 1..<n {
//            busTime.append(busTime[i-1] + t)
//        }
//    }
//   // print(busTime)
//    // 크루 시간 분으로 통일
//    var crewsTime: [Int] = []
//    for times in timetable {
//        let time = times.split(separator: ":").map{Int($0)!}
//        let totalTime: Int = time[0]*60 + time[1]
//        crewsTime.append(totalTime)
//    }
//    crewsTime.sort()
//
//    var arr: [[Int]] = []
//    var index: Int = 0
//    for i in 0..<busTime.count {
//
//        var temp: [Int] = []
//
//
//        while temp.count < m && index < crewsTime.count{
//            if crewsTime[index] <= busTime[i] {
//                temp.append(crewsTime[index])
//            } else {
//                break
//            }
//            index += 1
//        }
//        arr.append(temp)
//
//    }
//
//    var result: Int = 0
//
//    for i in 0..<arr.count {
//        if i == arr.count-1 {   // 마지막 버스 탑승
//            if arr[i].count == m { // 마지막 버스가 가득 찼을 경우
//                // 탑승 인원 중 가장 늦게 도착한 인원보다 1분 빨리 도착하면 됌.
//                result = arr[i].max()! - 1
//            } else if arr[i].count < m {
//                // 마지막 버스에 여유가 있을 경우
//                // 마지막 버스 시간에 맞추면 됌.
//                result = busTime[i]
//            }
//        }
//    }
//
//
//    var h: String = String(result/60)
//    if h.count==1 { h = "0"+h}
//    var m: String = String(result%60)
//    if m.count == 1 { m = "0"+m}
//    return "\(h):\(m)"
//}
//
//print(solution(10, 60, 45, ["23:59","23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59", "23:59"]))

// MARK: - 프로그래머스 level3 가장 먼 노드

//func solution(_ n:Int, _ edge:[[Int]]) -> Int {
//    var graph: [[Int]] = Array(repeating: [Int](), count: n+1)
//    for edge in edge {
//        graph[edge[0]].append(edge[1])
//        graph[edge[1]].append(edge[0])
//    }
//
//    var arr: [[Int]] = Array(repeating: Array(repeating: 999999, count: n+1), count: n+1)
//    for i in 1...n {
//        arr[i][i] = 0
//    }
//    for i in 0..<graph.count {
//        for j in graph[i] {
//            arr[i][j] = 1
//        }
//    }
//
//    for k in 1...n {
//        for i in 1...n {
//            for j in 1...n {
//                if arr[i][k] + arr[k][j] < arr[i][j] {
//                    arr[i][j] = arr[i][k] + arr[k][j]
//                }
//            }
//        }
//    }
//    arr[1][0] = 0
//    let maxValue: Int = arr[1].max()!
//
//    return arr[1].filter{$0 == maxValue}.count
//}

//func solution(_ n:Int, _ edge:[[Int]]) -> Int {
//    var graph: [[Int]] = Array(repeating: [Int](), count: n+1)
//    for edge in edge {
//        graph[edge[0]].append(edge[1])
//        graph[edge[1]].append(edge[0])
//    }
//
//    var route: [Int] = Array(repeating: 999999, count: n+1)
//    route[0] = 0
//    route[1] = 0
//    var visited: [Bool] = Array(repeating: false, count: n+1)
//    func bfs(_ v: Int) {
//
//        var queue: [Int] = [v]
//        while !queue.isEmpty {
//            let popValue: Int = queue.removeFirst()
//            if visited[popValue] == false {
//                visited[popValue] = true
//
//                for index in graph[popValue] {
//                    route[index] = min(route[index], route[popValue]+1)
//                }
//
//                queue.append(contentsOf: graph[popValue])
//
//            }
//        }
//    }
//
//    bfs(1)
//    let maxValue: Int = route.max()!
//    return route.filter{$0 == maxValue}.count
//}
//
//print(solution(6, [[3, 6], [4, 3], [3, 2], [1, 3], [1, 2], [2, 4], [5, 2]]    ))



// MARK: - 프로그래머스 level3 디스크 컨트롤

//func solution(_ jobs:[[Int]]) -> Int {
//
//    if jobs.count == 1 { return jobs[0][1]}
//
//    let newJobs: [[Int]] = jobs.sorted {
//        if $0[1] == $1[1] {
//            return $0[0] < $1[0]
//        }
//        return $0[1] < $1[1]
//    }
//
//    var doingTime: [[Int]] = [newJobs[0]]
//
//    for i in 1..<jobs.count {
//        doingTime.append([doingTime[i-1][1], doingTime[i-1][1] + newJobs[i][1]])
//    }
//
//
//    var result: Int = 0
//    for i in 0..<newJobs.count {
//        result += doingTime[i][1] - newJobs[i][0]
//    }
//
//
//
//    return result / jobs.count
//}
//
//print(solution([[0, 3], [1, 9], [2, 6]]))

// MARK: - 프로그래머스 level3 네트워크

//func solution(_ n:Int, _ computers:[[Int]]) -> Int {
//
//    var graph: [[Int]] = Array(repeating: [Int](), count: n)
//    var result: [Int] = []
//    for i in 0..<computers.count {
//        for j in 0..<computers[i].count {
//            if i != j {
//                if computers[i][j] == 1 {
//                    graph[i].append(j)
//                }
//            }
//        }
//    }
//
//    //print(graph)
//    var visited: [Bool] = Array(repeating: false, count: n)
//    for i in 0..<n {
//
//        result.append(dfs(i, &visited, 0, graph))
//    }
//
//    //print(result)
//
//    return result.filter{$0 != 0}.count
//}
//
////print(solution(3, [[1, 1, 0], [1, 1, 1], [0, 1, 1]]))
//
//func dfs(_ startNode: Int, _ visited: inout [Bool], _ networkCount: Int, _ networkGraph: [[Int]]) -> Int {
//
//    var count: Int = 0
//    var queue: [Int] = [startNode]
//
//    while !queue.isEmpty {
//        let popValue: Int = queue.removeFirst()
//        if visited[popValue] == false {
//            visited[popValue] = true
//            count += 1
//            queue.append(contentsOf: networkGraph[popValue])
//        }
//    }
//
//    return count
//}


//func solution(_ n:Int, _ computers:[[Int]]) -> Int {
//    var visited: [Bool] = Array(repeating: false, count: n)
//    var result: Int = 0
//
//    func dfs(_ v: Int) {
//        visited[v] = true
//        for i in 0..<n {
//            if computers[v][i] == 1 && visited[i] == false {
//                dfs(i)
//            }
//        }
//    }
//
//    for i in 0..<n {
//        if visited[i] == false {
//            result += 1
//            dfs(i)
//        }
//    }
//    return result
//}
//
//
//
//print(solution(3, [[1, 1, 0], [1, 1, 1], [0, 1, 1]]))

// MARK: - 프로그래머스 level3 광고 삽입

//func solution(_ play_time:String, _ adv_time:String, _ logs:[String]) -> String {
//
//    if play_time == adv_time { return "00:00:00" }
//    let playTime: Int = stringToSec(play_time)
//    let advTime: Int = stringToSec(adv_time)
//    var allTime: [Int] = Array(repeating: 0, count: playTime+1)
//
//    for log in logs {
//        let time: (String, String) = makeLog(log)
//        let startTime: Int = stringToSec(time.0)
//        let endTime: Int = stringToSec(time.1)
//        allTime[startTime] += 1
//        allTime[endTime] -= 1
//    }
//
//    for i in 1..<allTime.count {
//        allTime[i] += allTime[i-1]
//    }
//
//    var currentTime: Int = allTime[0..<advTime].reduce(0, +)
//    var maxTime: Int = currentTime
//    var maxIndex: Int = 0
//
//
//    for i in advTime..<playTime {
//        currentTime = currentTime + allTime[i] - allTime[i-advTime]
//        if currentTime > maxTime {
//            maxTime = currentTime
//            maxIndex = i-advTime+1
//        }
//    }
//
//    return secToString(maxIndex)
//}
//
//
//func makeLog(_ inputLog: String) -> (String, String) {
//    let log: [String] = inputLog.split(separator: "-").map{String($0)}
//    let startTime: String = log[0]
//    let endTime: String = log[1]
//    return (startTime, endTime)
//}
//
//func stringToSec(_ inputStr: String) -> Int {
//    let time: [Int] = inputStr.split(separator: ":").map{Int($0)!}
//    let hour: Int = time[0]*60*60
//    let minute: Int = time[1]*60
//    let second: Int = time[2]
//    return hour + minute + second
//}
//
//func secToString(_ inputTime: Int) -> String {
//    let h: String = 0...9 ~= inputTime/3600 ? "0\(inputTime/3600)" : "\(inputTime/3600)"
//    let m: String = 0...9 ~= inputTime/60%60 ? "0\(inputTime/60%60)" : "\(inputTime/60%60)"
//    let s: String = 0...9 ~= inputTime%60 ? "0\(inputTime%60)" : "\(inputTime%60)"
//
//    return "\(h):\(m):\(s)"
//}
//
//
////print(makeLog("01:20:15-01:45:14"))
//print(solution("02:03:55", "00:14:15", ["01:20:15-01:45:14", "00:40:31-01:00:00", "00:25:50-00:48:29", "01:30:59-01:53:29", "01:37:44-02:02:30"]))


// MARK: - 프로그래머스 level3 사라지는 발판

//func solution(_ board:[[Int]], _ aloc:[Int], _ bloc:[Int]) -> Int {
//    var caseAResult: Int = 0
//    var caseBResult: Int = 0
//    var caseABoard: [[(Bool, Int)]] = Array(repeating: Array(repeating: (false, 0), count: board[0].count), count: board.count)
//    var caseBBoard: [[(Bool, Int)]] = Array(repeating: Array(repeating: (false, 0), count: board[0].count), count: board.count)
//    var currentUserByCaseA: Int = 0   // 짝수 = A, 홀수 = B
//    var currentUserByCaseB: Int = 0   // 짝수 = A, 홀수 = B
//    var aLocationByCaseA: [Int] = aloc
//    var bLocationByCaseA: [Int] = bloc
//
//    var aLocationByCaseB: [Int] = aloc
//    var bLocationByCaseB: [Int] = bloc
//
//    for i in 0..<board.count {
//        for j in 0..<board[i].count {
//            caseABoard[i][j] = (false, board[i][j])
//            caseBBoard[i][j] = (false, board[i][j])
//        }
//    }
//
//
//    // A가 이기는 사람이라면
//    while true {
//        // A가 이기는 방법 = 거리가 1이면서 B와의 거리가 제일 작은 좌표로 이동
//        // B가 이기는 방법 = 거리가 1이면서 A와의 거리가 제일 큰 좌표로 이동
////        print(currentUserByCaseA%2 == 0 ? "A순서" : "B순서")
//
//
////        if currentUser%2 == 0 && aLocation == bLocation {
////            return result + 1
////        }
////
//
//        ///(방문여부, x, y,  a거리, b거리)
//        var tempBoard: [[(Bool, Int, Int, Int, Int)]] = Array(repeating: Array(repeating: (false, 0, 0, 0, 0), count: board[0].count), count: board.count)
//
//        // A와 B각각의 거리에 대한 값 정렬
//        for i in 0..<board.count {
//            for j in 0..<board[i].count {
//                let state: Bool = caseABoard[i][j].0
//                let distanceA: Int = abs(aLocationByCaseA[0] - i) + abs(aLocationByCaseA[1] - j)
//                let distanceB: Int = abs(bLocationByCaseA[0] - i) + abs(bLocationByCaseA[1] - j)
//                tempBoard[i][j] = (state, i, j, distanceA, distanceB)
//            }
//        }
//
////        print("---A와 B로 부터 각각의 거리---")
////        print(tempBoard)
////
//
//        if currentUserByCaseA%2 == 0 { // A이동
//            var possibleARoot: [(Bool, Int, Int, Int, Int)] = []
//            for i in 0..<tempBoard.count {
//                for j in 0..<tempBoard[i].count {
//                    if tempBoard[i][j].0 == false && tempBoard[i][j].3 == 1 && caseABoard[i][j].1 == 1{
//                        possibleARoot.append(tempBoard[i][j])
//                    }
//                }
//            }
//
//            if possibleARoot.count == 0 {
////                print("A가 더 이상 갈 곳이 없어서 종료")
//                break
//                //return caseAResult
//            }
//
//            let a = possibleARoot.sorted{$0.4 < $1.4}[0]
//
//            caseABoard[aLocationByCaseA[0]][aLocationByCaseA[1]].0 = true
//
//            if [aLocationByCaseA[0], aLocationByCaseA[1]] == bLocationByCaseA {
////                print("A와 B가 같은 자리에 있었고, A가 이동하면서 B발판이 사라져 게임 종료")
//                caseAResult += 1
//                break
//                //return caseAResult + 1
//            }
//
//
//            aLocationByCaseA = [a.1, a.2]
////            print("이동한 A의 좌표: \(aLocationByCaseA)")
//
//
//
//
//        } else { // B이동
//            var possibleBRoot: [(Bool, Int, Int, Int, Int)] = []
//            for i in 0..<tempBoard.count {
//                for j in 0..<tempBoard[i].count {
//                    if tempBoard[i][j].0 == false && tempBoard[i][j].4 == 1 && caseABoard[i][j].1 == 1{
//                        possibleBRoot.append(tempBoard[i][j])
//                    }
//                }
//            }
//
//            if possibleBRoot.count == 0 {
////                print("B가 더 이상 갈 곳이 없어서 종료")
//                break
//
//            }
//
//
//            let b = possibleBRoot.sorted{$0.3 > $1.3}[0]
//            //print(b)
//            caseABoard[bLocationByCaseA[0]][bLocationByCaseA[1]].0 = true
//            if [bLocationByCaseA[0], bLocationByCaseA[1]] == aLocationByCaseA {
////                print("A와 B가 같은 자리에 있었고, B가 이동하면서 A발판이 사라져 게임 종료")
//                caseAResult += 1
//                break
//                //return caseAResult + 1
//            }
//
//            bLocationByCaseA = [b.1, b.2]
////            print("이동한 B의 좌표: \(bLocationByCaseA)")
//
//        }
//        currentUserByCaseA += 1
//        caseAResult += 1
////        print("<----발판 갱신---->")
////        print(caseABoard)
////        print("A의 현재 위치: \(aLocationByCaseA) --- B의 현재 위치: \(bLocationByCaseA)")
//
//    }
//
//    // B가 이기는 사람이라면
//    while true {
//        // A가 이기는 방법 = 거리가 1이면서 B와의 거리가 제일 작은 좌표로 이동
//        // B가 이기는 방법 = 거리가 1이면서 A와의 거리가 제일 큰 좌표로 이동
//        //print(currentUserByCaseB%2 == 0 ? "A순서" : "B순서")
//
//
////        if currentUser%2 == 0 && aLocation == bLocation {
////            return result + 1
////        }
////
//
//        ///(방문여부, x, y,  a거리, b거리)
//        var tempBoard: [[(Bool, Int, Int, Int, Int)]] = Array(repeating: Array(repeating: (false, 0, 0, 0, 0), count: board[0].count), count: board.count)
//
//        // A와 B각각의 거리에 대한 값 정렬
//        for i in 0..<board.count {
//            for j in 0..<board[i].count {
//                let state: Bool = caseBBoard[i][j].0
//                let distanceA: Int = abs(aLocationByCaseB[0] - i) + abs(aLocationByCaseB[1] - j)
//                let distanceB: Int = abs(bLocationByCaseB[0] - i) + abs(bLocationByCaseB[1] - j)
//                tempBoard[i][j] = (state, i, j, distanceA, distanceB)
//            }
//        }
////
////        print("---A와 B로 부터 각각의 거리---")
////        print(tempBoard)
////
//
//        if currentUserByCaseB%2 == 0 { // A이동
//            var possibleARoot: [(Bool, Int, Int, Int, Int)] = []
//            for i in 0..<tempBoard.count {
//                for j in 0..<tempBoard[i].count {
//                    if tempBoard[i][j].0 == false && tempBoard[i][j].3 == 1 && caseBBoard[i][j].1 == 1{
//                        possibleARoot.append(tempBoard[i][j])
//                    }
//                }
//            }
//
//            if possibleARoot.count == 0 {
//                //print("A가 더 이상 갈 곳이 없어서 종료")
//                break
//                //return caseAResult
//            }
//
//            let a = possibleARoot.sorted{$0.4 > $1.4}[0]
//
//            caseBBoard[aLocationByCaseB[0]][aLocationByCaseB[1]].0 = true
//
//            if [aLocationByCaseB[0], aLocationByCaseB[1]] == bLocationByCaseB {
//              //  print("A와 B가 같은 자리에 있었고, A가 이동하면서 B발판이 사라져 게임 종료")
//                caseBResult += 1
//                break
//                //return caseAResult + 1
//            }
//
//
//            aLocationByCaseB = [a.1, a.2]
//            //print("이동한 A의 좌표: \(aLocationByCaseB)")
//
//
//
//
//        } else { // B이동
//            var possibleBRoot: [(Bool, Int, Int, Int, Int)] = []
//            for i in 0..<tempBoard.count {
//                for j in 0..<tempBoard[i].count {
//                    if tempBoard[i][j].0 == false && tempBoard[i][j].4 == 1 && caseBBoard[i][j].1 == 1{
//                        possibleBRoot.append(tempBoard[i][j])
//                    }
//                }
//            }
//
//            if possibleBRoot.count == 0 {
//               // print("B가 더 이상 갈 곳이 없어서 종료")
//                break
//
//            }
//
//
//            let b = possibleBRoot.sorted{$0.3 < $1.3}[0]
//            //print(b)
//            caseBBoard[bLocationByCaseB[0]][bLocationByCaseB[1]].0 = true
//            if [bLocationByCaseB[0], bLocationByCaseB[1]] == aLocationByCaseB {
//             //   print("A와 B가 같은 자리에 있었고, B가 이동하면서 A발판이 사라져 게임 종료")
//                caseBResult += 1
//                break
//                //return caseAResult + 1
//            }
//
//            bLocationByCaseB = [b.1, b.2]
//           // print("이동한 B의 좌표: \(bLocationByCaseB)")
//
//        }
//        currentUserByCaseB += 1
//        caseBResult += 1
////        print("<----발판 갱신---->")
////        print(caseBBoard)
////        print("A의 현재 위치: \(aLocationByCaseB) --- B의 현재 위치: \(bLocationByCaseB)")
//
//    }
//
//
//    return min(caseAResult, caseBResult)
//}
//
//print(solution([[1, 1, 1, 0], [1, 1, 0, 1], [1, 0, 1, 1], [0, 1, 1, 1]], [0, 0], [3, 3]))

//func solution(_ board:[[Int]], _ aloc:[Int], _ bloc:[Int]) -> Int {
//    let dx: [Int] = [1, -1, 0, 0]
//    let dy: [Int] = [0, 0, 1, -1]
//
//    let n: Int = board.count
//    let m: Int = board[0].count
//
//    var newBoard: [[Int]] = Array(repeating: Array(repeating: 0, count: 5), count: 5)
//    for i in 0..<n {
//        for j in 0..<m {
//            newBoard[i][j] = board[i][j]
//        }
//    }
//    var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: 5), count: 5)
//
//    func checkIndex(_ x: Int, _ y: Int) -> Bool {
//        return x<0 || x>=n || y<0 || y>=m
//    }
//
//    func solve(_ curx: Int, _ cury: Int, _ opx: Int, _ opy: Int) -> Int {
//        if visited[curx][cury] { return 0 }
//        var ret: Int = 0
//
//        for i in 0..<4 {
//            let nx: Int = curx + dx[i]
//            let ny: Int = cury + dy[i]
//
//            if checkIndex(nx, ny) || visited[nx][ny] || newBoard[nx][ny] == 0 { continue }
//            visited[curx][cury] = true
//
//            var val: Int = solve(opx, opy, nx, ny) + 1
//
//            visited[curx][cury] = false
//
//
//            if ret%2 == 0 && val%2 == 1 {
//                ret = val
//            } else if ret%2 == 0 && val%2 == 0 {
//                ret = max(ret, val)
//            } else if ret%2 == 1 && val%2 == 1 {
//               ret = min(ret, val)
//            }
//        }
//
//
//        return ret
//    }
//
//
//
//
//    return solve(aloc[0], aloc[1], bloc[0], bloc[1])
//}
//
//
//print(solution([[1, 1, 1, 0], [1, 1, 0, 1], [1, 0, 1, 1], [0, 1, 1, 1]], [0, 0], [3, 3]))

// MARK: - 프로그래머스 Gold5 7576번 토마토

//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let m: Int = read[0]
//let n: Int = read[1]
//
//var box: [[Int]] = []
//for _ in 0..<n {
//    box.append(readLine()!.split(separator: " ").map{Int($0)!})
//}
//
//var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: m), count: n)
//let dx: [Int] = [1, -1, 0, 0]
//let dy: [Int] = [0, 0, 1, -1]
//var result: Int = 1
//
//var queue: [[Int]] = []
//for i in 0..<n {
//    for j in 0..<m {
//        if box[i][j] == 1 {
//            queue.append([i, j])
//        }
//    }
//}
//
//var index: Int = 0
//
//while index < queue.count {
//    let popValue: [Int] = queue[index]
//    index += 1
//
//    for i in 0..<4 {
//        let nx: Int = popValue[0] + dx[i]
//        let ny: Int = popValue[1] + dy[i]
//
//        if nx>=0 && nx<n && ny>=0 && ny<m {
//            if box[nx][ny] == 0 {
//                box[nx][ny] = box[popValue[0]][popValue[1]] + 1
//                queue.append([nx, ny])
//                if result < box[popValue[0]][popValue[1]] + 1 {
//                    result = box[popValue[0]][popValue[1]] + 1
//                }
//            }
//        }
//    }
//}
//
//
//var check: Bool = true
//for i in 0..<n {
//    for j in 0..<m {
//        if box[i][j] == 0 {
//            check = false
//            break
//        }
//    }
//}
//
//if check { print(result-1) }
//else { print(-1) }
//

// MARK: - 프로그래머스 Gold5 1753번 최단경로

//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let V: Int = read[0]
//let E: Int = read[1]
//let startNode: Int = Int(readLine()!)!
//var graph: [[Int]] = Array(repeating: [Int](), count: V+1)
//var weight: [Int:[Int:Int]] = [:]
//
//for _ in 0..<E {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    graph[temp[0]].append(temp[1])
//    if weight[temp[0]] == nil {
//        weight[temp[0]] = [temp[1]:temp[2]]
//
//    } else {
//        if weight[temp[0]]![temp[1]] == nil {
//            weight[temp[0]]!.updateValue(temp[2], forKey: temp[1])
//        } else {
//            weight[temp[0]]!.updateValue(min(temp[2], weight[temp[0]]![temp[1]]!), forKey: temp[1])
//        }
//    }
//}
//
//
//var visited: [Bool] = Array(repeating: false, count: V+1)
//var result: [Int] = Array(repeating: 999999, count: V+1)
//var index: Int = 0
//func bfs(_ node: Int) {
//    result[node] = 0
//    var queue: [Int] = [node]
//    while index < queue.count {
//        let popValue: Int = queue[index]
//        index += 1
//        if visited[popValue] == false {
//            visited[popValue] = true
//            for i in graph[popValue] {
//                result[i] = min(result[i], result[popValue] + weight[popValue]![i]!)
//            }
//            queue.append(contentsOf: graph[popValue])
//        }
//    }
//}
//
//bfs(startNode)
//
//for i in 1..<result.count {
//    if result[i] == 999999 {
//        print("INF")
//    } else {
//        print(result[i])
//    }
//}
//

// MARK: - 백준 Gold5 14502번 연구소

//let NM: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = NM[0]
//let m: Int = NM[1]
//var result: Int = 0
//
//var graph: [[Int]] = []
//for _ in 0..<n {
//    graph.append(readLine()!.split(separator: " ").map{Int($0)!})
//}
//var zeroIndex: [(Int, Int)] = []
//var virusIndex: [(Int, Int)] = []
//
//for i in 0..<n {
//    for j in 0..<m {
//        if graph[i][j] == 0 {
//            zeroIndex.append((i, j))
//        }
//
//        if graph[i][j] == 2 {
//            virusIndex.append((i, j))
//        }
//    }
//}
//
//var trackingVisited: [Bool] = Array(repeating: false, count: zeroIndex.count)
//var trackingCollection: [[Int]] = []
//var trackingArr: [Int] = []
//
//func tracking(_ depth: Int, _ start: Int) {
//    if depth == 3 {
//        trackingCollection.append(trackingArr)
//        return
//    }
//
//    for i in start..<zeroIndex.count {
//        if trackingVisited[i] == false {
//            trackingVisited[i] = true
//            trackingArr.append(i)
//            tracking(depth+1, i+1)
//            trackingArr.removeLast()
//            trackingVisited[i] = false
//        }
//    }
//
//}
//
//tracking(0, 0)
//
//func checkSafeArea(_ inputGraph: [[Int]]) -> Int {
//    var zeroCount: Int = 0
//    for i in 0..<inputGraph.count {
//        for j in 0..<inputGraph[i].count {
//            if inputGraph[i][j] == 0 { zeroCount += 1 }
//        }
//    }
//    return zeroCount
//}
//
//
//func bfs(_ inputGraph: [[Int]], _ inputVirusIndex: [(Int, Int)]) -> [[Int]] {
//    var graph: [[Int]] = inputGraph
//    let dx: [Int] = [1, -1, 0, 0]
//    let dy: [Int] = [0, 0, 1, -1]
//    var queue: [(Int, Int)] = inputVirusIndex
//    var index: Int = 0
//    var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: graph[0].count), count: graph.count)
//
//    while index < queue.count {
//        let popValue: (Int, Int) = queue[index]
//        index += 1
//
//        if visited[popValue.0][popValue.1] == false {
//            visited[popValue.0][popValue.1] = true
//            for i in 0...3 {
//                let nx: Int = popValue.0 + dx[i]
//                let ny: Int = popValue.1 + dy[i]
//
//                if nx>=0 && nx<graph.count && ny>=0 && ny<graph[0].count {
//                    if graph[nx][ny] == 0 {
//                        graph[nx][ny] = 2
//                        queue.append((nx, ny))
//                    }
//                }
//            }
//        }
//
//
//    }
//
//    return graph
//}
//
//
//for node in trackingCollection {
//    var copyGraph: [[Int]] = graph
//    for i in 0..<node.count {
//        copyGraph[zeroIndex[node[i]].0][zeroIndex[node[i]].1] = 1
//    }
//    copyGraph = bfs(copyGraph, virusIndex)
//    result = max(result, checkSafeArea(copyGraph))
//}
//
//
//print(result)


// MARK: - 백준 Gold5 12865번 평범한 배낭
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let N: Int = read[0]
//let K: Int = read[1]
//var arr: [[Int]] = []
//for _ in 0..<N {
//    arr.append(readLine()!.split(separator: " ").map{Int($0)!})
//}
//
//var bagVisited: [Bool] = Array(repeating: false, count: arr.count)
//var bagArr: [Int] = []
//var sum: Int = 0
//var result: Int = 0
//func tracking(_ start: Int) {
//    if sum > 0 && sum <= K{
//        var weight: Int = 0
//        for i in bagArr {
//            weight += arr[i][1]
//        }
//        result = max(result, weight)
//    }
//    for i in start..<bagVisited.count {
//        if bagVisited[i] == false {
//            bagVisited[i] = true
//            sum += arr[i][0]
//            bagArr.append(i)
//            tracking(i+1)
//            bagArr.removeLast()
//            sum -= arr[i][0]
//            bagVisited[i] = false
//
//        }
//    }
//}
//
//tracking(0)
//print(result)

//
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let N: Int = read[0]
//let K: Int = read[1]
//var arr: [Int] = Array(repeating: 0, count: K+1)
//for _ in 0..<N {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    let w: Int = temp[0]
//    let v: Int = temp[1]
//    if w > K { continue }
//    for j in stride(from: K, to: 0, by: -1) {
//        if j + w <= K && arr[j] != 0 {
//            arr[j+w] = max(arr[j+w], arr[j] + v)
//        }
//    }
//    arr[w] = max(arr[w], v)
//}
//
//print(arr.max()!)

// MARK: - 백준 Gold5 9251번

//let firstString: [String] = readLine()!.map{String($0)}
//let secondString: [String] = readLine()!.map{String($0)}
//
//var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: secondString.count+1), count: firstString.count+1)
//
//for i in 1...firstString.count {
//    for j in 1...secondString.count {
//
//        if firstString[i-1] == secondString[j-1] {
//
//            arr[i][j] = arr[i-1][j-1] + 1
//
//        } else {
//
//            arr[i][j] = max(arr[i][j-1], arr[i-1][j])
//        }
//    }
//}
//
//print(arr[firstString.count][secondString.count])

// MARK: - 백준 Gold5 1759번 암호 만들기
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let target: Int = read[0]
//let count: Int = read[1]
//
//print(target, count)
//
//var inputAlphabet: [String] = readLine()!.split(separator: " ").map{String($0)}.sorted(by: <)
//
//var arr: [String] = []
//var visited: [Bool] = Array(repeating: false, count: count)
//var strCollections: [[String]] = []
//
//
//var aeiou: Int = 0
//var others: Int = 0
//
//
//func tracking(_ depth: Int, _ startIndex: Int) {
//    if depth == target && aeiou >= 1 && others >= 2{
//        strCollections.append(arr)
//    }
//
//    for i in startIndex..<count {
//        if visited[i] == false {
//            visited[i] = true
//
//            if ["a", "e", "i", "o", "u"].contains(inputAlphabet[i]) { aeiou += 1 }
//            else { others += 1 }
//
//            arr.append(inputAlphabet[i])
//            tracking(depth+1, i+1)
//
//            if ["a", "e", "i", "o", "u"].contains(arr.last!) { aeiou -= 1 }
//            else { others -= 1 }
//
//            arr.removeLast()
//            visited[i] = false
//        }
//    }
//}
//
//tracking(0, 0)
//
//strCollections.forEach {
//    print($0.joined(separator: ""))
//}
//

// MARK: - 백준 Gold5 10026번 적록색약
//let n: Int = Int(readLine()!)!
//var baseArr: [[String]] = []
//var a: Int = 0
//var b: Int = 0
//for _ in 0..<n {
//    baseArr.append(readLine()!.map{String($0)})
//}
//var newArr: [[String]] = baseArr
//
//for i in 0..<n {
//    for j in 0..<n {
//        if newArr[i][j] == "G" { newArr[i][j] = "R" }
//    }
//}
//
//let dx: [Int] = [1, -1, 0, 0]
//let dy: [Int] = [0, 0, 1, -1]
//
//func DFS(_ n: Int, _ x: Int, _ y: Int, _ inputArr: [[String]], _ inputVisited: inout [[Bool]]) {
//    if inputVisited[x][y] == false {
//        inputVisited[x][y] = true
//
//        for i in 0..<4 {
//            let nx: Int = x + dx[i]
//            let ny: Int = y + dy[i]
//
//            if nx>=0 && nx<n && ny>=0 && ny<n {
//                if inputArr[x][y] == inputArr[nx][ny] {
//                    DFS(n, nx, ny, inputArr, &inputVisited)
//                }
//            }
//
//        }
//    }
//}
//
//var visitedA: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: n)
//var visitedB: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: n)
//for i in 0..<n {
//    for j in 0..<n {
//        if visitedA[i][j] == false {
//            a += 1
//            DFS(n, i, j, baseArr, &visitedA)
//        }
//
//        if visitedB[i][j] == false {
//            b += 1
//            DFS(n, i, j, newArr, &visitedB)
//        }
//    }
//}
//
//print(a, b)


// MARK: - 백준 Gold5 7569번 토마토

//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let m: Int = read[0]
//let n: Int = read[1]
//let h: Int = read[2]
//var box: [[[Int]]] = []
//
//for _ in 0..<h {
//    var temp: [[Int]] = []
//    for _ in 0..<n {
//        temp.append(readLine()!.split(separator: " ").map{Int($0)!})
//    }
//    box.append(temp)
//}
//
//var queue: [[Int]] = []
//var index: Int = 0
//
//for i in 0..<h {
//    for j in 0..<n {
//        for k in 0..<m {
//            if box[i][j][k] == 1 {
//                queue.append([i, j, k])
//            }
//        }
//    }
//}
//
//let dx: [Int] = [1, -1, 0, 0, 0, 0]
//let dy: [Int] = [0, 0, 1, -1, 0, 0]
//let dz: [Int] = [0, 0, 0, 0, 1, -1]
//
//
//while index<queue.count {
//    let popValue: [Int] = queue[index]
//    index += 1
//    for i in 0..<dz.count {
//        let nz: Int = popValue[0] + dz[i]
//        let nx: Int = popValue[1] + dx[i]
//        let ny: Int = popValue[2] + dy[i]
//
//        if nz>=0 && nz<h && nx>=0 && nx<n && ny>=0 && ny<m {
//            if box[nz][nx][ny] == 0 {
//                queue.append([nz, nx, ny])
//                box[nz][nx][ny] = box[popValue[0]][popValue[1]][popValue[2]] + 1
//            }
//        }
//    }
//}
//
//
//var check: Bool = true
//var result: Int = 0
//for i in 0..<h {
//    for j in 0..<n {
//        for k in 0..<m {
//            if box[i][j][k] == 0 {
//                check = false
//
//            }
//            result = max(result, box[i][j][k])
//        }
//    }
//}
//
//
//if check {
//    print(result - 1)
//} else {
//    print(-1)
//}
//

// MARK: - 백준 Gold5 2293번 동전1

//var read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var n: Int = read[0]
//var k: Int = read[1]
//var coin: [Int] = []
//for _ in 0..<n {
//    coin.append(Int(readLine()!)!)
//}
//
//var dp: [Int] = Array(repeating: 0, count: k+1)
//dp[0] = 1
//
//for c in coin {
//    for j in 1...k {
//        if c <= j {
//            dp[j] += dp[j-c]
//            if dp[j] > Int(pow(2.0, 31.0)){ dp[j] = 0 }
//        }
//    }
//}
//
//print(dp[k])

// MARK: - 백준 Gold5 15686번 치킨 배달
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let m: Int = read[1]
//var board: [[Int]] = []
//
//for _ in 0..<n {
//    board.append(readLine()!.split(separator: " ").map{Int($0)!})
//}
//var houses: [(Int, Int)] = []
//var chickens: [(Int, Int)] = []
//
//for i in 0..<n {
//    for j in 0..<n {
//        if board[i][j] == 1 { houses.append((i, j)) }
//        if board[i][j] == 2 { chickens.append((i, j)) }
//    }
//}
//
//var chickensCollection: [[Int]] = []
//var visited: [Bool] = Array(repeating: false, count: chickens.count)
//
//var tempArr: [Int] = []
//func tracking(_ depth: Int, _ startIndex: Int) {
//    if depth >= 1 && tempArr.count <= m {
//        chickensCollection.append(tempArr)
//    }
//
//    for i in startIndex..<chickens.count {
//        if visited[i] == false {
//            visited[i] = true
//            tempArr.append(i)
//            tracking(depth + 1, i+1)
//            tempArr.removeLast()
//            visited[i] = false
//        }
//    }
//}
//
//tracking(0, 0)
//
//var result: Int = Int.max
//
//for chicken in chickensCollection {
//
//    var tempSum: Int = 0
//    for house in houses {
//        var temp: Int = Int.max
//        for i in chicken {
//            temp = min(temp, abs(house.0 - chickens[i].0) + abs(house.1 - chickens[i].1))
//        }
//        tempSum += temp
//    }
//
//    result = min(result, tempSum)
//}
//
//print(result)

// MARK: - 백준 Gold5 14503번 로봇청소기

//let firstRead: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = firstRead[0]
//let m: Int = firstRead[1]
//
//let secondRead: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let r: Int = secondRead[0]
//let c: Int = secondRead[1]
//let d: Int = secondRead[2]
//
//var arr: [[Int]] = []
//for _ in 0..<n {
//    arr.append(readLine()!.split(separator: " ").map{Int($0)!})
//}
//
//let dx: [Int] = [-1, 0, 1, 0]
//let dy: [Int] = [0, 1, 0, -1]
//
//var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: m), count: n)
//var result: Int = 1
//
//var currentR: Int = r
//var currentC: Int = c
//var currentD: Int = d
//var rotateCount: Int = 0
//
//visited[r][c] = true
//
//while true {
//    currentD -= 1
//    if currentD == -1 { currentD = 3 }
//
//    var nx: Int = currentR + dx[currentD]
//    var ny: Int = currentC + dy[currentD]
//
//    if visited[nx][ny] == false && arr[nx][ny] != 1 {
//        visited[nx][ny] = true
//        currentR = nx
//        currentC = ny
//        result += 1
//        rotateCount = 0
//        continue
//    } else {
//        rotateCount += 1
//    }
//
//
//    if rotateCount == 4 {
//        rotateCount = 0
//        nx = currentR - dx[currentD]
//        ny = currentC - dy[currentD]
//
//        if arr[nx][ny] != 1 {
//            currentR = nx
//            currentC = ny
//        } else {
//            break
//        }
//    }
//}
//
//print(result)
//

// MARK: - 백준 Gold5 3190번 뱀
//let n: Int = Int(readLine()!)!
//var board: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)
//for _ in 0..<Int(readLine()!)! {
//    let xy: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    board[xy[0]-1][xy[1]-1] = 1
//}
//
//var changeDirect: [Int:String] = [:]
//for _ in 0..<Int(readLine()!)! {
//    let temp: [String] = readLine()!.split(separator: " ").map{String($0)}
//    changeDirect[Int(temp[0])!] = temp[1]
//}
//
//var currentDirect: Int = 0
//var index: Int = 0
//
//var dx: [Int] = [0, 1, 0, -1]
//var dy: [Int] = [1, 0, -1, 0]
//
//func checkDirect(_ direct: inout Int) {
//    if direct == -1 { direct = 3 }
//    if direct == 4 { direct = 0 }
//}
//
//func checkBounds(_ n: Int, _ x: Int, _ y: Int) -> Bool {
//    if x>=0 && x<n && y>=0 && y<n {
//        return true
//    }
//    return false
//}
//func checkSnakeBody(_ inputArr: [[Int]], _ head: [Int]) -> Bool {
//    let body: [[Int]] = Array(inputArr[0..<inputArr.count-1])
//    if body.contains(head) { return false }
//    return true
//}
//
//var currentXY: [Int] = [0, 0]
//var result: Int = 0
//var snake: [[Int]] = [[0, 0]]
//while true {
//
//    index += 1
//    if currentDirect == 0 { currentXY[1] += 1 }
//    if currentDirect == 1 { currentXY[0] += 1 }
//    if currentDirect == 2 { currentXY[1] -= 1 }
//    if currentDirect == 3 { currentXY[0] -= 1 }
//
//    if changeDirect[index] != nil {
//        if changeDirect[index] == "D" { currentDirect += 1 }
//        else if changeDirect[index] == "L" { currentDirect -= 1 }
//
//        checkDirect(&currentDirect)
//    }
//
//    result += 1
//
//    if !checkBounds(n, currentXY[0], currentXY[1]) { break }
//    if !checkSnakeBody(snake, currentXY) { break }
//
//    snake.append(currentXY)
//
//    if board[currentXY[0]][currentXY[1]] == 0 {
//        snake.removeFirst()
//    } else {
//        board[currentXY[0]][currentXY[1]] = 0
//    }
//
//}
//
//print(result)

// MARK: - 백준 Gold5 5430번 AC

//let testCases: Int = Int(readLine()!)!
//for _ in 0..<testCases {
//    let RD: [String] = readLine()!.map{String($0)}
//    let inputLength: Int = Int(readLine()!)!
//    var inputString: String = readLine()!
//    inputString.removeFirst()
//    inputString.removeLast()
//    let inputArr: [Int] = inputString.split(separator: ",").map{Int($0)!}
//
//    var checkError: Bool = false
//    var checkReversed: Bool = false
//
//    var left: Int = 0
//    var right: Int = inputLength - 1
//
//
//    for text in RD {
//        if text == "R" {
//            checkReversed.toggle()
//        } else {
//            if left > right {
//                checkError.toggle()
//                break
//            }
//
//            if checkReversed == true { right -= 1 }
//            else { left += 1 }
//        }
//    }
//
//    if checkError { print("error") }
//    else if left > right { print("[]") }
//    else {
//        if checkReversed {
//            print("[\(inputArr[left...right].reversed().map{String($0)}.joined(separator: ","))]")
//        } else {
//            print("[\(inputArr[left...right].map{String($0)}.joined(separator: ","))]")
//        }
//    }
//}

// MARK: - 백준 Gold5 1107번 리모컨

//let targetNum: Int = Int(readLine()!)!
//let removeButtonCount: Int = Int(readLine()!)!
//var removeButton: [Int] = []
//
//if removeButtonCount == 0 {
//    removeButton = []
//} else {
//    removeButton = readLine()!.split(separator: " ").map{Int($0)!}
//}
//
//var minValue: Int = abs(targetNum - 100)
//for i in 0...1000000 {
//    let len: Int = check(i)
//    if len > 0 {
//        let clickedCount: Int = abs(targetNum - i)
//        minValue = min(minValue, len + clickedCount)
//    }
//}
//
//print(minValue)
//
//func check(_ inputNum: Int) -> Int {
//    var n: Int = inputNum
//    if n == 0 {
//        if removeButton.contains(0) {
//            return 0
//        } else {
//            return 1
//        }
//    }
//    var len: Int = 0
//    while n>0 {
//        if removeButton.contains(n%10) { return 0 }
//        n /= 10
//        len += 1
//    }
//    return len
//}

// MARK: - 백준 Gold5 2133번 타일 채우기
//let n: Int = Int(readLine()!)!
//var dp: [Int] = Array(repeating: 0, count: 31)
//dp[0] = 1
//dp[2] = 3
//for i in stride(from: 4, through: n, by: 1) {
//    dp[i] = dp[i-2] * 3
//    for j in stride(from: 4, through: i, by: 2) {
//        dp[i] += dp[i-j] * 2
//    }
//}
//print(dp[n])

// MARK: - 백준 1916번 최소비용 구하기

//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let k: Int = read[1]
//
//var result: Int = 0
//
//var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: 201), count: 201)
//for i in 0...200 {
//    dp[i][0] = 1
//}
//
//for i in 1...200 {
//    for j in 1...200 {
//        dp[i][j] = (dp[i-1][j] + dp[i][j-1]) % 1000000000
//    }
//}
//
//print(dp[k][n])

// MARK: - 백준 14891번 톱니바퀴

//var arr: [[Int]] = []
//for _ in 0..<4 {
//    arr.append(readLine()!.map{Int(String($0))!})
//}
//
//let rotateCount: Int = Int(readLine()!)!
//var rotates: [[Int]] = []
//for _ in 0..<rotateCount {
//    rotates.append(readLine()!.split(separator: " ").map{Int($0)!})
//}
//
//var change: Set<[Int]> = []
//
//for rotate in rotates {
//    var rota: [Int] = rotate
//    check(rota[0], &rota[1])
//    change.forEach({rotation($0[0], $0[1])})
//    change.removeAll()
//
//}
//
//printAnswer()
//
//func check(_ index: Int, _ start: inout Int) {
//    let first: Int = start
//    change.insert([index-1, start])
//    for i in index-1..<3 {
//        if arr[i][2] != arr[i+1][6] {
//            change.insert([i, start])
//            start = -start
//            change.insert([i+1, start])
//        } else { break }
//    }
//
//    start = first
//    for i in (1..<index).reversed() {
//        if arr[i][6] != arr[i-1][2] {
//            change.insert([i, start])
//            start = -start
//            change.insert([i-1, start])
//        } else { break }
//    }
//
//}
//
//
//func rotation(_ index: Int, _ direct: Int) {
//    if direct == 1 {
//        let last = arr[index].removeLast()
//        arr[index].insert(last, at: 0)
//    } else {
//        let first = arr[index].removeFirst()
//        arr[index].append(first)
//    }
//}
//
//func printAnswer() {
//    var sum = 0
//    for i in 0..<4 {
//        if arr[i][0] == 1 {
//            if i == 0 {
//                sum += 1
//            }else if i == 3 {
//                sum += 8
//            }else {
//                sum += 2*i
//            }
//        }
//    }
//    print(sum)
//
//}

// MARK: - 백준 Gold5 2631번 줄세우기

//let n: Int = Int(readLine()!)!
//var arr: [Int] = []
//for _ in 0..<n {
//    arr.append(Int(readLine()!)!)
//}
//
//var dp: [Int] = Array(repeating: 1, count: n)
//
//for i in 0..<n {
//    for j in 0..<i {
//        if arr[i] > arr[j] {
//            dp[i] = max(dp[i], dp[j] + 1)
//        }
//    }
//}
//
//print(n - dp.max()!)

// MARK: - 백준 Gold5 2110번 공유기 설치
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let c: Int = read[1]
//
//var board: [Int] = []
//for _ in 0..<n {
//    board.append(Int(readLine()!)!)
//}
//board.sort()
//
//var minDistance: Int = 1
//var maxDistance: Int = board.last! - board.first!
//var result: Int = 1
//
//
//
//func check(_ d: Int) -> Bool {
//    var count: Int = 1
//    var k: Int = 0
//
//    for i in 1..<board.count {
//        if board[i] - board[k] >= d {
//            count += 1
//            k = i
//        }
//    }
//
//    return count>=c
//}
//
//while minDistance<=maxDistance {
//    let mid: Int = (minDistance + maxDistance) / 2
//    if check(mid) {
//        result = max(result, mid)
//        minDistance = mid + 1
//    } else {
//        maxDistance = mid - 1
//    }
//}
//
//print(result)


// MARK: - 백준 Gold5 2229번 조 짜기
//let n: Int = Int(readLine()!)!
//var score: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//var dp: [Int] = Array(repeating: 0, count: n+1)
//
//for i in 1...n {
//    var maxValue: Int = -1
//    var minValue: Int = 10001
//
//    for j in stride(from: i, through: 1, by: -1) {
//        maxValue = max(score[j-1], maxValue)
//        minValue = min(score[j-1], minValue)
//
//        let temp: Int = maxValue - minValue
//
//        dp[i] = max(dp[j-1] + temp, dp[i])
//    }
//}
//
//print(dp[n])

// MARK: - 백준 Gold5 13164번 행복 유치원
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let n: Int = read[0]
//let k: Int = read[1]
//
//let child: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//
//var arr: [Int] = []
//for i in 0..<n-1 {
//    arr.append(child[i+1] - child[i])
//}
//
//arr.sort()
//
//var result: Int = 0
//for i in 0..<n-k {
//    result += arr[i]
//}
//
//print(result)

// MARK: - 백준 14051번 퇴사

//let n: Int = Int(readLine()!)!
//var arrT: [Int] = Array(repeating: 0, count: n+1)
//var arrP: [Int] = Array(repeating: 0, count: n+1)
//var dp: [Int] = Array(repeating: 0, count: 1001)
//
//for i in 1...n {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    arrT[i] = temp[0]
//    arrP[i] = temp[1]
//    dp[i] = temp[1]
//}
//
//for i in stride(from: n, through: 1, by: -1) {
//    if arrT[i]+i <= n+1 {
//        dp[i] = max(dp[i+1], dp[i+arrT[i]] + arrP[i])
//    } else {
//        dp[i] = dp[i+1]
//    }
//    print(dp)
//
//}
//
//print(dp.max()!)

// MARK: - 백준 1463번 1로 만들기
//let n: Int = Int(readLine()!)!
//var dp: [Int] = Array(repeating: 0, count: n+1)
//
//for i in 1...n {
//    if i == 1 {
//        dp[i] = 0
//        continue
//    }
//
//    dp[i] = dp[i-1] + 1
//
//    if i%2 == 0 {
//        dp[i] = min(dp[i], dp[i/2] + 1)
//    }
//    if i%3 == 0 {
//        dp[i] = min(dp[i], dp[i/3]+1)
//    }
//}
//
//print(dp.last!)
//
//

// MARK: - 백준 Silver1 2468번 안전 영역

//let n: Int = Int(readLine()!)!
//var board: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)
//var maxValue: Int = 0
//for i in 0..<n {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    for j in 0..<temp.count {
//        board[i][j] = temp[j]
//        maxValue = max(maxValue, temp[j])
//    }
//}
//
//var result: Int = 1
//
//let dx: [Int] = [1, -1, 0, 0]
//let dy: [Int] = [0, 0, 1, -1]
//
//
//func dfs(_ inputHeight: Int, _ x: Int, _ y: Int, _ visited: inout [[Bool]]) {
//    if visited[x][y] == false {
//        visited[x][y] = true
//        for i in 0..<4 {
//            let nx: Int = x + dx[i]
//            let ny: Int = y + dy[i]
//            if nx>=0 && nx<n && ny>=0 && ny<n && board[nx][ny] > inputHeight {
//                dfs(inputHeight, nx, ny, &visited)
//            }
//        }
//    }
//
//}
//
//
//for height in 1...maxValue {
//    var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: n)
//    var count: Int = 0
//    for i in 0..<n {
//        for j in 0..<n {
//            if board[i][j] > height && visited[i][j] == false{
//                dfs(height, i, j, &visited)
//                count += 1
//            }
//        }
//    }
//    result = max(result, count)
//}
//
//
//print(result)

// MARK: - 백준 Silver1 11403번 경로 찾기
//let n: Int = Int(readLine()!)!
//var graph: [[Int]] = Array(repeating: [Int](), count: n)
//for i in 0..<n {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    for j in 0..<temp.count {
//        if temp[j] == 1 {
//            graph[i].append(j)
//        }
//    }
//}
//
//var result: [[Int]] = []
//
//for i in 0..<n {
//    var arr: [Int] = Array(repeating: 0, count: n)
//    var queue: [Int] = graph[i]
//    var visited: [Bool] = Array(repeating: false, count: n)
//    while !queue.isEmpty {
//        let popValue: Int = queue.removeFirst()
//        if visited[popValue] == false {
//            visited[popValue] = true
//            arr[popValue] = 1
//            queue.append(contentsOf: graph[popValue])
//        }
//    }
//    result.append(arr)
//}
//
//for arr in result {
//    print(arr.map{String($0)}.joined(separator: " "))
//}

//let n: Int = Int(readLine()!)!
//var graph: [[Int]] = []
//for _ in 0..<n {
//    graph.append(readLine()!.split(separator: " ").map{
//        $0 == "0" ? 999999999 : 0
//    })
//}
//
//for k in 0..<n {
//    for i in 0..<n {
//        for j in 0..<n {
//            graph[i][j] = min(graph[i][j], graph[i][k] + graph[k][j])
//        }
//    }
//}
//
//for arr in graph {
//    print(arr.map{ $0 >= 999999999 ? 0 : 1}.map{String($0)}.joined(separator: " "))
//}

// MARK: - 백준 Silver1 2583번 영역 구하기
//let read: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//let m: Int = read[0]
//let n: Int = read[1]
//let rec: Int = read[2]
//
//var board: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: m)
//
//for _ in 0..<rec {
//    let temp: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    let x1: Int = temp[0]
//    let y1: Int = temp[1]
//    let x2: Int = temp[2]-1
//    let y2: Int = temp[3]-1
//
//    for x in x1...x2 {
//        for y in y1...y2 {
//            board[y][x] = 1
//        }
//    }
//}
//let dx: [Int] = [1, -1, 0, 0]
//let dy: [Int] = [0, 0, 1, -1]
//
//func bfs(_ x: Int, _ y: Int) -> Int {
//    var count: Int = 0
//    var queue: [(Int, Int)] = [(y, x)]
//
//    while !queue.isEmpty {
//        let popValue: (Int, Int) = queue.removeFirst()
//        if board[popValue.0][popValue.1] == 0 {
//            board[popValue.0][popValue.1] = 1
//            for i in 0..<4 {
//                let nx: Int = popValue.1 + dx[i]
//                let ny: Int = popValue.0 + dy[i]
//
//                if nx>=0 && nx<n && ny>=0 && ny<m && board[ny][nx] == 0 {
//                    queue.append((ny, nx))
//                }
//            }
//            count += 1
//        }
//
//    }
//
//    return count
//}
//
//var result: [Int] = []
//
//for i in 0..<m {
//    for j in 0..<n {
//        if board[i][j] == 0 {
//            result.append(bfs(j, i))
//        }
//
//    }
//}
//
//print(result.count)
//print(result.sorted().map{String($0)}.joined(separator: " "))


//  MARK: - 백준 Silver1 1309번 동물원
//let n = Int(readLine()!)!
//let mod = 9901
//
//var dp = Array(repeating: [0,0,0], count: n)
//dp[0] = [1,1,1]
//
//for i in 1..<n {
//    dp[i][0] = (dp[i-1][1] + dp[i-1][2]) % mod
//    dp[i][1] = (dp[i-1][0] + dp[i-1][2]) % mod
//    dp[i][2] = (dp[i-1][0] + dp[i-1][1] + dp[i-1][2]) % mod
//
//}
//
//print(dp[n-1].reduce(0,+) % mod)


// MARK: - 백준 Silver1 9205번 맥주 마시면서 걸어가기
//let textCases: Int = Int(readLine()!)!
//for _ in 0..<textCases {
//    let marketCount: Int = Int(readLine()!)!
//    let user: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//    var markets: [[Int]] = []
//    for _ in 0..<marketCount {
//        markets.append(readLine()!.split(separator: " ").map{Int($0)!})
//    }
//    let festival: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
//
//    var tempGraph: [[Int]] = []
//    tempGraph.append(user)
//    tempGraph.append(contentsOf: markets)
//    tempGraph.append(festival)
//
//    var graph: [[Bool]] = Array(repeating: Array(repeating: false, count: tempGraph.count), count: tempGraph.count)
//
//    for i in 0..<tempGraph.count {
//        for j in 0..<tempGraph.count {
//            if abs(tempGraph[i][0] - tempGraph[j][0]) + abs(tempGraph[i][1] - tempGraph[j][1]) <= 1000 {
//                graph[i][j] = true
//            }
//        }
//    }
//
//    var result: [Bool] = Array(repeating: false, count: graph.count)
//    result[0] = true
//
//    var stack: [Int] = [0]
//
//    while !stack.isEmpty {
//        let popValue: Int = stack.removeLast()
//        for i in 0..<graph[popValue].count {
//            if graph[popValue][i] == true {
//                if result[i] == false {
//                    result[i] = true
//                    stack.append(i)
//                }
//            }
//        }
//
//    }
//
//
//
//    if result[tempGraph.count - 1] { print("happy")}
//    else { print("sad") }
//
//
//}

// MARK: - 백준 Silver1 12852번 1로 만들기2
var n: Int = Int(readLine()!)!
var dp: [(Int, Int)] = Array(repeating: (Int.max, 0), count: n+1)
dp[0] = (0, 0)

for i in 1...n {
    dp[i] = (dp[i-1].0 + 1, i-1)
    
    if i%2 == 0 && i>=2 {
        if dp[i].0 > dp[i/2].0 + 1 {
            dp[i] = (dp[i/2].0+1, i/2)
        }
    }
    
    if i%3 == 0 && i>=3 {
        if dp[i].0 > dp[i/3].0 + 1 {
            dp[i] = (dp[i/3].0 + 1, i/3)
        }
    }
}

var result: [Int] = []
print(dp[n].0 - 1)

while n>=1 {
    result.append(n)
    n = dp[n].1
}

print(result.map{String($0)}.joined(separator: " "))

