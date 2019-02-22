//
//  UserController.swift
//  Aula3Sample
//
//  Created by Virtual Machine on 21/02/19.
//  Copyright © 2019 Mocka. All rights reserved.
//

import UIKit

class UserController:UIViewController {
    
    weak var delegate:UserDelegate?
    weak var user:User?
    
    @IBOutlet weak var tfName: UITextField!
    
    @IBOutlet weak var tfEmail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        guard let u = user else {return}
        
        tfName.text = u.name
        tfEmail.text = u.email
    }
    
    @IBAction func submit(_ sender: UIButton) {
        let u:User = User()
        u.name = tfName.text
        u.email = tfEmail.text
        delegate?.updateUser?(user: u)
        
        navigationController?.popViewController(animated: true)
        
        dismiss(animated: true, completion: nil)
    }
}
