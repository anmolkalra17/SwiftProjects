//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class xylophoneVC: UIViewController {
    
    var player: AVAudioPlayer!
    
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(sender.currentTitle!)
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
        }
    }
    
    func playSound(_ pressedButtonLbl: String){
        let url = Bundle.main.url(forResource: pressedButtonLbl, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
