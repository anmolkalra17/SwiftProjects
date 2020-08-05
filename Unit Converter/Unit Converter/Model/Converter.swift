//
//  Converter.swift
//  Unit Converter
//
//  Created by Anmol Kalra on 04/08/20.
//  Copyright © 2020 Anmol Kalra. All rights reserved.
//

import Foundation
class Converter {
    class func convertToMiles(distanceInKm: Double) -> Double{
        let distanceInMiles = distanceInKm * 0.62137
        return Double(round(distanceInMiles * 1000) / 1000)
    }
    
    class func convertToKm(distanceInMiles: Double) -> Double{
        let distanceInKm = distanceInMiles * 1.60934
        return Double(round(distanceInKm * 1000) / 1000)
    }
    
    class func convertToKg(weightInPounds: Double) -> Double{
        let weightInKg = weightInPounds * 2.2046226218
        return Double(round(weightInKg * 1000) / 1000)
    }
    
    class func convertToPounds(weightInKg: Double) -> Double{
        let weightInPounds = weightInKg *  0.45359237
        return Double(round(weightInPounds * 1000) / 1000)
    }
}
