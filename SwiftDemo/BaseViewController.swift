//
//  BaseViewController.swift
//  SwiftDemo
//
//  Created by iOS002 on 2/19/16.
//  Copyright © 2016 zlmg. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "swift base demo"
        self.view.backgroundColor = UIColor.redColor()
        // Do any additional setup after loading the view.
        
        /**
        5.22.nil
        */
        var serverResponseCode: Int? = 404
        //serverResponseCode contains an actual Int value of 404
        if(serverResponseCode != nil) {
            print(serverResponseCode!)
        }
        serverResponseCode = nil
        // serverResponseCode now contains no value
        print(serverResponseCode)
        //如果定义一个可选常量或变量没有提供默认值，他们会被自动设置为nil：
        var surveyAnswer: String?
        //serveyAnswer is automatically set to nil
        print(surveyAnswer)
        
        
        /**
        5.23.隐式解析可选
        * 一个隐式解析可选本质上是一个普通的可选，但可以被当做非可选使用，并不需要每次都是用解析来获取可选值。
        */
        let possibleString: String? = "An optional string."
        print(possibleString!)
        // requires an exclamation mark to access its value
        //prints "An optional string."
        
        let assumedString: String! = "An implicitly unwrapped optional string."
        print(assumedString)
        
        /**
        5.25.断言调试
        * 断言函数中表达式为false时，断言被触发，输出表达是后面的调试信息，结束应用。
        */
        let age = -3
//        assert(age >= 0, "A person's age cannot be less than aero")
        //this causes the assertion to trigger, because age is not >= 0
        
        /**
        6.5.浮点数取余计算
        */
        print("-----6.5.浮点数取余计算")
        var result = 8 % 2.5
        print(result)
        result = 13.5 % 4
        print(result)
        
        /**
        6.10.比较运算符
        */
//        注意：Swift 也提供恒等 === 和不恒等 !== 这两个比较符来判断两个对象是否引用同一个对象实例。
        for index in 1...5 {
            print("\(index)")
        }
        
        /**
        7.1.字符串字面量
        */
        let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
        // "Imagination is more important than knowledge" - Einstein
        let dollarSign = "\\x24"        // $,  Unicode scalar U+0024
        let blackHeart = "\\u2665"      // ♥,  Unicode scalar U+2665
        let sparklingHeart = "\\U0001F496"  //
        print(wiseWords + dollarSign + blackHeart + sparklingHeart)
        
        /**
        7.2.初始化空字符串
        */
        var emptyString = ""
        var anotherEmptyString = String()
        //these two strings are both empty, and are equivalent to each other
        if emptyString.isEmpty {
            print("Nothing to see here")
        }
        //prints "Nothing to see here"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
