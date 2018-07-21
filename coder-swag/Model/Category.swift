//
//  Category.swift
//  coder-swag
//
//  Created by Mostafa Alaa on 7/21/18.
//  Copyright © 2018 Mostafa Alaa. All rights reserved.
//

import Foundation

struct Category{
    private(set) public var title:String
    private(set) public var imageName:String
    
    init(title:String,imageName:String) {
        self.title=title
        self.imageName=imageName
    }
}
