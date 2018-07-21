//
//  ProductsVC.swift
//  coder-swag
//
//  Created by Mostafa Alaa on 7/22/18.
//  Copyright © 2018 Mostafa Alaa. All rights reserved.
//

import UIKit

class ProductsVC:UIViewController,UICollectionViewDelegate,UICollectionViewDataSource{
   
    @IBOutlet weak var productsCollection:UICollectionView!
    
    
    private(set) public var products = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.delegate=self
        productsCollection.dataSource=self
    }
    
    
    func initProducts(category:Category){
        
        products = DataService.instance.getProducts(forCategorytitle: category.title)
        navigationItem.title=category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as? productCell{
            
            let product=products[indexPath.row]
            cell.updateView(product: product)
            return cell
            
        }else{
            return productCell()
        }
    }
    
}
