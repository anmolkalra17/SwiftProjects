//
//  UIButtonExt.swift
//  Goalpost
//
//  Created by Anmol Kalra on 18/08/20.
//  Copyright © 2020 Anmol Kalra. All rights reserved.
//

import UIKit

extension UIButton{
    func setSelectedColor(){
        self.backgroundColor = #colorLiteral(red: 0, green: 0.7026610374, blue: 0.3979274631, alpha: 1)
    }
    
    func setDeselectedColor(){
        self.backgroundColor = #colorLiteral(red: 0, green: 0.7197288871, blue: 0.4117154479, alpha: 0.3411012414)
    }
}
