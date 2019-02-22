//
//  NewProductDelegate.swift
//  Aula3Sample
//
//  Created by Virtual Machine on 22/02/19.
//  Copyright © 2019 Mocka. All rights reserved.
//

import Foundation

@objc protocol NewProductDelegate {
    @objc optional func addNewProduct(product:Product)
}
