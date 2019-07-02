//
//  EditClassesViewController.swift
//  Ravenscroft GPA Calculator
//
//  Created by Dante Sanaei on 2/22/17.
//  Copyright © 2017 Competitive Coding Club. All rights reserved.
//

import UIKit

class EditClassesViewController: UIViewController, UITextFieldDelegate{
    
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!
    @IBOutlet weak var textField6: UITextField!
    @IBOutlet weak var textField7: UITextField!
    @IBOutlet weak var sg1: UISegmentedControl!
    @IBOutlet weak var sg2: UISegmentedControl!
    @IBOutlet weak var sg3: UISegmentedControl!
    @IBOutlet weak var sg4: UISegmentedControl!
    @IBOutlet weak var sg5: UISegmentedControl!
    @IBOutlet weak var sg6: UISegmentedControl!
    @IBOutlet weak var sg7: UISegmentedControl!
   
    
    
    @IBAction func save(_ sender: Any) {
        if sg1.selectedSegmentIndex == 0{
        UserDefaults.standard.set(1.0, forKey: "bump1")
        }
        if sg1.selectedSegmentIndex == 1{
        UserDefaults.standard.set(0, forKey: "bump1")
        }
        if sg1.selectedSegmentIndex == 2{
            UserDefaults.standard.set(0.5, forKey: "bump1")
        }
        
        if sg2.selectedSegmentIndex == 0{
            UserDefaults.standard.set(1, forKey: "bump2")
        }
        if sg2.selectedSegmentIndex == 1{
            UserDefaults.standard.set(0, forKey: "bump2")
        }
        if sg2.selectedSegmentIndex == 2{
            UserDefaults.standard.set(0.5, forKey: "bump2")
        }
        
        if sg3.selectedSegmentIndex == 0{
            UserDefaults.standard.set(1, forKey: "bump3")
        }
        if sg3.selectedSegmentIndex == 1{
            UserDefaults.standard.set(0, forKey: "bump3")
        }
        if sg3.selectedSegmentIndex == 2{
            UserDefaults.standard.set(0.5, forKey: "bump3")
        }
        
        if sg4.selectedSegmentIndex == 0{
            UserDefaults.standard.set(1, forKey: "bump4")
        }
        if sg4.selectedSegmentIndex == 1{
            UserDefaults.standard.set(0, forKey: "bump4")
        }
        if sg4.selectedSegmentIndex == 2{
            UserDefaults.standard.set(0.5, forKey: "bump4")
        }
        
        if sg5.selectedSegmentIndex == 0{
            UserDefaults.standard.set(1, forKey: "bump5")
        }
        if sg5.selectedSegmentIndex == 1{
            UserDefaults.standard.set(0, forKey: "bump5")
        }
        if sg5.selectedSegmentIndex == 2{
            UserDefaults.standard.set(0.5, forKey: "bump5")
        }
        
        if sg6.selectedSegmentIndex == 0{
            UserDefaults.standard.set(1, forKey: "bump6")
        }
        if sg6.selectedSegmentIndex == 1{
            UserDefaults.standard.set(0, forKey: "bump6")
        }
        if sg6.selectedSegmentIndex == 2{
            UserDefaults.standard.set(0.5, forKey: "bump6")
        }
        
        if sg7.selectedSegmentIndex == 0{
            UserDefaults.standard.set(1, forKey: "bump7")
        }
        if sg7.selectedSegmentIndex == 1{
            UserDefaults.standard.set(0, forKey: "bump7")
        }
        if sg7.selectedSegmentIndex == 2{
            UserDefaults.standard.set(0.5, forKey: "bump7")
        }
        
        
        
        view.endEditing(true)
        
        
        self.dismiss(animated: true, completion: nil)

    }
   

    
    
    
       override func viewDidLoad() {
        super.viewDidLoad()
        textField1.text = UserDefaults.standard.string(forKey: "class1")
        textField2.text = UserDefaults.standard.string(forKey: "class2")
        textField3.text = UserDefaults.standard.string(forKey: "class3")
        textField4.text = UserDefaults.standard.string(forKey: "class4")
        textField5.text = UserDefaults.standard.string(forKey: "class5")
        textField6.text = UserDefaults.standard.string(forKey: "class6")
        textField7.text = UserDefaults.standard.string(forKey: "class7")

        
        
        textField1.layer.cornerRadius = 5.0
        textField1.layer.masksToBounds = true
        textField1.layer.borderColor = UIColor( red: 34/255, green: 139/255, blue:34/255, alpha: 1.0 ).cgColor
        textField1.layer.borderWidth = 1.0
        textField2.layer.cornerRadius = 5.0
        textField2.layer.masksToBounds = true
        textField2.layer.borderColor = UIColor( red: 34/255, green: 139/255, blue:34/255, alpha: 1.0 ).cgColor
        textField2.layer.borderWidth = 1.0
        textField3.layer.cornerRadius = 5.0
        textField3.layer.masksToBounds = true
        textField3.layer.borderColor = UIColor( red: 34/255, green: 139/255, blue:34/255, alpha: 1.0 ).cgColor
        textField3.layer.borderWidth = 1.0
        textField4.layer.cornerRadius = 5.0
        textField4.layer.masksToBounds = true
        textField4.layer.borderColor = UIColor( red: 34/255, green: 139/255, blue:34/255, alpha: 1.0 ).cgColor
        textField4.layer.borderWidth = 1.0
        textField5.layer.cornerRadius = 5.0
        textField5.layer.masksToBounds = true
        textField5.layer.borderColor = UIColor( red: 34/255, green: 139/255, blue:34/255, alpha: 1.0 ).cgColor
        textField5.layer.borderWidth = 1.0
        textField6.layer.cornerRadius = 5.0
        textField6.layer.masksToBounds = true
        textField6.layer.borderColor = UIColor( red: 34/255, green: 139/255, blue:34/255, alpha: 1.0 ).cgColor
        textField6.layer.borderWidth = 1.0
        textField7.layer.cornerRadius = 5.0
        textField7.layer.masksToBounds = true
        textField7.layer.borderColor = UIColor( red: 34/255, green: 139/255, blue:34/255, alpha: 1.0 ).cgColor
        textField7.layer.borderWidth = 1.0

        
        sg1.selectedSegmentIndex = bumpToIndex(Bump: UserDefaults.standard.double(forKey: "bump1"))
        sg2.selectedSegmentIndex = bumpToIndex(Bump: UserDefaults.standard.double(forKey: "bump2"))
        sg3.selectedSegmentIndex = bumpToIndex(Bump: UserDefaults.standard.double(forKey: "bump3"))
        sg4.selectedSegmentIndex = bumpToIndex(Bump: UserDefaults.standard.double(forKey: "bump4"))
        sg5.selectedSegmentIndex = bumpToIndex(Bump: UserDefaults.standard.double(forKey: "bump5"))
        sg6.selectedSegmentIndex = bumpToIndex(Bump: UserDefaults.standard.double(forKey: "bump6"))
        sg7.selectedSegmentIndex = bumpToIndex(Bump: UserDefaults.standard.double(forKey: "bump7"))

        }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            
    }
    
    @IBAction func tap(_ sender: Any) {
        view.endEditing(true)
    }
   func textFieldDidEndEditing(_ textField: UITextField) {
     if (textField == self.textField1){
        UserDefaults.standard.set(textField1.text, forKey: "class1")
    }
    else if (textField == self.textField2){
        UserDefaults.standard.set(textField2.text, forKey: "class2")
    }
     else if (textField == self.textField3){
        UserDefaults.standard.set(textField3.text, forKey: "class3")
    }
     else if (textField == self.textField4){
        UserDefaults.standard.set(textField4.text, forKey: "class4")
    }
     else if (textField == self.textField5){
        UserDefaults.standard.set(textField5.text, forKey: "class5")
    }
     else if (textField == self.textField6){
        UserDefaults.standard.set(textField6.text, forKey: "class6")
    }
     else if (textField == self.textField7){
        UserDefaults.standard.set(textField7.text, forKey: "class7")
    }

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        Helper.AppUtility.lockOrientation(.all)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        Helper.AppUtility.lockOrientation(.portrait)
    }
    
    func bumpToIndex(Bump: Double) -> Int{
        if Bump == 0{
            return 1
        }
        if Bump == 0.5{
            return 2
        }
        if Bump == 1{
            return 0
        }
        else{
            return 1
        }
    }
}
