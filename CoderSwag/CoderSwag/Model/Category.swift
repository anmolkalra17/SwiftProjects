//
//  File.swift
//  CoderSwag
//
//  Created by Anmol Kalra on 08/08/20.
//  Copyright © 2020 Anmol Kalra. All rights reserved.
//

import Foundation

struct Category{
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String){
        self.title = title
        self.imageName = imageName
    }
}
