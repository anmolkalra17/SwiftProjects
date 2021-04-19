//
//  PlanetCell.swift
//  Space
//
//  Created by Anmol Kalra on 23/02/21.
//

import UIKit

class PlanetCell: UITableViewCell {

    @IBOutlet var planetImage: UIImageView!
    @IBOutlet weak var planetName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        accessoryType = .disclosureIndicator
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
