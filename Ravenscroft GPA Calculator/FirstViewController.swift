//
//  FirstViewController.swift
//  Ravenscroft GPA Calculator
//
//  Created by Dante Sanaei on 2/22/17.
//  Copyright © 2017 Competitive Coding Club. All rights reserved.
//

import UIKit
import QuartzCore

class FirstViewController: UIViewController,  UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    @IBOutlet weak var class1: UILabel!
    @IBOutlet weak var class2: UILabel!
    @IBOutlet weak var class3: UILabel!
    @IBOutlet weak var class4: UILabel!
    @IBOutlet weak var class5: UILabel!
    @IBOutlet weak var class6: UILabel!
    @IBOutlet weak var class7: UILabel!
    @IBOutlet weak var textbox2: UITextField!
    @IBOutlet weak var textbox1: UITextField!
    @IBOutlet weak var textbox3: UITextField!
    @IBOutlet weak var textbox4: UITextField!
    @IBOutlet weak var textbox5: UITextField!
    @IBOutlet weak var textbox6: UITextField!
    @IBOutlet weak var textbox7: UITextField!
    @IBOutlet weak var done1: UIButton!
    @IBOutlet weak var done2: UIButton!
    @IBOutlet weak var done3: UIButton!
    @IBOutlet weak var done4: UIButton!
    @IBOutlet weak var done5: UIButton!
    @IBOutlet weak var done6: UIButton!
    @IBOutlet weak var done7: UIButton!
    @IBOutlet weak var dropdown1: UIPickerView!
    @IBOutlet weak var dropdown2: UIPickerView!
    @IBOutlet weak var dropdown3: UIPickerView!
    @IBOutlet weak var dropdown4: UIPickerView!
    @IBOutlet weak var dropdown5: UIPickerView!
    @IBOutlet weak var dropdown6: UIPickerView!
    @IBOutlet weak var dropdown7: UIPickerView!
    @IBOutlet weak var editClasses: UIBarButtonItem!
    var grade1 = ""
    var grade2 = ""
    var grade3 = ""
    var grade4 = ""
    var grade5 = ""
    var grade6 = ""
    var grade7 = ""
    
    @IBOutlet weak var gpaText: UILabel!
    
    
    var grade = [" ", "  A+", "A", "  A-", "  B+", "B", " B-", "  C+", "C", " C-", "  D+", "D", "  D-", "F"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {  //idk what this does
        var countrows : Int = grade.count
        if pickerView == dropdown2 {
            
            countrows = self.grade.count
        }
        
        return countrows
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? { // I think sets the rows. Dont mess with
        if pickerView == dropdown1 {
            
            let titleRow = grade[row]
            
            return titleRow
            
        }
            
        else if pickerView == dropdown2{
            let titleRow = grade[row]
            
            return titleRow
        }
            
        else if pickerView == dropdown3{
            let titleRow = grade[row]
            
            return titleRow
        }
        else if pickerView == dropdown4{
            let titleRow = grade[row]
            
            return titleRow
        }
        else if pickerView == dropdown5{
            let titleRow = grade[row]
            
            return titleRow
        }
        else if pickerView == dropdown6{
            let titleRow = grade[row]
            
            return titleRow
        }
        else if pickerView == dropdown7{
            let titleRow = grade[row]
            
            return titleRow
        }

        
        return ""
    }
    
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {  // after stopping the wheel this method runs
        if pickerView == dropdown1 {
            UserDefaults.standard.set(self.grade[row], forKey: "grade1")
            grade1 = UserDefaults.standard.string(forKey: "grade1")!

            if dropdown1.isHidden == true{
                self.textbox1.text = UserDefaults.standard.string(forKey: "grade1")
            }
        }
            
        else if pickerView == dropdown2{
            UserDefaults.standard.set(self.grade[row], forKey: "grade2")
            grade2 = UserDefaults.standard.string(forKey: "grade2")!
            
            if self.dropdown2.isHidden == true{
                self.textbox2.text = UserDefaults.standard.string(forKey: "grade2")
            }
        }
        else if pickerView == dropdown3{
            UserDefaults.standard.set(self.grade[row], forKey: "grade3")
            grade3 = UserDefaults.standard.string(forKey: "grade3")!
            
            if self.dropdown3.isHidden == true{
                self.textbox3.text = UserDefaults.standard.string(forKey: "grade3")
            }
        }
        else if pickerView == dropdown4{
            UserDefaults.standard.set(self.grade[row], forKey: "grade4")
            grade4 = UserDefaults.standard.string(forKey: "grade4")!
            
            if self.dropdown4.isHidden == true{
                self.textbox4.text = UserDefaults.standard.string(forKey: "grade4")
            }
        }
        else if pickerView == dropdown5{
            UserDefaults.standard.set(self.grade[row], forKey: "grade5")
            grade5 = UserDefaults.standard.string(forKey: "grade5")!
            
            if self.dropdown5.isHidden == true{
                self.textbox5.text = UserDefaults.standard.string(forKey: "grade5")
            }
        }
        else if pickerView == dropdown6{
            UserDefaults.standard.set(self.grade[row], forKey: "grade6")
            grade6 = UserDefaults.standard.string(forKey: "grade6")!
            
            if self.dropdown6.isHidden == true{
                self.textbox6.text = UserDefaults.standard.string(forKey: "grade6")
            }
        }
        else if pickerView == dropdown7{
            UserDefaults.standard.set(self.grade[row], forKey: "grade7")
            grade7 = UserDefaults.standard.string(forKey: "grade7")!
            
            if self.dropdown7.isHidden == true{
                self.textbox7.text = UserDefaults.standard.string(forKey: "grade7")
            }
        }

    }
    
    @IBAction func done1(_ sender: Any) {           // done methods work with done buttons
        self.dropdown1.isHidden = true
        self.textbox1.text = UserDefaults.standard.string(forKey: "grade1")
        self.done1.isHidden = true
        
        
    }
    @IBAction func done2(_ sender: Any) {
        self.dropdown2.isHidden = true
        self.textbox2.text = UserDefaults.standard.string(forKey: "grade2")
        self.done2.isHidden = true
        
    }
    
    @IBAction func done3(_ sender: Any) {
        self.dropdown2.isHidden = true
        self.done2.isHidden = true
        self.textbox2.text = UserDefaults.standard.string(forKey: "grade2")
        self.dropdown3.isHidden = true
        self.textbox3.text = UserDefaults.standard.string(forKey: "grade3")
        self.done3.isHidden = true
        

    }
    @IBAction func done4(_ sender: Any) {
        self.dropdown2.isHidden = true
        self.done2.isHidden = true
        self.textbox2.text = UserDefaults.standard.string(forKey: "grade2")
        self.dropdown4.isHidden = true
        self.textbox4.text = UserDefaults.standard.string(forKey: "grade4")
        self.done4.isHidden = true
        

    }
    
    @IBAction func done5(_ sender: Any) {
        self.dropdown2.isHidden = true
        self.done2.isHidden = true
        self.textbox2.text = UserDefaults.standard.string(forKey: "grade2")
        self.dropdown5.isHidden = true
        self.textbox5.text = UserDefaults.standard.string(forKey: "grade5")
        self.done5.isHidden = true
        
    }
    @IBAction func done6test(_ sender: Any) {
        self.dropdown2.isHidden = true
        self.done2.isHidden = true
        self.textbox2.text = UserDefaults.standard.string(forKey: "grade2")
        self.dropdown6.isHidden = true
        self.textbox6.text = UserDefaults.standard.string(forKey: "grade6")
        self.done6.isHidden = true
        
    }
    
    @IBAction func done7(_ sender: Any) {
        self.dropdown2.isHidden = true
        self.done2.isHidden = true
        self.textbox2.text = UserDefaults.standard.string(forKey: "grade2")
        self.dropdown7.isHidden = true
        self.textbox7.text = UserDefaults.standard.string(forKey: "grade7")
        self.done7.isHidden = true
    }
    
    
    @IBAction func tap(_ sender: Any) {             // tap anywhere else and the pickerview goes away
        if self.dropdown1.isHidden == false{
            self.dropdown1.isHidden = true
            self.textbox1.text = UserDefaults.standard.string(forKey: "grade1")
            self.done1.isHidden = true
        }
        if self.dropdown2.isHidden == false{
            self.dropdown2.isHidden = true
             self.textbox2.text = UserDefaults.standard.string(forKey: "grade2")
            self.done2.isHidden = true
        }
        if self.dropdown3.isHidden == false{
            self.dropdown3.isHidden = true
             self.textbox3.text = UserDefaults.standard.string(forKey: "grade3")
            self.done3.isHidden = true
        }
        if self.dropdown4.isHidden == false{
            self.dropdown4.isHidden = true
             self.textbox4.text = UserDefaults.standard.string(forKey: "grade4")
            self.done4.isHidden = true
        }
        if self.dropdown5.isHidden == false{
            self.dropdown5.isHidden = true
             self.textbox5.text = UserDefaults.standard.string(forKey: "grade5")
            self.done5.isHidden = true
        }
        if self.dropdown6.isHidden == false{
            self.dropdown6.isHidden = true
             self.textbox6.text = UserDefaults.standard.string(forKey: "grade6")
            self.done6.isHidden = true
        }
        if self.dropdown7.isHidden == false{
            self.dropdown7.isHidden = true
             self.textbox7.text = UserDefaults.standard.string(forKey: "grade7")
            self.done7.isHidden = true
        }
    }

    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {           // clicking on the texview/ beginning to edit
        if (textField == self.textbox1){
            textbox1.text = ""
            self.dropdown1.isHidden = false
            self.done1.isHidden = false
           let x: String =  UserDefaults.standard.string(forKey: "grade1")!
           let grade1Num: Int = gradeRow(gradeInput: x)
           dropdown1.selectRow(grade1Num, inComponent:0, animated:false)
            if self.dropdown2.isHidden == false{
                self.dropdown2.isHidden = true
                self.textbox2.text = UserDefaults.standard.string(forKey: "grade2")
                self.done2.isHidden = true
            }
            if self.dropdown3.isHidden == false{
                self.dropdown3.isHidden = true
                self.textbox3.text = UserDefaults.standard.string(forKey: "grade3")
                self.done3.isHidden = true
            }
            if self.dropdown4.isHidden == false{
                self.dropdown4.isHidden = true
                self.textbox4.text = UserDefaults.standard.string(forKey: "grade4")
                self.done4.isHidden = true
            }
            if self.dropdown5.isHidden == false{
                self.dropdown5.isHidden = true
                self.textbox5.text = UserDefaults.standard.string(forKey: "grade5")
                self.done5.isHidden = true
            }
            if self.dropdown6.isHidden == false{
                self.dropdown6.isHidden = true
                self.textbox6.text = UserDefaults.standard.string(forKey: "grade6")
                self.done6.isHidden = true
            }
            if self.dropdown7.isHidden == false{
                self.dropdown7.isHidden = true
                self.textbox7.text = UserDefaults.standard.string(forKey: "grade7")
                self.done7.isHidden = true
            }

        }
        else if (textField == self.textbox2){
            textbox2.text = ""
            self.dropdown2.isHidden = false
            self.done2.isHidden = false
            
            let x: String =  UserDefaults.standard.string(forKey: "grade2")!
            let grade2Num: Int = gradeRow(gradeInput: x)
            dropdown2.selectRow(grade2Num, inComponent:0, animated:false)
            
            if self.dropdown1.isHidden == false{
                self.dropdown1.isHidden = true
                self.textbox1.text = UserDefaults.standard.string(forKey: "grade1")
                self.done1.isHidden = true
            }
            if self.dropdown3.isHidden == false{
                self.dropdown3.isHidden = true
                self.textbox3.text = UserDefaults.standard.string(forKey: "grade3")
                self.done3.isHidden = true
            }
            if self.dropdown4.isHidden == false{
                self.dropdown4.isHidden = true
                self.textbox4.text = UserDefaults.standard.string(forKey: "grade4")
                self.done4.isHidden = true
            }
            if self.dropdown5.isHidden == false{
                self.dropdown5.isHidden = true
                self.textbox5.text = UserDefaults.standard.string(forKey: "grade5")
                self.done5.isHidden = true
            }
            if self.dropdown6.isHidden == false{
                self.dropdown6.isHidden = true
                self.textbox6.text = UserDefaults.standard.string(forKey: "grade6")
                self.done6.isHidden = true
            }
            if self.dropdown7.isHidden == false{
                self.dropdown7.isHidden = true
                self.textbox7.text = UserDefaults.standard.string(forKey: "grade7")
                self.done7.isHidden = true
            }

            
        }
        else if (textField == self.textbox3){
            textbox3.text = ""
            self.dropdown3.isHidden = false
            self.done3.isHidden = false
            
            let x: String =  UserDefaults.standard.string(forKey: "grade3")!
            let grade3Num: Int = gradeRow(gradeInput: x)
            dropdown3.selectRow(grade3Num, inComponent:0, animated:false)

            if self.dropdown1.isHidden == false{
                self.dropdown1.isHidden = true
                self.textbox1.text = UserDefaults.standard.string(forKey: "grade1")
                self.done1.isHidden = true
            }
            if self.dropdown2.isHidden == false{
                self.dropdown2.isHidden = true
                self.textbox2.text = UserDefaults.standard.string(forKey: "grade2")
                self.done2.isHidden = true
            }
        
            
            if self.dropdown4.isHidden == false{
                self.dropdown4.isHidden = true
                self.textbox4.text = UserDefaults.standard.string(forKey: "grade4")
                self.done4.isHidden = true
            }
            if self.dropdown5.isHidden == false{
                self.dropdown5.isHidden = true
                self.textbox5.text = UserDefaults.standard.string(forKey: "grade5")
                self.done5.isHidden = true
            }
            if self.dropdown6.isHidden == false{
                self.dropdown6.isHidden = true
                self.textbox6.text = UserDefaults.standard.string(forKey: "grade6")
                self.done6.isHidden = true
            }
            if self.dropdown7.isHidden == false{
                self.dropdown7.isHidden = true
                self.textbox7.text = UserDefaults.standard.string(forKey: "grade7")
                self.done7.isHidden = true
            }

        }
        else if (textField == self.textbox4){
            textbox4.text = ""
            self.dropdown4.isHidden = false
            self.done4.isHidden = false
            
            let x: String =  UserDefaults.standard.string(forKey: "grade4")!
            let grade4Num: Int = gradeRow(gradeInput: x)
            dropdown4.selectRow(grade4Num
                , inComponent:0, animated:false)
            if self.dropdown1.isHidden == false{
                self.dropdown1.isHidden = true
                self.textbox1.text = UserDefaults.standard.string(forKey: "grade1")
                self.done1.isHidden = true
            }
            if self.dropdown2.isHidden == false{
                self.dropdown2.isHidden = true
                self.textbox2.text = UserDefaults.standard.string(forKey: "grade2")
                self.done2.isHidden = true
            }
            if self.dropdown3.isHidden == false{
                self.dropdown3.isHidden = true
                self.textbox3.text = UserDefaults.standard.string(forKey: "grade3")
                self.done3.isHidden = true
            }
            if self.dropdown5.isHidden == false{
                self.dropdown5.isHidden = true
                self.textbox5.text = UserDefaults.standard.string(forKey: "grade5")
                self.done5.isHidden = true
            }
            if self.dropdown6.isHidden == false{
                self.dropdown6.isHidden = true
                self.textbox6.text = UserDefaults.standard.string(forKey: "grade6")
                self.done6.isHidden = true
            }
            if self.dropdown7.isHidden == false{
                self.dropdown7.isHidden = true
                self.textbox7.text = UserDefaults.standard.string(forKey: "grade7")
                self.done7.isHidden = true
            }

            
        }
        else if (textField == self.textbox5){
            textbox5.text = ""
            self.dropdown5.isHidden = false
            self.done5.isHidden = false
            
            let x: String =  UserDefaults.standard.string(forKey: "grade5")!
            let grade5Num: Int = gradeRow(gradeInput: x)
            dropdown5.selectRow(grade5Num, inComponent:0, animated:false)

            if self.dropdown1.isHidden == false{
                self.dropdown1.isHidden = true
                self.textbox1.text = UserDefaults.standard.string(forKey: "grade1")
                self.done1.isHidden = true
            }
            if self.dropdown2.isHidden == false{
                self.dropdown2.isHidden = true
                self.textbox2.text = UserDefaults.standard.string(forKey: "grade2")
                self.done2.isHidden = true
            }
            if self.dropdown3.isHidden == false{
                self.dropdown3.isHidden = true
                self.textbox3.text = UserDefaults.standard.string(forKey: "grade3")
                self.done3.isHidden = true
            }
            if self.dropdown4.isHidden == false{
                self.dropdown4.isHidden = true
                self.textbox4.text = UserDefaults.standard.string(forKey: "grade4")
                self.done4.isHidden = true
            }
            
            if self.dropdown6.isHidden == false{
                self.dropdown6.isHidden = true
                self.textbox6.text = UserDefaults.standard.string(forKey: "grade6")
                self.done6.isHidden = true
            }
            if self.dropdown7.isHidden == false{
                self.dropdown7.isHidden = true
                self.textbox7.text = UserDefaults.standard.string(forKey: "grade7")
                self.done7.isHidden = true
            }

            
        }
        else if (textField == self.textbox6){
            textbox6.text = ""
            self.dropdown6.isHidden = false
            self.done6.isHidden = false

            let x: String =  UserDefaults.standard.string(forKey: "grade6")!
            let grade6Num: Int = gradeRow(gradeInput: x)
            dropdown6.selectRow(grade6Num, inComponent:0, animated:false)
            if self.dropdown1.isHidden == false{
                self.dropdown1.isHidden = true
                self.textbox1.text = UserDefaults.standard.string(forKey: "grade1")
                self.done1.isHidden = true
            }
            if self.dropdown2.isHidden == false{
                self.dropdown2.isHidden = true
                self.textbox2.text = UserDefaults.standard.string(forKey: "grade2")
                self.done2.isHidden = true
            }
            if self.dropdown3.isHidden == false{
                self.dropdown3.isHidden = true
                self.textbox3.text = UserDefaults.standard.string(forKey: "grade3")
                self.done3.isHidden = true
            }
            if self.dropdown4.isHidden == false{
                self.dropdown4.isHidden = true
                self.textbox4.text = UserDefaults.standard.string(forKey: "grade4")
                self.done4.isHidden = true
            }
            if self.dropdown5.isHidden == false{
                self.dropdown5.isHidden = true
                self.textbox5.text = UserDefaults.standard.string(forKey: "grade5")
                self.done5.isHidden = true
            }
            
            if self.dropdown7.isHidden == false{
                self.dropdown7.isHidden = true
                self.textbox7.text = UserDefaults.standard.string(forKey: "grade7")
                self.done7.isHidden = true
            }

        }
        else if (textField == self.textbox7){
            textbox7.text = ""
            self.dropdown7.isHidden = false
            self.done7.isHidden = false

            let x: String =  UserDefaults.standard.string(forKey: "grade7")!
            let grade7Num: Int = gradeRow(gradeInput: x)
            dropdown7.selectRow(grade7Num, inComponent:0, animated:false)
            if self.dropdown1.isHidden == false{
                self.dropdown1.isHidden = true
                self.textbox1.text = UserDefaults.standard.string(forKey: "grade1")
                self.done1.isHidden = true
            }
            if self.dropdown2.isHidden == false{
                self.dropdown2.isHidden = true
                self.textbox2.text = UserDefaults.standard.string(forKey: "grade2")
                self.done2.isHidden = true
            }
            if self.dropdown3.isHidden == false{
                self.dropdown3.isHidden = true
                self.textbox3.text = UserDefaults.standard.string(forKey: "grade3")
                self.done3.isHidden = true
            }
            if self.dropdown4.isHidden == false{
                self.dropdown4.isHidden = true
                self.textbox4.text = UserDefaults.standard.string(forKey: "grade4")
                self.done4.isHidden = true
            }
            if self.dropdown5.isHidden == false{
                self.dropdown5.isHidden = true
                self.textbox5.text = UserDefaults.standard.string(forKey: "grade5")
                self.done5.isHidden = true
            }
            if self.dropdown6.isHidden == false{
                self.dropdown6.isHidden = true
                self.textbox6.text = UserDefaults.standard.string(forKey: "grade6")
                self.done6.isHidden = true
            }
            

        }
        textField.endEditing(true)
    }
    
    
    @IBAction func Calculate(_ sender: Any) {
        let gpa = GPACalc(Grade1: UserDefaults.standard.string(forKey: "grade1")!, Grade2: UserDefaults.standard.string(forKey: "grade2")!, Grade3: UserDefaults.standard.string(forKey: "grade3")!, Grade4: UserDefaults.standard.string(forKey: "grade4")!, Grade5: UserDefaults.standard.string(forKey: "grade5")!, Grade6: UserDefaults.standard.string(forKey: "grade6")!, Grade7: UserDefaults.standard.string(forKey: "grade7")!, Bump1: UserDefaults.standard.double(forKey: "bump1"), Bump2: UserDefaults.standard.double(forKey: "bump2"), Bump3: UserDefaults.standard.double(forKey: "bump3"), Bump4: UserDefaults.standard.double(forKey: "bump4"), Bump5: UserDefaults.standard.double(forKey: "bump5"), Bump6: UserDefaults.standard.double(forKey: "bump6"), Bump7: UserDefaults.standard.double(forKey: "bump7"))
        
        gpaText.text = gpa.getGPA()
        
        
    }
        
    @IBOutlet weak var calculate: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
       IQKeyboardManager.sharedManager().enable = true

        
        
        textbox1.layer.cornerRadius = 5.0
        textbox1.layer.masksToBounds = true
        textbox1.layer.borderColor = UIColor( red: 34/255, green: 139/255, blue:34/255, alpha: 1.0 ).cgColor
        textbox1.layer.borderWidth = 1.0
        textbox2.layer.cornerRadius = 5.0
        textbox2.layer.masksToBounds = true
        textbox2.layer.borderColor = UIColor( red: 34/255, green: 139/255, blue:34/255, alpha: 1.0 ).cgColor
        textbox2.layer.borderWidth = 1.0
        textbox3.layer.cornerRadius = 5.0
        textbox3.layer.masksToBounds = true
        textbox3.layer.borderColor = UIColor( red: 34/255, green: 139/255, blue:34/255, alpha: 1.0 ).cgColor
        textbox3.layer.borderWidth = 1.0
        textbox4.layer.cornerRadius = 5.0
        textbox4.layer.masksToBounds = true
        textbox4.layer.borderColor = UIColor( red: 34/255, green: 139/255, blue:34/255, alpha: 1.0 ).cgColor
        textbox4.layer.borderWidth = 1.0
        textbox5.layer.cornerRadius = 5.0
        textbox5.layer.masksToBounds = true
        textbox5.layer.borderColor = UIColor( red: 34/255, green: 139/255, blue:34/255, alpha: 1.0 ).cgColor
        textbox5.layer.borderWidth = 1.0
        textbox6.layer.cornerRadius = 5.0
        textbox6.layer.masksToBounds = true
        textbox6.layer.borderColor = UIColor( red: 34/255, green: 139/255, blue:34/255, alpha: 1.0 ).cgColor
        textbox6.layer.borderWidth = 1.0
        textbox7.layer.cornerRadius = 5.0
        textbox7.layer.masksToBounds = true
        textbox7.layer.borderColor = UIColor( red: 34/255, green: 139/255, blue:34/255, alpha: 1.0 ).cgColor
        textbox7.layer.borderWidth = 1.0

           }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        dropdown1.isHidden = true
        dropdown2.isHidden = true
        dropdown3.isHidden = true
        dropdown4.isHidden = true
        dropdown5.isHidden = true
        dropdown6.isHidden = true
        dropdown7.isHidden = true

        if UserDefaults.standard.integer(forKey: "firstTime") == 1{
            gpaText.text = UserDefaults.standard.string(forKey: "GPA")
            textbox1.text = UserDefaults.standard.string(forKey: "grade1")
            textbox2.text = UserDefaults.standard.string(forKey: "grade2")
            textbox3.text = UserDefaults.standard.string(forKey: "grade3")
            textbox4.text = UserDefaults.standard.string(forKey: "grade4")
            textbox5.text = UserDefaults.standard.string(forKey: "grade5")
            textbox6.text = UserDefaults.standard.string(forKey: "grade6")
            textbox7.text = UserDefaults.standard.string(forKey: "grade7")
        }
        if(UserDefaults.standard.object(forKey: "firstTime") == nil){
            
            gpaText.text = "GPA"
            textbox1.text = "Enter Grade"
            UserDefaults.standard.set("Enter Grade", forKey: "grade1")
            textbox2.text = "Enter Grade"
            UserDefaults.standard.set("Enter Grade", forKey: "grade2")
            textbox3.text = "Enter Grade"
            UserDefaults.standard.set("Enter Grade", forKey: "grade3")
            
            textbox4.text = "Enter Grade"
            UserDefaults.standard.set("Enter Grade", forKey: "grade4")
            
            textbox5.text = "Enter Grade"
            UserDefaults.standard.set("Enter Grade", forKey: "grade5")
            
            textbox6.text = "Enter Grade"
            UserDefaults.standard.set("Enter Grade", forKey: "grade6")
            
            textbox7.text = "Enter Grade"
            UserDefaults.standard.set("Enter Grade", forKey: "grade7")
            performSegue(withIdentifier: "no", sender: nil)
            UserDefaults.standard.set(1, forKey: "firstTime")
            
        }

        
        Helper.AppUtility.lockOrientation(.portrait)
        
        
        if UserDefaults.standard.string(forKey: "class1") == nil || UserDefaults.standard.string(forKey: "class1") == ""{
            textbox1.isHidden = true
            UserDefaults.standard.set(" ", forKey: "grade1")

        }
        else{
            textbox1.isHidden = false
        }
        
        if UserDefaults.standard.string(forKey: "class2") == nil || UserDefaults.standard.string(forKey: "class2") == ""{
            textbox2.isHidden = true
            UserDefaults.standard.set(" ", forKey: "grade2")

        }
        else{
            textbox2.isHidden = false
        }

        
        if UserDefaults.standard.string(forKey: "class3") == nil || UserDefaults.standard.string(forKey: "class3") == ""{
            textbox3.isHidden = true
            UserDefaults.standard.set(" ", forKey: "grade3")

        }
        else{
            textbox3.isHidden = false
        }

        
        if UserDefaults.standard.string(forKey: "class4") == nil || UserDefaults.standard.string(forKey: "class4") == ""{
            textbox4.isHidden = true
            UserDefaults.standard.set(" ", forKey: "grade4")

        }
        else{
            textbox4.isHidden = false
        }

        
        if UserDefaults.standard.string(forKey: "class5") == nil || UserDefaults.standard.string(forKey: "class5") == ""{
            textbox5.isHidden = true
            UserDefaults.standard.set(" ", forKey: "grade5")

        }
        else{
            textbox5.isHidden = false
        }

        
        if UserDefaults.standard.string(forKey: "class6") == nil || UserDefaults.standard.string(forKey: "class6") == ""{
            textbox6.isHidden = true
            UserDefaults.standard.set(" ", forKey: "grade6")
        }
        else{
            textbox6.isHidden = false
        }
        
        if UserDefaults.standard.string(forKey: "class7") == nil || UserDefaults.standard.string(forKey: "class7") == ""{
            textbox7.isHidden = true
            UserDefaults.standard.set(" ", forKey: "grade7")
        }
        else{
            textbox7.isHidden = false
        }

        class1.text = UserDefaults.standard.string(forKey: "class1")
        class2.text = UserDefaults.standard.string(forKey: "class2")
        class3.text = UserDefaults.standard.string(forKey: "class3")
        class4.text = UserDefaults.standard.string(forKey: "class4")
        class5.text = UserDefaults.standard.string(forKey: "class5")
        class6.text = UserDefaults.standard.string(forKey: "class6")
        class7.text = UserDefaults.standard.string(forKey: "class7")
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
                Helper.AppUtility.lockOrientation(.all)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func gradeRow(gradeInput: String) -> Int{
        if gradeInput == "  A+"{
            return 1
    }
       else if gradeInput == "A"{
            return 2
        }
        else if gradeInput == "  A-"{
            return 3
        }
        else if gradeInput == "  B+"{
            return 4
        }
        else if gradeInput == "B"{
            return 5
        }
        else if gradeInput == " B-"{
            return 6
        }
       else if gradeInput == "  C+"{
            return 7
        }
       else if gradeInput == "C"{
            return 8
        }
       else if gradeInput == " C-"{
            return 9
        }
        else if gradeInput == "  D+"{
            return 10
        }
        else if gradeInput == "D"{
            return 11
        }
        else if gradeInput == "  D-"{
            return 12
        }
        else if gradeInput == "F"{
            return 13
        }
        else {
            return 0
        }

}
    }



