//
//  MyButton.swift
//  Ravenscroft GPA Calculator
//
//  Created by Dante Sanaei on 2/24/17.
//  Copyright © 2017 Competitive Coding Club. All rights reserved.
//

import UIKit

@IBDesignable class MyButton: UIButton
{
    @IBInspectable var rounded: Bool = false {
        willSet {
            if newValue {
                self.layer.cornerRadius = 5
            }
            else{
                self.layer.cornerRadius = 0
            }
        }
    }
}
