//
//  categoryCell.swift
//  coder-swag
//
//  Created by Mostafa Alaa on 7/21/18.
//  Copyright © 2018 Mostafa Alaa. All rights reserved.
//

import UIKit

class categoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage:UIImageView!
    @IBOutlet weak var categoryTitle:UILabel!
    
   
    func updateCell(category:Category){
        categoryImage.image=UIImage(named: category.imageName)
        categoryTitle.text=category.title
        
    }

}
