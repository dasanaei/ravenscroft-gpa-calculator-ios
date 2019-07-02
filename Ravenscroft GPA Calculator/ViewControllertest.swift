//
//  ViewControllertest.swift
//  Ravenscroft GPA Calculator
//
//  Created by Dante Sanaei on 2/22/17.
//  Copyright © 2017 Competitive Coding Club. All rights reserved.
//

import UIKit

class ViewControllertest: UIViewController {

    
    @IBAction func alsoBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
        override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        Helper.AppUtility.lockOrientation(.all)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        Helper.AppUtility.lockOrientation(.portrait)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
