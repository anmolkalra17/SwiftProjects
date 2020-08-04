//
//  AppleProduct.swift
//  mvc-tutorial
//
//  Created by Anmol Kalra on 27/07/20.
//  Copyright © 2020 Anmol Kalra. All rights reserved.
//

import Foundation

class AppleProduct{
    public private(set) var name: String
    public private(set) var color: String
    public private(set) var price: Double
    
    init(name: String, color: String, price: Double){
        self.name = name
        self.color = color
        self.price = price
        
    }
}
