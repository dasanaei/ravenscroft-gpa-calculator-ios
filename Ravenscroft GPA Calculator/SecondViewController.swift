//
//  SecondViewController.swift
//  Ravenscroft GPA Calculator
//
//  Created by Dante Sanaei on 2/22/17.
//  Copyright © 2017 Competitive Coding Club. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,  UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textbox1: UITextField!
    @IBOutlet weak var dropdown2: UIPickerView!
    var test = 0
    @IBOutlet weak var gpa: UILabel!
    @IBOutlet weak var calculate: MyButton!
    @IBOutlet weak var SemGPA: UILabel!
    @IBOutlet weak var CumGPATextbox: UITextField!
  
    var age = ["Enter Status", "First Semester Freshman", "Second Semester Freshman", "First Semester Sophomore", "Second Semester Sophomore", "First Semester Junior", "Second Semester Junior", "First Semester Senior", "Second Semester Senior"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var countrows : Int = age.count
        if pickerView == dropdown2 {
            
            countrows = self.age.count
        }
        
        return countrows
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == dropdown2 {
            
            let titleRow = age[row]
            
            return titleRow
            
        }
            
        
        return ""
    }
    
    

    @IBAction func CumGPA(_ sender: Any) {
        // test = 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == dropdown2 {
             UserDefaults.standard.set(self.age[row], forKey: "status")
            
            if self.dropdown2.isHidden == true{
                self.textbox1.text = UserDefaults.standard.string(forKey: "status")
            }
            
        }
            
            }
    
       @IBOutlet weak var done: UIButton!
    @IBAction func done(_ sender: Any) {
        
        self.dropdown2.isHidden = true
        self.done.isHidden = true
        
        self.textbox1.text = UserDefaults.standard.string(forKey: "status")
        
        self.calculate.isHidden = false
        self.gpa.isHidden = false

        
    }
    
    
    
    @IBAction func calculate(_ sender: Any) {
        
        let newCumGPA = cumGPA(semGPA: UserDefaults.standard.string(forKey: "GPA")!, Status: UserDefaults.standard.string(forKey: "status")!, CumGPA: UserDefaults.standard.string(forKey: "CumGPA")!)
        
        self.gpa.text =  newCumGPA.getCumGPA()
        
        
        
    }
    
    @IBAction func test(_ sender: Any) {
        

    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
       
        if (textField == self.textbox1){
          //  if test == 1{
          
          //  }
           // else if test == 0{
                
            
            self.calculate.isHidden = true
            self.gpa.isHidden = true
            
            self.dropdown2.isHidden = false
            self.done.isHidden = false
            
            let x: String =  UserDefaults.standard.string(forKey: "status")!
            let StudentStatus: Int = statusRow(statusInput: x)
            dropdown2.selectRow(StudentStatus, inComponent:0, animated:false)
            
           // }
            
        }
        textField.endEditing(true)
    }
 
    
        
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

   

        textbox1.layer.cornerRadius = 5.0
        textbox1.layer.masksToBounds = true
        textbox1.layer.borderColor = UIColor( red: 34/255, green: 139/255, blue:34/255, alpha: 1.0 ).cgColor
        textbox1.layer.borderWidth = 1.0
        CumGPATextbox.layer.cornerRadius = 5.0
        CumGPATextbox.layer.masksToBounds = true
        CumGPATextbox.layer.borderColor = UIColor( red: 34/255, green: 139/255, blue:34/255, alpha: 1.0 ).cgColor
        CumGPATextbox.layer.borderWidth = 1.0

        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        Helper.AppUtility.lockOrientation(.all)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    
        Helper.AppUtility.lockOrientation(.portrait)
        
         if UserDefaults.standard.string(forKey: "status") == nil{
            UserDefaults.standard.set("Enter Status", forKey: "status")
        }
        
        self.textbox1.text = UserDefaults.standard.string(forKey: "status")
    
        self.CumGPATextbox.text = UserDefaults.standard.string(forKey: "CumGPA")
        
        self.SemGPA.text = UserDefaults.standard.string(forKey: "GPA")
        
        self.gpa.text = UserDefaults.standard.string(forKey: "finalCumGPA")
        
        
        
    }
    
    @IBAction func tap(_ sender: Any) {
        
        CumGPATextbox.endEditing(true)
        
        UserDefaults.standard.set(self.CumGPATextbox.text, forKey: "CumGPA")
        self.dropdown2.isHidden = true
        self.done.isHidden = true
        self.textbox1.text = UserDefaults.standard.string(forKey: "status")
        self.calculate.isHidden = false
        self.gpa.isHidden = false
 

    }
    
    
    func statusRow(statusInput: String) -> Int{
        if statusInput == "First Semester Freshman"{
            return 1
        }
       else if statusInput == "Second Semester Freshman"{
            return 2
        }
        else if statusInput == "First Semester Sophomore"{
            return 3
        }
        else if statusInput == "Second Semester Sophomore"{
            return 4
        }
       else if statusInput == "First Semester Junior"{
            return 5
        }
       else if statusInput == "Second Semester Junior"{
            return 6
        }
       else if statusInput == "First Semester Senior"{
            return 7
        }
        else if statusInput == "Second Semester Senior"{
            return 8
        }
        else{
            return 0
        }

    }
  
}

