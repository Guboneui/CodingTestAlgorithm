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
let n: Int = Int(readLine()!)!
for i in 1...n {
    var reverse: String = readLine()!.split(separator: " ").map{String($0)}.reversed().joined(separator: " ")
    print("Case #\(i): \(reverse)")
}
