//
//  mainGame.swift
//  Game
//
//  Created by Anmol Kalra on 04/09/20.
//  Copyright © 2020 Anmol Kalra. All rights reserved.
//

import Foundation

class mainGame{
    var userChoice: Sign!
    var computerChoice: Sign!
    
    func getGameStatus() -> gameState{
    
        var state: gameState = .start
        
        if userChoice == .rock{
            if computerChoice == .scissors{
                state = .win
            } else if computerChoice == .paper{
                state = .loss
            } else if computerChoice == .rock{
                state = .draw
            }
        } else if userChoice == .paper{
            if computerChoice == .rock{
                state = .win
            } else if computerChoice == .scissors{
                state = .loss
            } else if computerChoice == .paper{
                state = .draw
            }
        } else if userChoice == .scissors{
            if computerChoice == .paper{
                state = .win
            } else if computerChoice == .rock{
                state = .loss
            } else if computerChoice == .paper{
                state = .draw
            }
        }
        return state
    }
}

let object = mainGame()
