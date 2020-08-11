//
//  ProductsVC.swift
//  CoderSwag
//
//  Created by Anmol Kalra on 09/08/20.
//  Copyright © 2020 Anmol Kalra. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var productsCollection: UICollectionView!
    private(set) public var products = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.dataSource = self
        productsCollection.delegate = self
    }
    
    func initProducts(category: Category){
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count  // returns the size of array of active category
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductsCell", for: indexPath) as? ProductsCell{
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        
        return ProductsCell()
    }
}
