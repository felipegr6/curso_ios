//
//  CheckoutViewController.swift
//  Aula3Sample
//
//  Created by Matheus on 2019-02-20.
//  Copyright © 2019 Mocka. All rights reserved.
//

import UIKit

class CheckoutViewController: UIViewController {

    weak var delegate:HistoryDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func buy(_ sender: UIButton) {
        // aqui vai a função de compra
        let item:History = History(name: "xyz", value: 3.0, status: PaymentStatus.done, createdAt: Date())
        delegate?.addItem?(item: item)
    }
    
    @IBAction func cancel(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
