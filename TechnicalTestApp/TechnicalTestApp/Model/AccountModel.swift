//
//  AccountModel.swift
//  TechnicalTestApp
//
//  Created by Maria Donet Climent on 15/1/19.
//  Copyright © 2019 MariaDonet. All rights reserved.
//

import Foundation

struct AccountModel {
    var accounts: [Account]?
    var failedAccountTypes: String?
    var returnCode: String?
    
    init() {
    }
    
    init(dictionary: NSDictionary) {
        self.failedAccountTypes = dictionary["failedAccountTypes"] as? String
        self.returnCode = dictionary["returnCode"] as? String
        if let array = dictionary["accounts"] as? [NSDictionary] {
            setAccounts(arrayDictionary: array)
        }
    }
    
    mutating func setAccounts(arrayDictionary: [NSDictionary]) {
        var newArray = [Account]()
        for dictionaryAccount in arrayDictionary {
            let newAccount = Account(dictionary: dictionaryAccount)
            newArray.append(newAccount)
        }
        self.accounts = newArray
    }
}
