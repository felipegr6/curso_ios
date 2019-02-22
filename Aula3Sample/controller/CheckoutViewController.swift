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
        let item: Product = Product("xyx", 3.0)
        let history:History = History(item: item, status: PaymentStatus.done, createdAt: Date())
        delegate?.addItem?(item: history)
        closeModal()
    }
    
    @IBAction func cancel(_ sender: UIButton) {
        closeModal()
    }
    
    private func closeModal() {
        dismiss(animated: true, completion: nil)
    }
}
