//
//  PlanetInfoViewController.swift
//  Space
//
//  Created by Anmol Kalra on 27/02/21.
//

import UIKit

class PlanetInfoViewController: UIViewController {
    
    var planet: String = ""
    let planetData = PlanetData()

    @IBOutlet weak var planetImage: UIImageView!
    @IBOutlet weak var planetText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        var planetNumber = 0
        
        switch planet {
        case "mercury.jpg":
            planetNumber = 0
        case "venus.jpg":
            planetNumber = 1
        case "earth.jpg":
            planetNumber = 2
        case "mars.jpg":
            planetNumber = 3
        case "jupiter.jpg":
            planetNumber = 4
        case "saturn.jpg":
            planetNumber = 5
        case "uranus.jpg":
            planetNumber = 6
        case "neptune.jpg":
            planetNumber = 7
        default:
            planetNumber += 0
        }
        
        planetImage.image = UIImage(named: "images/\(planet)")
        planetText.text = planetData.planetInfo[planetNumber]
    }
}
