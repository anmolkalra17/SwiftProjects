//
//  ViewController.swift
//  Hello Color
//
//  Created by Anmol Kalra on 28/07/20.
//  Copyright © 2020 Anmol Kalra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isYellow = false
    var isBlue = false
    var isRed = false
    var isOrange = false
    var isPurple = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func changeColor(_ sender: Any) {
        if isYellow{
            view.backgroundColor = UIColor.blue
            isYellow = false
            isRed = false
            isOrange = false
            isPurple = false
            isBlue = true
        } else if isBlue{
            view.backgroundColor = UIColor.red
            isBlue = false
            isRed = true
            isOrange = false
            isPurple = false
            isYellow = false
        } else if isRed{
            view.backgroundColor = UIColor.orange
            isBlue = false
            isRed = false
            isOrange = true
            isPurple = false
            isYellow = false
        } else if isOrange{
            view.backgroundColor = UIColor.purple
            isBlue = false
            isRed = false
            isOrange = false
            isPurple = true
            isYellow = false
        } else{
            view.backgroundColor = UIColor.yellow
            isBlue = false
            isRed = false
            isOrange = false
            isPurple = false
            isYellow = true
        }
    }
}
