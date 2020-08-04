//
//  CustomClass.swift
//  mvc-tutorial
//
//  Created by Anmol Kalra on 27/07/20.
//  Copyright © 2020 Anmol Kalra. All rights reserved.
//

import UIKit

class CustomClass: UIView {
    override func awakeFromNib() {
        layer.cornerRadius = 20
        layer.shadowColor = #colorLiteral(red: 0.2822797, green: 0.291045934, blue: 0.2907875478, alpha: 1)
        layer.shadowRadius = 15
        layer.shadowOpacity = 0.75
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
