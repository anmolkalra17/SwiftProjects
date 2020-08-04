//
//  CustomSamsungClass.swift
//  mvc-tutorial
//
//  Created by Anmol Kalra on 27/07/20.
//  Copyright © 2020 Anmol Kalra. All rights reserved.
//

import UIKit

class CustomSamsungClass: UIView {
    override func awakeFromNib() {
        layer.cornerRadius = 20
        layer.shadowColor = #colorLiteral(red: 0.4705882353, green: 0.7411764706, blue: 0, alpha: 1)
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.90
        backgroundColor = #colorLiteral(red: 0.8156862745, green: 0.831372549, blue: 0.0431372549, alpha: 1)
        layer.borderColor = #colorLiteral(red: 0.7882352941, green: 0.7176470588, blue: 0.03921568627, alpha: 1)
        layer.borderWidth = 5
    }
}
