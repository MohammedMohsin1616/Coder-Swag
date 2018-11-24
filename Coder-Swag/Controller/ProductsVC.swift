//
//  ProductVC.swift
//  Coder-Swag
//
//  Created by Mohammed Mohsin Sayed on 11/24/18.
//  Copyright © 2018 Mohammed Mohsin Sayed. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    

    private(set) public var products = [Product]()
    
    @IBOutlet weak var productsCollection: UICollectionView!
    @IBOutlet weak var productLabel: UILabel! 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productsCollection.delegate = self
        productsCollection.dataSource = self
    }
    

    func initProducts(category: Category) {
        
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCVCell {
            
            let product = products[indexPath.row]
            cell.setupCell(product: product)
            
            return cell
        }
        return ProductCVCell() 
    }
    
}
