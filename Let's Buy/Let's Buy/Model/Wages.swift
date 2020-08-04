//
//  Wages.swift
//  Let's Buy
//
//  Created by Anmol Kalra on 02/08/20.
//  Copyright © 2020 Anmol Kalra. All rights reserved.
//

import Foundation

class Wages{
    class func getHours(forWages wage: Double, andPrice price: Double) -> Int{
        return Int(ceil(price / wage))
    }
}
