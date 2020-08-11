//
//  CategoryCell.swift
//  CoderSwag
//
//  Created by Anmol Kalra on 08/08/20.
//  Copyright © 2020 Anmol Kalra. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!

    func updateViews(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
}
