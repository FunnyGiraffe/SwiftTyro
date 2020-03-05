//
//  main.swift
//  SwiftTyro
//
//  Created by giraffe on 2020/3/2.
//  Copyright © 2020 giraffe. All rights reserved.
//

/**
    Objective-C 基础框架：‘Foundation',在Objective-C开发项目中可以不显式导入
 */
import Foundation

NSLog("%@", "Hello,Apple!")


/**
    Swift基础框架：‘Swift‘，在Swift开发项目中可以不显式导入
 */
import Swift
Swift.print("Hello, Apple!")


/**
    变量声明
    var 变量名: 数据类型 = 初始值
 */
var name1: String = "Catalina"
var age1: Int = 20
print(name1, age1)
Swift.print("Name is \(name1). Age is \(age1).")

//基础数据类型
var name: String = "World of Warcraft"
var age: Int = 15
var minor: Bool = true
var height: Double = 180
var weight: Float = 75
var char: Character = "A"
var hobbies: Array = ["LR","XD","QS"]
var address: Dictionary = ["Area": "范沃森"]

/**
    常量声明：
    使用 let 关键字修饰
    常量值不可修改
    常量可以在定义时不赋值，之后再赋值，但赋值后不可修改
 */

/**
    位运算符，包括：
    & | ^ ~ << >> >>>
 */
/* Swift 左移枚举 */
struct Direction: OptionSet {
    let rawValue: Int
    
    static let Left = Direction(rawValue: 1 << 1)
    static let Right = Direction(rawValue: 1 << 2)
    static let Up = Direction(rawValue: 1 << 3)
    static let Down = Direction(rawValue: 1 << 4)
}

let direction: Direction = [.Left, .Up]
print(direction.contains(.Left))
print(direction.contains(.Right))
print(direction.contains(.Up))
print(direction.contains(.Down))


/**
    赋值运算符：包括 = ， += ，-=，不包括 ++ --
 */

/**
    区间运算符：x...y 即 [x, y];  x...<y即[x, y)
 */
for i in 1...5{
    Swift.print(i)
}


/**
    条件语句：if ---- else if ---- else
 */
let score = 70
if score < 60 {
    print("不及格")
} else if (score >= 60 && score <= 80){
    print("良好")
} else {
    print("优秀")
}

/**
    switch - case - break ß语句：
 */

let index = 10
switch index {
case 100:
    print("Index 的值为 100")
    break //swift中默认 break默认隐式添加到case语句末尾
case 10, 15:
    print("Index 的值为 10 或 15")
    fallthrough
case 5: do {
    print("Index 的值为5")
    } //大语句块，使用 { /** code */} 包裹
    break
default:
    print("默认case块")
    break
}


/**
    Exp1 ? Exp2 : Exp3
    如果Exp1为真，则执行Exp2
    否则执行Exp3
 */
var age2 = 20
var isAdult = age >= 18 ? "成年人" : "未成年人"
print(isAdult)

/**
    2020/3/5
    字符串的方法汇总：长度、拼接、查找、替换、截取、分割、获取指定位置的字符、去掉首位空白符、格式化、大小写转换等方法
 */
var text = "Hello"
//获取字符串长度
let length: Int = text.count
//判断字符串是否为空
let empty: Bool = text.isEmpty
//字符串拼接
let helloSwift = text + ", Apple"
//字符串拼接，值改变
text += ", Swift"
text.append(", world")
//判断字符串是否相等
let isEqual: Bool = text == "Hello"
//字符串强转整型
Int("10")
//判断字符串是否包含前缀
text.hasPrefix("He")
//判断字符串是否包含后缀
text.hasSuffix("lo")
//字符串遍历
for i in text {
    print(i)
}



//判断一个数是否为质数
var judgeNum: Int = 89
var mod: Int
var flag: Bool = false
for i in 1...judgeNum {
    mod = judgeNum % i
    if (mod == 0) {
        print("-----> \(judgeNum) 可以被平均分成 \(i) 份，每一份有 \(judgeNum/i)个")
        if (i != 1 && i != judgeNum) {
            flag = true
        }
        continue
    }
}
if (!flag){
    print("\(judgeNum) 除了 1 和 它本身外，不能被其他数整除，所以 \(judgeNum) 是一个质数")
} else {
    print("\(judgeNum) 不是一个质数")
}

