//
//  ViewController.swift
//  SwiftDemo
//
//  Created by ZhouLimin on 2/8/16.
//  Copyright © 2016 zlmg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let label = "The width is "
        let width = 94
        let widthLabel = label + String(width)
        NSLog(widthLabel)
        
        let apples = 3
        let oranges = 5
        let appleSummary = "I have \(apples) apples."
        let fruitSummary = "I have \(apples + oranges) pieces of fruit."
        NSLog(appleSummary + fruitSummary)
        
        //通过 [] 创建一个数组和字典，通过 index 和 key 获取对应的值
        var shoppingList = ["catfish", "water", "tulips", "blur paint"]
        shoppingList[1] = "bottle of water"
        var occupations = [
            "Malcolm": "Captain",
            "Kaylee": "Mechanic",
        ]
        occupations["Jayen"] = "Publisc Relations"
        NSLog(String(shoppingList) + String(occupations))
        
        let emptyArray = [String]()
        let emptyDictionary = Dictionary<String, Float>()
        shoppingList = []
        
        //流程控制
        let individualScores = [75,43,103,87,102]
        var teamScore = 0
        for score in individualScores {
            if score > 50 {
                teamScore += 3
            } else {
                teamScore += 1
            }
        }
        
        //使用switch 支持任意类型的数据以及各种比较操作——不仅仅是整数以及测试相等。
        //必须有default
        let vegetable = "red pepper"
        switch vegetable {
        case "celery":
            let vegetableComment = "Add some raisins and make ants on a log."
        case "cucumber", "watercress":
            let vegetableComment = "That would make a good tea sandwich."
        case let x where x.hasSuffix("pepper"):
            let vegetableComment = "Is it a spicy \(x)?"
        default:
            let vegetableComment = "Everything tastes good in soup."
        }
        
        //使用 for-in 遍历字典，需要两个变量来表示键和值。
        let interestingNumbers = [
            "Prime": [2, 3, 5, 7, 11, 13],
            "Fibonacci": [1, 1, 2, 3, 5, 8],
            "Square": [1, 4, 9, 16, 25],
        ]
        
        var largest = 0
        for (kind, numbers) in interestingNumbers {
            for number in numbers {
                if number > largest {
                    largest = number
                }
            }
        }
        NSLog(String(largest))
        
        var firstForLoop = 0
        for i in 2...4 {
            firstForLoop += i
        }
        NSLog(String(firstForLoop))
        
        /**
        * 3.3 函数和闭包
        */
        
        //使用 func 来声明一个函数，通过函数的名字和参数来调用函数。使用 -> 指定函数返回值（分离了返回值和参数）
        func greet(name: String, day: String) ->String {
            return "Hello \(name),today is \(day)"
        }
        NSLog(greet("Bob", day: "Tuesday"))
        
        /**
        test class
        */
         //test class
        let test = Square(sideLength: 5.2, name: "my test square")
        test.area()
        test.simpleDescription()
        NSLog("area:%f, description:%@", test.area(),test.simpleDescription())
        
        var triangle = EquilateralTriangle(sideLength: 3.1, name: "an triangle")
        NSLog("perimeter = \(triangle.perimeter)")
        triangle.perimeter = 9.9
        NSLog("sideLength = \(triangle.sideLength)")
        
        let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
        let sideLength = optionalSquare?.sideLength
        
        /**
        枚举和结构
        */
        //使用 enum 创建一个枚举。像类和所有其他的命名类型一样，枚举可以与他们相关的方法
        enum Rank: Int {
            case Ace = 1
            case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
            case Jack, Queen, King
            func simpleDescription() -> String {
                switch self {
                case .Ace:
                    return "ace"
                case .Jack:
                    return "jack"
                case .Queen:
                    return "queen"
                case .King:
                    return "king"
                default:
                    return String(self)
                }
            }
        }
        let ace = Rank.Ace
        let aceRawValue = ace
        
        
        /**
        协议和扩展

        */
        var a = SimpleClass()
        a.adjust()
        let aDescription = a.simpleDescription
        
        var b = SimpleStructure()
        b.adjust()
        let bDescription = b.simpleDescription
        
        var testInt:Int = 7
        testInt.adjust()
        NSLog("\(testInt.simpleDescription)")
        
        /**
        整数的范围
        */
        let minValue = UInt16.min
        let maxValue = UInt16.max - 1_000_0
        print("min = \(minValue) max = \(maxValue)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

