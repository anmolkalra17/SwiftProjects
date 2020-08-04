//
//  ViewController.swift
//  Let's Buy
//
//  Created by Anmol Kalra on 02/08/20.
//  Copyright © 2020 Anmol Kalra. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CustomTextField!
    
    @IBOutlet weak var itemTxt: CustomTextField!
    
    @IBOutlet weak var resultLbl: UILabel!
    
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calculateButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calculateButton.backgroundColor = #colorLiteral(red: 0.9981685281, green: 0.585898459, blue: 0.1717388034, alpha: 1)
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calculateButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calculateButton
        itemTxt.inputAccessoryView = calculateButton
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    
    @objc func calculate(){
        if let wageTxt = wageTxt.text, let itemTxt = itemTxt.text{
            if let wage = Double(wageTxt), let price = Double(itemTxt){
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wages.getHours(forWages: wage, andPrice: price))"
            }
        }
    }
    @IBAction func clearCalc(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        itemTxt.text = ""
        
    }
}
