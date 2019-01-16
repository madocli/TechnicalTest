//
//  AccountListPreseter.swift
//  TechnicalTestApp
//
//  Created by Maria Donet Climent on 15/1/19.
//  Copyright © 2019 MariaDonet. All rights reserved.
//

import Foundation

class AccountListPreseter {
    
    // MARK: - Properties
    private weak var view: AccountListViewInterface?
    private var arrayAccounts = [Account]()
    private var setVisibleAccounts = false
    var initData = AccountModel()
    
    var numberOfAccounts: Int {
        return arrayAccounts.count
    }
    
    // MARK: - Initializer
    init(viewController: AccountListViewInterface) {
        self.view = viewController
    }
    
    func viewReady() {
        if let accounts = initData.accounts {
            arrayAccounts = accounts
        }
        view?.reloadData()
        view?.set(visible: setVisibleAccounts)
    }
    
    func setVisible() {
        setVisibleAccounts = !setVisibleAccounts
        if let accounts = initData.accounts {
            if setVisibleAccounts {
                arrayAccounts = accounts.filter( { $0.isVisible == true } )
            } else {
                arrayAccounts = accounts
            }
        }
        view?.reloadData()
    }
    
    func set(cell: AccountView, forRow: Int) {
        if forRow < numberOfAccounts {
            let account = arrayAccounts[forRow]
            cell.set(name: account.accountName ?? account.productName ?? "")
            cell.set(amount: account.accountBalanceInCents ?? 0.0, currency: account.accountCurrency ?? "€")
            cell.set(iban: account.iban ?? account.productName ?? "")
        }
    }
}
