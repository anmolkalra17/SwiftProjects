//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Anmol Kalra on 02/12/20.
//  Copyright © 2020 Anmol Kalra. All rights reserved.
//

import UIKit

class ResultVC: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?

    @IBOutlet weak var BMILbl: UILabel!
    @IBOutlet weak var adviceLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BMILbl.text = bmiValue
        adviceLbl.text = advice
        view.backgroundColor = color
    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
