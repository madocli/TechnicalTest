//
//  ViewController.swift
//  TechnicalTestApp
//
//  Created by Maria Donet Climent on 15/1/19.
//  Copyright © 2019 MariaDonet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    var presenter: AccountListPreseter!
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - View Controller Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorStyle = .singleLine
        tableView.tableFooterView = UIView(frame: .zero)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Switch", style: .plain, target: self, action: #selector(switchVisibleAccounts(_:)))
        presenter.viewReady()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @objc
    func switchVisibleAccounts(_ sender: Any) {
        presenter.setVisible()
    }
    
    private func set(title: String) {
        DispatchQueue.main.async {
            self.title = title
        }
    }
}

// MARK: - Table View
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOfAccounts
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: AccountTableViewCell.ID, for: indexPath) as! AccountTableViewCell
        presenter.set(cell: cell, forRow: indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
}

extension ViewController: AccountListViewInterface {
    func reloadData() {
        tableView.reloadData()
    }
    
    func set(visible: Bool) {
        if visible {
            set(title: "Visible accounts")
        } else {
            set(title: "All accounts")
        }
    }
}
