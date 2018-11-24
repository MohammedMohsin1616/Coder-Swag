//
//  DataService.swift
//  Coder-Swag
//
//  Created by Mohammed Mohsin Sayed on 11/24/18.
//  Copyright © 2018 Mohammed Mohsin Sayed. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let categories = [
    
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    private let hats = [
        
        Product(imageName: "hat01.png", title: "Devslopes Logo Graphic Beanie", price: "$15"),
        Product(imageName: "hat02.png", title: "Devslopes Logo Hat Black", price: "$15"),
        Product(imageName: "hat03.png", title: "Devslopes Logo Hat White", price: "$20"),
        Product(imageName: "hat04.png", title: "Devslopes Logo Hat SnapBack", price: "$25")
    ]
    private let hoodies = [
        
        Product(imageName: "hoodie01.png", title: "Devslopes Logo Hoodie Grey", price: "$31"),
        Product(imageName: "hoodie02.png", title: "Devslopes Logo Hoodie Red", price: "$31"),
        Product(imageName: "hoodie03.png", title: "Devslopes Hoodie Grey", price: "$25"),
        Product(imageName: "hoodie04.png", title: "Devslopes Hoodie Black", price: "$25")
    ]
    private let shirts = [
    
        Product(imageName: "shirt01.png", title: "Devslopes Logo Graphic Shirt", price: "$25"),
        Product(imageName: "shirt02.png", title: "Devslopes Logo Shirt Black", price: "$25"),
        Product(imageName: "shirt03.png", title: "Devslopes Logo Red", price: "$25"),
        Product(imageName: "shirt04.png", title: "Barcelona FC Kit 2018", price: "$25")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        
        return categories
    }
    
    func getProducts(forCategory category: String) -> [Product] {
        
        switch category.uppercased() {
            
        case "SHIRTS":
            return shirts
        case "HATS":
            return hats
        case "HOODIES":
            return hoodies
        case "DIGITAL":
            return digitalGoods
        default:
            return [Product]()
        }
    }
    
    
}
