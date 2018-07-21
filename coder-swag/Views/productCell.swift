//
//  productCell.swift
//  coder-swag
//
//  Created by Mostafa Alaa on 7/21/18.
//  Copyright © 2018 Mostafa Alaa. All rights reserved.
//

import UIKit

class productCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage:UIImageView!
    @IBOutlet weak var productName:UILabel!
    @IBOutlet weak var productPrice:UILabel!
    
    
    func updateView(product : Product){
        productImage.image=UIImage(named: product.imageName)
        productName.text=product.title
        productPrice.text=product.price
        
        
    }
}
