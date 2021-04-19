//
//  PlanetViewController.swift
//  Space
//
//  Created by Anmol Kalra on 23/02/21.
//

import UIKit

class PlanetViewController: UITableViewController {

    let planet = PlanetData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "PlanetCell", bundle: nil), forCellReuseIdentifier: "planetCell")
        tableView.rowHeight = 80
        navigationItem.title = "Planets"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planet.name.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath) as! PlanetCell
        cell.planetName.text = planet.name[indexPath.row].capitalized
        cell.planetImage.image = UIImage(named: "planetsPng/\(planet.name[indexPath.row]).png")
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "planetView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! PlanetView
        
        if let indexPath = tableView.indexPathForSelectedRow{
            destination.planetName = planet.imageName[indexPath.row]
        }
    }
    
}
