//
//  ViewController.swift
//  mvc-tutorial
//
//  Created by Anmol Kalra on 27/07/20.
//  Copyright © 2020 Anmol Kalra. All rights reserved.
//

import UIKit

class Controller: UIViewController {

    @IBOutlet weak var iphoneName: UILabel!
    @IBOutlet weak var iphoneColorLabel: UILabel!
    @IBOutlet weak var iphonePriceLabel: UILabel!
    
    @IBOutlet weak var samsungName: UILabel!
    @IBOutlet weak var samsungColor: UILabel!
    @IBOutlet weak var samsungPrice: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appleProduct = AppleProduct(name: "iPhone 11 Pro", color: "Midnight Green", price: 1099.99)
        iphoneName.text = appleProduct.name
        iphoneColorLabel.text = "in \(appleProduct.color)"
        iphonePriceLabel.text = "$ \(appleProduct.price)"
        
        let samsungProduct = SamsungProduct(name: "Galaxy S10", color: "Black", price: 750.00)
        samsungName.text = samsungProduct.name
        samsungColor.text = "in \(samsungProduct.color)"
        samsungPrice.text = "$ \(samsungProduct.price)"
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 310, height: 21))
        label.center = CGPoint(x: 190, y: 410)
        label.textAlignment = .center
        label.text = "I'm a test label added programmatically."
        self.view.addSubview(label)
    }
}
