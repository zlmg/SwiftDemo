//
//  Options.swift
//  SwiftDemo
//
//  Created by iOS002 on 2/16/16.
//  Copyright © 2016 zlmg. All rights reserved.
//

import UIKit

class Options: NSObject {
    func demo() {
        var a: Int?
        
        if(a != nil) {
            print(a)
        }
    }
    
    func typealiasDemo() {
        typealias Int16 = UInt16
        let t: Int16 = 11
        
        print(t)
    }

}
