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
        self.presentViewController(autolayoutAnimationViewController() , animated: true, completion: nil)
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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

