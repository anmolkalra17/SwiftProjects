//
//  CustomImage.swift
//  DevSlopes
//
//  Created by Anmol Kalra on 31/07/20.
//  Copyright © 2020 Anmol Kalra. All rights reserved.
//

import UIKit

class CustomImage: UIImageView {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 20.0
        layer.shadowColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.75
    }
}
