//
//  autolayoutAnimationViewController.swift
//  SwiftDemo
//
//  Created by iOS002 on 2/17/16.
//  Copyright © 2016 zlmg. All rights reserved.
//

import UIKit

class autolayoutAnimationViewController: UIViewController {

    @IBOutlet weak var testButton: UIButton!
    @IBOutlet weak var buttonContraintWidth: NSLayoutConstraint!
    @IBOutlet weak var buttonConstraintHeight: NSLayoutConstraint!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blueColor()
        self.testButton.backgroundColor = UIColor.redColor()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func testAction(sender: AnyObject) {
        self.buttonContraintWidth.constant += 10
        self.buttonConstraintHeight.constant += 20
        UIView.animateWithDuration(1) { () -> Void in
            self.testButton.titleLabel?.textColor = UIColor.blackColor()
            self.testButton.alpha -= 0.1
            self.view.layoutIfNeeded()
        }
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
