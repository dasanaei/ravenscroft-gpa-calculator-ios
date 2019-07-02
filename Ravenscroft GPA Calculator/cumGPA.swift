//
//  cumGPA.swift
//  Ravenscroft GPA Calculator
//
//  Created by Dante Sanaei on 2/26/17.
//  Copyright © 2017 Competitive Coding Club. All rights reserved.
//

import Foundation



class cumGPA{
    
    var GPADouble: Double = 0.0
    var status: Double = 0.0
    var cumGPA: Double
    
    init(semGPA: String, Status: String, CumGPA: String){
        self.GPADouble = Double(semGPA)!
        self.cumGPA = Double(CumGPA)!
        self.status = self.statusToNum(status: Status)

    }
    
    func getCumGPA() -> String{
        
       let x = self.cumGPA * self.status
        
        let y = x + self.GPADouble
        
        let finalGPA = y / (self.status + 1)
        
        var estGPA: String = String(finalGPA)
        if (estGPA.characters.count > 4)
        {
            let index = estGPA.index(estGPA.startIndex, offsetBy: 5)
            estGPA = estGPA.substring(to: index)
        }
        if (estGPA.characters.count == 3)
        {
            let index2 = estGPA.index(estGPA.startIndex, offsetBy: 3)
            estGPA = estGPA.substring(to: index2) + "000"
            
            let index3 = estGPA.index(estGPA.startIndex, offsetBy: 4)
            estGPA = estGPA.substring(to: index3)
            
        }
        if (estGPA.characters.count == 4)
        {
            let index4 = estGPA.index(estGPA.startIndex, offsetBy: 4)
            estGPA = estGPA.substring(to: index4) + "000"
            
            let index5 = estGPA.index(estGPA.startIndex, offsetBy: 5)
            estGPA = estGPA.substring(to: index5)
            
        }
        else {
            _ = "HI"
        }

        UserDefaults.standard.set(estGPA, forKey: "finalCumGPA")
        
        let b: String = String(estGPA)
        
        return b
        
        
        
    }
    
    func statusToNum(status: String) -> Double{
        if status == "Second Semester Freshman"{
            return 1.0
        }
        if status == "First Semester Sophomore"{
            return 2.0
        }
        if status == "Second Semester Sophomore"{
            return 3.0
        }
        if status == "First Semester Junior"{
            return 4.0
        }
        if status == "Second Semester Junior"{
            return 5.0
        }
        if status == "First Semester Senior"{
            return 6.0
        }

        if status == "Second Semester Senior"{
            return 7.0
        }
        else{
            return 0.0
        }
    }
       

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
