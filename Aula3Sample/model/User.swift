//
//  User.swift
//  Aula3Sample
//
//  Created by Virtual Machine on 21/02/19.
//  Copyright © 2019 Mocka. All rights reserved.
//

import Foundation

class User:NSObject {
    var name:String?
    var email:String?
    
    func showName() -> String {
        guard let n = name else {
            return "Anônimo"
        }
        return n.uppercased()
    }
    
    static func == (lhs: User, rhs: User) -> Bool {
        return lhs.name == rhs.name &&
        lhs.email == rhs.email
    }
}
