//
//  TabBarVC.swift
//  Ravenscroft GPA Calculator
//
//  Created by Dante Sanaei on 2/24/17.
//  Copyright © 2017 Competitive Coding Club. All rights reserved.
//

import UIKit

class TabBarVC: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // make unselected icons white
        self.tabBar.unselectedItemTintColor = UIColor.white
    }
}
