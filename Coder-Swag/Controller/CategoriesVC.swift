//
//  ViewController.swift
//  Coder-Swag
//
//  Created by Mohammed Mohsin Sayed on 11/24/18.
//  Copyright © 2018 Mohammed Mohsin Sayed. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300.0
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell") as? CategoryCell  {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.setupCell(category: category)
            
            return cell
        }
        
        return CategoryCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let productsVC = segue.destination as? ProductsVC {
             
            assert(sender as? Category != nil)
            productsVC.initProducts(category: sender as! Category)
        }
    }
}

