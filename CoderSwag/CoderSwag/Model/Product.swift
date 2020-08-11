//
//  Product.swift
//  CoderSwag
//
//  Created by Anmol Kalra on 09/08/20.
//  Copyright © 2020 Anmol Kalra. All rights reserved.
//

import Foundation

struct Product{
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
