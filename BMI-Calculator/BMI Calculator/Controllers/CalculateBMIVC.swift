//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Anmol Kalra on 02/12/2020.
//  Copyright © 2020 Anmol Kalra. All rights reserved.
//

import UIKit

class CalculateBMIVC: UIViewController {
    
    var calculatorBrain = CalculatorBrain()

    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var heightOutlet: UISlider!
    @IBOutlet weak var weightOutlet: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
        heightLbl.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        weightLbl.text = String(format: "%.0f", sender.value) + "Kg"
    }
    @IBAction func calcBtnWasPressed(_ sender: UIButton) {
        let weight = weightOutlet.value
        let height = heightOutlet.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "gotoResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoResult"{
            let destinationVC = segue.destination as! ResultVC
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}

