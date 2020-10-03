//
//  Sign.swift
//  Game
//
//  Created by Anmol Kalra on 04/09/20.
//  Copyright © 2020 Anmol Kalra. All rights reserved.
//

import Foundation
import GameplayKit

enum Sign: String{
    case rock = "👊"
    case paper = "✋"
    case scissors = "✌️"
}

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func getSign() -> Sign{
    let sign = randomChoice.nextInt()
    switch sign {
    case 0:
        return .rock
    case 1:
        return .paper
    case 2:
        return .scissors
    default:
        exit(0)
    }
}
