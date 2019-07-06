//
//  main.swift
//  ArrayExample
//
//  Created by 李小龙 on 2018/12/24.
//  Copyright © 2018 李小龙. All rights reserved.
//

import Foundation

print("Hello, World!")

// 声明一个不可修改的数组
let nums1 = [1, 2, 3]
let nums2 = [Int](repeating: 0, count: 5)

// 声明一个可以修改的数组
var nums3 = [3, 1, 2]

// 增加一个元素
nums3.append(4)

// 对原数组进行升序排序
nums3.sort()
// 对原数组进行降序排序
nums3.sort(by: >)
// 将原数组除了最后一个以外的所有元素赋值给另一个数组
let anotherNums = Array(nums3[0 ..< nums3.count - 1])

// 用数组实现栈
class Stack {
    var stack: [AnyObject]
    var isEmpty: Bool { return stack.isEmpty }
    var peek: AnyObject? {return stack.last}
    
    init() {
        stack = [AnyObject]()
    }
    
    func push(object: AnyObject) {
        stack.append(object)
    }
    
    func pop() -> AnyObject? {
        if (!isEmpty) {
            return stack.removeLast()
        }else{
            return nil
        }
    }
}



let primNums : Set = [3, 5, 7, 11, 13]
let oddNums: Set = [1, 3, 5, 7, 9]


//交集，并集，差集
  let primeAndOddNum = primNums.intersection(oddNums)
let primeOrOddNum = primNums.union(oddNums)
let oddNotPrimNum = oddNums.subtracting(primNums)

// 用字典和高阶函数计算字符串中每个字符的出现频率，结果 [“h”:1, “e”:1, “l”:2, “o”:1]

//Dictionary("hello".map {($0, 1)}, uniquingKeyWith: +)

//给一个整型数组和一个目标值，判断数组中是否有两个数字之和等于目标值
func twoSum(nums: [Int], _ target: Int) -> Bool {
    var set = Set<Int>()
    
    for num in nums {
        if set.contains(target - num) {
            return true
        }
        
        set.insert(num)
    }
    
    return false
}

// 给定一个整型数组中有且仅有两个数字之和等于目标值，求两个数字在数组中的序号
func twoSum(nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int: Int]()
    
    for (i, num) in nums.enumerated() {
        if let lastIndex = dict[target - num] {
            return [lastIndex ,i]
        }else{
            dict[num] = i
        }
    }
    
    fatalError("No vail output")
}









