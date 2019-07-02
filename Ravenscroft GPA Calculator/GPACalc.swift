//
//  File.swift
//  Ravenscroft GPA Calculator
//
//  Created by Dante Sanaei on 2/25/17.
//  Copyright © 2017 Competitive Coding Club. All rights reserved.
//

import Foundation
import UIKit


class GPACalc {
    var grade1: Double = 0
    var grade2: Double = 0
    var grade3: Double = 0
    var grade4: Double = 0
    var grade5: Double = 0
    var grade7: Double = 0
    var grade6: Double = 0

    
    
    init(Grade1: String, Grade2: String, Grade3: String, Grade4: String, Grade5: String, Grade6: String, Grade7: String, Bump1: Double, Bump2: Double, Bump3: Double, Bump4: Double, Bump5: Double, Bump6: Double, Bump7: Double) {
        
        self.grade1 = gradeToNum(grade: Grade1)
        self.grade2 = gradeToNum(grade: Grade2)
        self.grade3 = gradeToNum(grade: Grade3)
        self.grade4 = gradeToNum(grade: Grade4)
        self.grade5 = gradeToNum(grade: Grade5)
        self.grade6 = gradeToNum(grade: Grade6)
        self.grade7 = gradeToNum(grade: Grade7)
        
        
        self.grade1 += Bump1
        self.grade2 += Bump2
        self.grade3 += Bump3
        self.grade4 += Bump4
        self.grade5 += Bump5
        self.grade6 += Bump6
        self.grade7 += Bump7
        
        
        
        
        
    }
    
    func getGPA() -> String{
        var sum: Double = 0.0
        var total: Double = 3.0
        sum = self.grade1+self.grade2+self.grade3
        if ((self.grade4 == 0)){
            _ = 54
        }
        else
        {
            sum = (self.grade1 + self.grade2 + self.grade3 + self.grade4)
            total += 1
        }
        
        
        
        if ((self.grade5 == 0)){
            _ = 69
        }
        else
        {
            sum += self.grade5
            total += 1
        }
        
        
        
        
        if ((self.grade6 == 0)){
            _ = 2
        }
        else
        {
            sum += self.grade6;
            total += 1
        }
        
        
        
        
        if ((self.grade7 == 0)){
            _ = 9
        }
        else
        {
            sum += self.grade7
            total += 1
        }
        
        
        let GPA: Double = (sum / total)

        var estGPA: String = String(GPA)
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
        
        
        UserDefaults.standard.set(estGPA, forKey: "GPA")
        return estGPA;
    }
    

    func gradeToNum(grade: String) -> Double{
        if (grade == "  A+")
        {
            return 4.33
        }
        if (grade == "A")
        {
            return 4.0
        }
        if (grade == "  A-")
        {
            return 3.67
        }
        if (grade == "  B+")
        {
            return 3.33
        }
        if (grade  == "B")
        {
            return 3.0
        }
        if (grade  == " B-")
        {
            return 2.67
        }
        if (grade  == "  C+"){
            return 2.33
        }
        if (grade  == "C"){
            return 2.0
        }
        if(grade  == " C-"){
            return 1.67
        }
        if (grade  == "  D+")
        {
            return 1.33
        }
        if (grade  == "D")
        {
            return 1.0
        }
        if (grade == "  D-"){
            return 0.67
        }
        if(grade  == "F"){
            return 0.0001
        }
        else
        {
            return 0;
        }
    }
    
    
}
