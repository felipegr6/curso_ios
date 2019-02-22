//
//  UserDelegate.swift
//  Aula3Sample
//
//  Created by Virtual Machine on 21/02/19.
//  Copyright © 2019 Mocka. All rights reserved.
//

import Foundation

@objc protocol UserDelegate {
    @objc optional func updateUser(user:User?)
}
