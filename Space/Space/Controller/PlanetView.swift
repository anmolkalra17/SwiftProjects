//
//  ViewController.swift
//  Space
//
//  Created by Anmol Kalra on 23/02/21.
//

import UIKit
import SceneKit
import ARKit

class PlanetView: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    var planetName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
        sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints]
        
        addPlanet(name: planetName)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
    
    func addPlanet(name: String){
        let planet = SCNSphere(radius: 0.15)
        let planetTexture = SCNMaterial()
        let planetNode = SCNNode(geometry: planet)
        planetNode.position = SCNVector3(0, 0, -0.5)
        
        if name == "saturn.jpg"{
            let saturn = SCNScene(named: "art.scnassets/saturn.scn")!
            sceneView.scene = saturn
        } else {
            planetTexture.diffuse.contents = UIImage(named: "art.scnassets/textures/\(name)")
            planet.materials = [planetTexture]
            sceneView.scene.rootNode.addChildNode(planetNode)
            spin(planetNode)
        }
    }
    
    func spin(_ planet: SCNNode){
        planet.runAction(SCNAction.rotate(by: 5.0, around: SCNVector3(0, 1, 0), duration: 60))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! PlanetInfoViewController
        destination.planet = planetName
    }
    
    
    @IBAction func moreInfoPressed(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "planetInfo", sender: self)
    }
}
