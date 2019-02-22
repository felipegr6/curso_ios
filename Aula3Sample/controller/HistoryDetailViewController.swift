//
//  HistoryDetailViewController.swift
//  Aula3Sample
//
//  Created by Virtual Machine on 21/02/19.
//  Copyright © 2019 Mocka. All rights reserved.
//

import UIKit

class HistoryDetailViewController: UIViewController {
    
    weak var item:History?
    @IBOutlet weak var historyLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let i = item else {return}
        
        historyLabel.text = i.formatInfo()
        
    }
}


extension History {
    func formatInfo() -> String {
        return "\(self.name)\nR$\(self.value)\n\(self.status.rawValue.uppercased())"
    }
}
