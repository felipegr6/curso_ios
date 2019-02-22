//
//  HistoryDelegate.swift
//  Aula3Sample
//
//  Created by Virtual Machine on 21/02/19.
//  Copyright © 2019 Mocka. All rights reserved.
//

import Foundation

@objc protocol HistoryDelegate {
    @objc optional func addItem(item:History)
}
