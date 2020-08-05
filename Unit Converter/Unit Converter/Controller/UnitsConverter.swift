//
//  ViewController.swift
//  Unit Converter
//
//  Created by Anmol Kalra on 04/08/20.
//  Copyright © 2020 Anmol Kalra. All rights reserved.
//

import UIKit

class UnitsConverter: UIViewController {

    @IBOutlet weak var valueOne: UITextField!
    @IBOutlet weak var ansOne: UITextField!
    @IBOutlet weak var valueTwo: UITextField!
    @IBOutlet weak var ansTwo: UITextField!
    
    @IBOutlet weak var switchOne: UISwitch!
    @IBOutlet weak var switchTwo: UISwitch!
    
    @IBAction func switchOneAction(_ sender: Any) {
        updateUnits()
    }
    @IBAction func switchTwoAction(_ sender: Any) {
        updateUnits()
    }
    
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    
    @IBOutlet weak var unitOne: UILabel!
    @IBOutlet weak var unitOne1: UILabel!
    @IBOutlet weak var unitTwo: UILabel!
    @IBOutlet weak var unitTwo1: UILabel!
    
    
    @IBAction func calcButton(_ sender: Any) {
        calculate()
        labelOne.isHidden = false
        labelTwo.isHidden = false
        
    }
    @IBAction func clearButton(_ sender: Any) {
        labelOne.text = ""
        labelTwo.text = ""
        ansOne.text = ""
        ansTwo.text = ""
        valueOne.text = ""
        valueTwo.text = ""
        unitOne.text = ""
        unitOne1.text = ""
        unitTwo.text = ""
        unitTwo1.text = ""
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @objc func updateUnits(){
        if switchOne.isOn{
            unitOne.text = "Km"
            unitOne1.text = "Miles"
        }
        
        if switchOne.isOn == false{
            unitOne.text = "Miles"
            unitOne1.text = "Km"
        }
        
        if switchTwo.isOn{
            unitTwo.text = "Pounds"
            unitTwo1.text = "Kg"
        }
        
        if switchTwo.isOn == false{
            unitTwo.text = "Kg"
            unitTwo1.text = "Pounds"
        }
    }
    
    @objc func calculate(){
        if switchOne.isOn{
            unitOne.text = "Km"
            unitOne1.text = "Miles"
            if let valueOne = valueOne.text{
                if let One = Double(valueOne){
                    let answer1 = Converter.convertToMiles(distanceInKm: One)
                    ansOne.text = String(answer1)
                    labelOne.text = "\(valueOne) Km in Miles is \(answer1) Miles."
                }
            }
        }
        
        if switchOne.isOn == false{
            unitOne.text = "Miles"
            unitOne1.text = "Km"
            if let valueOne = valueOne.text{
                if let One = Double(valueOne){
                    let answer2 = Converter.convertToKm(distanceInMiles: One)
                    ansOne.text = String(answer2)
                    labelOne.text = "\(valueOne) Miles in Km is \(answer2) Km."
                }
            }
        }
        
        if switchTwo.isOn{
            unitTwo.text = "Pounds"
            unitTwo1.text = "Kg"
            if let valueTwo = valueTwo.text{
                if let Two = Double(valueTwo){
                    let answer3 = Converter.convertToPounds(weightInKg: Two)
                    ansTwo.text = String(answer3)
                    labelTwo.text = "\(valueTwo) Pounds in Kg is \(answer3) Kg."
                }
            }
        }
        
        if switchTwo.isOn == false{
            unitTwo.text = "Kg"
            unitTwo1.text = "Pounds"
            if let valueTwo = valueTwo.text{
                if let Two = Double(valueTwo){
                    let answer4 = Converter.convertToKg(weightInPounds: Two)
                    ansTwo.text = String(answer4)
                    labelTwo.text = "\(valueTwo) Kg in Pounds is \(answer4) Pounds."
                }
            }
        }
    }
}
