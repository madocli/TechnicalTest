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
        // TODO: get [nsDictionary]
        self.accounts = dictionary["accounts"] as? [Account]
        self.failedAccountTypes = dictionary["failedAccountTypes"] as? String
        self.returnCode = dictionary["returnCode"] as? String
    }
    
    
}
