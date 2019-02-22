//
//  CreateProductViewController.swift
//  Aula3Sample
//
//  Created by Virtual Machine on 22/02/19.
//  Copyright © 2019 Mocka. All rights reserved.
//

import UIKit

class CreateProductViewController: UIViewController {
    weak var delegate:NewProductDelegate?
    
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfValue: UITextField!
    
    @IBAction func submit(_ sender: UIButton) {
    }
}
