//
//  BorderButton.swift
//  Swoosh
//
//  Created by Anmol Kalra on 29/07/20.
//  Copyright © 2020 Anmol Kalra. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }
}
