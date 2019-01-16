//
//  AccountTableViewCell.swift
//  TechnicalTestApp
//
//  Created by Maria Donet Climent on 16/1/19.
//  Copyright © 2019 MariaDonet. All rights reserved.
//

import UIKit

class AccountTableViewCell: UITableViewCell {
    static let ID = "AccountTableViewCell"
    @IBOutlet weak var accountNameLbl: UILabel!
    @IBOutlet weak var amountLbl: UILabel!
    @IBOutlet weak var ibanLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension AccountTableViewCell: AccountView {
    func set(name: String) {
        accountNameLbl.text = name
    }
    
    func set(amount: Double, currency: String) {
        amountLbl.text = "\(amount) \(currency)"
    }
    
    func set(iban: String) {
        ibanLbl.text = iban
    }
}
