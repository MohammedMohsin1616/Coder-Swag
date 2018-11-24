//
//  Product.swift
//  Coder-Swag
//
//  Created by Mohammed Mohsin Sayed on 11/24/18.
//  Copyright © 2018 Mohammed Mohsin Sayed. All rights reserved.
//

import Foundation

struct Product {
    
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    
    init(imageName: String, title: String, price: String) {
        
        self.imageName = imageName
        self.title = title
        self.price = price 
    }
    
}
