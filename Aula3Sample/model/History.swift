//
//  History.swift
//  Aula3Sample
//
//  Created by Virtual Machine on 21/02/19.
//  Copyright © 2019 Mocka. All rights reserved.
//

import Foundation

class History: NSObject {
    
    var name:String
    var value:Double
    var status:PaymentStatus
    var createdAt:Date
    
    init(name:String, value:Double, status:PaymentStatus, createdAt:Date) {
        self.name = name
        self.value = value
        self.status = status
        self.createdAt = createdAt
    }
    
    static func == (lhs: History, rhs: History) -> Bool {
        return lhs.name == rhs.name &&
            lhs.value == rhs.value &&
            lhs.status == rhs.status &&
            lhs.createdAt == rhs.createdAt
    }
    
}
