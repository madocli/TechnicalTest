//
//  AccountListViewInterface.swift
//  TechnicalTestApp
//
//  Created by Maria Donet Climent on 15/1/19.
//  Copyright © 2019 MariaDonet. All rights reserved.
//

import Foundation

protocol AccountListViewInterface: class {
    func reloadData()
}

protocol AccountView: class {
    func set(name: String)
    func set(amount: Double, currency: String)
    func set(iban: String)
}
