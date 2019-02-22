//
//  History.swift
//  Aula3Sample
//
//  Created by Virtual Machine on 21/02/19.
//  Copyright © 2019 Mocka. All rights reserved.
//

import Foundation

class History: NSObject {
    
    var status:PaymentStatus
    var createdAt:Date
    var user:User?
    var item:Product
    
    init(item:Product, status:PaymentStatus, createdAt:Date) {
        self.item = item
        self.status = status
        self.createdAt = createdAt
    }
    
    static func == (lhs: History, rhs: History) -> Bool {
        return lhs.item == rhs.item &&
            lhs.status == rhs.status &&
            lhs.createdAt == rhs.createdAt &&
            lhs.user == rhs.user
    }
}
