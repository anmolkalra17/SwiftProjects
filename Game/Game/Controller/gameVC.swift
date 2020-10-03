//
//  ViewController.swift
//  Game
//
//  Created by Anmol Kalra on 04/09/20.
//  Copyright © 2020 Anmol Kalra. All rights reserved.
//

import UIKit

class gameVC: UIViewController {

    @IBOutlet weak var gameBackground: UIView!
    @IBOutlet weak var gameFinishBackground: UIView!
    @IBOutlet weak var gameStartStack: UIStackView!
    @IBOutlet weak var gameEndStack: UIStackView!
    @IBOutlet weak var userPickLbl: UILabel!
    @IBOutlet weak var computerPickLbl: UILabel!
    @IBOutlet weak var gameResultLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gameBackground.backgroundColor = #colorLiteral(red: 0.2674656212, green: 0.2806290388, blue: 0.2803885341, alpha: 1)
        gameFinishBackground.isHidden = true
        gameEndStack.isHidden = true
    }
    
    func redoThings(){
        gameBackground.isHidden = true
        gameStartStack.isHidden = true
        gameFinishBackground.isHidden = false
        gameEndStack.isHidden = false
    }
    
    func win(){
        gameFinishBackground.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        userPickLbl.text = object.userChoice.rawValue
        computerPickLbl.text = object.computerChoice.rawValue
        gameResultLbl.text = "You Win!"
    }
    
    func lose(){
        gameFinishBackground.backgroundColor = #colorLiteral(red: 0.9647497535, green: 0, blue: 0.152312845, alpha: 1)
        userPickLbl.text = object.userChoice.rawValue
        computerPickLbl.text = object.computerChoice.rawValue
        gameResultLbl.text = "You Lose!"
    }
    
    func draw(){
        gameFinishBackground.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        userPickLbl.text = object.userChoice.rawValue
        computerPickLbl.text = object.computerChoice.rawValue
        gameResultLbl.text = "Draw!"
    }
    
    func playGame(){
        var res: gameState!
        res = object.getGameStatus()
        
        switch res {
        case .win:
            win()
        case .loss:
            lose()
        case .draw:
            draw()
        default:
            res = .start
        }
    }
    
    func resetChoice(){
        object.userChoice = nil
        object.computerChoice = nil
    }

    @IBAction func rockBtnWasPressed(_ sender: Any){
        redoThings()
        resetChoice()
        object.userChoice = .rock
        object.computerChoice = getSign()
        playGame()
        
    }
    @IBAction func paperBtnWasPressed(_ sender: Any){
        redoThings()
        resetChoice()
        object.userChoice = .paper
        object.computerChoice = getSign()
        playGame()
    }
    @IBAction func scissorsBtnWasPressed(_ sender: Any) {
        redoThings()
        resetChoice()
        object.userChoice = .scissors
        object.computerChoice = getSign()
        playGame()
    }
    
    @IBAction func playAgainBtnWasPressed(_ sender: Any) {
        gameBackground.isHidden = false
        gameStartStack.isHidden = false
        gameFinishBackground.isHidden = true
        gameEndStack.isHidden = true
    }
}
