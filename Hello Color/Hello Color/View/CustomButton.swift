//
//  CustomButton.swift
//  Hello Color
//
//  Created by Anmol Kalra on 28/07/20.
//  Copyright © 2020 Anmol Kalra. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 10
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
