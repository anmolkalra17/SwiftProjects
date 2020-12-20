//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Anmol Kalra on 02/12/20.
//  Copyright © 2020 Anmol Kalra. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmiValue: BMI?
    
    func getBMIValue() -> String {
        let bmiToDecimal = String(format: "%.1f", bmiValue?.value ?? 0.0)
        return bmiToDecimal
    }
    
    func getAdvice() -> String {
        return bmiValue?.advice ?? " "
    }
    
    func getColor() -> UIColor{
        return bmiValue?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmi = weight / pow(height, 2.0)
        if bmi < 18.5{
            bmiValue = BMI(value: bmi, advice: "Eat more snacks.", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else if bmi > 18.5 && bmi < 24.9 {
            bmiValue = BMI(value: bmi, advice: "You are normal!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else if bmi > 25.0 {
            bmiValue = BMI(value: bmi, advice: "You should eat less!", color: #colorLiteral(red: 0.6785100102, green: 0.177184701, blue: 0.1594722271, alpha: 1))
        }
    }
    
}
