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

func solution() {
    let n = Int(readLine()!)!
    var arr: [Int] = []
    var resultArr: [Int] = [0, 1, 2, 4]
    
    for i in 4..<12 {
        resultArr.append(resultArr[i-3] + resultArr[i-2] + resultArr[i-1])
    }

    for i in 0..<n {
        print(resultArr[Int(readLine()!)!])
    }
}

solution()
