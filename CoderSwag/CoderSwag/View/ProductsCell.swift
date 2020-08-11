//
//  ProductsCell.swift
//  CoderSwag
//
//  Created by Anmol Kalra on 09/08/20.
//  Copyright © 2020 Anmol Kalra. All rights reserved.
//

import UIKit

class ProductsCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productInfo: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product: Product){
        productImage.image = UIImage(named: product.imageName)
        productInfo.text = product.title
        productPrice.text = product.price
    }
}
