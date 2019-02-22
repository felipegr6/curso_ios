//
//  Item.swift
//  Aula3Sample
//
//  Created by Virtual Machine on 22/02/19.
//  Copyright © 2019 Mocka. All rights reserved.
//

import Foundation

class Product:NSObject {
    var name:String
    var value:Double
    
    init(_ name: String, _ value: Double) {
        self.name = name
        self.value = value
    }
    
    static func ==(lhs:Product, rhs:Product) -> Bool{
        return lhs.name == rhs.name &&
        lhs.value == rhs.value
    }
}
