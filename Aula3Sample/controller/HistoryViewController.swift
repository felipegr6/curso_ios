//
//  HistoryViewController.swift
//  Aula3Sample
//
//  Created by Matheus on 2019-02-20.
//  Copyright © 2019 Mocka. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController, UserDelegate, HistoryDelegate {
    
    @IBOutlet weak var tableHistory: UITableView!
    var myOrders: [History] = [] {
        didSet {
            myOrders.sort { (h1:History, h2:History) -> Bool in
                return h1.createdAt > h2.createdAt
            }
            tableHistory.reloadData()
        }
    }
    var user:User?

    func updateUser(user:User?) {
        self.user = user
    }
    
    func addItem(item: History) {
        myOrders.append(item)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else {
            return
        }
        
        switch identifier {
        case "showCheckout":
            let vc = segue.destination as? CheckoutViewController
            vc?.delegate = self
        case "showOrder":
            let vc = segue.destination as? HistoryDetailViewController
            let itemHistory = sender as? History
            vc?.item = itemHistory
        case "showEditUser":
            let vc = segue.destination as? UserController
            vc?.user = user
            vc?.delegate = self

        default:
            break
        }
    }
}

extension HistoryViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showOrder", sender: myOrders[indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myOrders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        if let labelOrderThings = cell.viewWithTag(22) as? UILabel,
            let labelOrderStatus = cell.viewWithTag(44) as? UILabel {
            let i = myOrders[indexPath.row]
            labelOrderThings.text = "\(i.name) \(i.createdAt)" // Aqui vai nome do pedido, data..
            labelOrderStatus.text = i.status.rawValue // Aqui vai o status do pedido
        }

        return cell
    }
}
