//
//  ViewController.swift
//  coder-swag
//
//  Created by Mostafa Alaa on 7/21/18.
//  Copyright © 2018 Mostafa Alaa. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    @IBOutlet weak var categoriesView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       categoriesView.delegate=self
        categoriesView.dataSource=self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell=tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? categoryCell{
            let category=DataService.instance.getCategories()[indexPath.row]
            cell.updateCell(category: category)
            return cell
            
            
        }else{
            return categoryCell()
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        
        performSegue(withIdentifier: "productsVC", sender: category)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC{
            let barBtn=UIBarButtonItem()
            barBtn.title=""
            navigationItem.backBarButtonItem=barBtn
            assert(sender as? Category != nil)
            productsVC.initProducts(category:sender as! Category)
            
            
        }
    }

}

