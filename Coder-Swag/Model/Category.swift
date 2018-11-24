//
//  Category.swift
//  Coder-Swag
//
//  Created by Mohammed Mohsin Sayed on 11/24/18.
//  Copyright © 2018 Mohammed Mohsin Sayed. All rights reserved.
//

import Foundation

struct Category {
    
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName:String) {
        
        self.title = title
        self.imageName = imageName
        
    }
}
