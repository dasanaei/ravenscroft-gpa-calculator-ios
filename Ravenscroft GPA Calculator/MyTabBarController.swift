//
//  MyTabBarController.swift
//  Ravenscroft GPA Calculator
//
//  Created by Dante Sanaei on 2/24/17.
//  Copyright © 2017 Competitive Coding Club. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.tabBar.barTintColor = UIColor(red: 11/255, green: 107/255, blue: 51/255, alpha: 1.0)
        //self.tabBar.unselectedItemTintColor = UIColor.black
}
}
