//
//  Account.swift
//  TechnicalTestApp
//
//  Created by Maria Donet Climent on 15/1/19.
//  Copyright © 2019 MariaDonet. All rights reserved.
//

import Foundation

struct Account {
    var accountBalanceInCents: Double?
    var accountCurrency: String?
    var accountId: Int64?
    var accountName: String?
    var accountNumber: String?
    var accountType: String?
    var alias: String?
    var iban: String?
    var isVisible: Bool?
    var linkedAccountId: Int64?
    var productName: String?
    var productType: Int?
    var savingsTargetReached: Int?
    var targetAmountInCents: Double?
    
    
    init(dictionary: NSDictionary) {
        self.accountBalanceInCents = dictionary["accountBalanceInCents"] as? Double
        self.accountCurrency = dictionary["accountCurrency"] as? String
        self.accountId = dictionary["accountId"] as? Int64
        self.accountName = dictionary["accountName"] as? String
        self.accountNumber = dictionary["accountNumber"] as? String
        self.accountType = dictionary["accountType"] as? String
        self.alias = dictionary["alias"] as? String
        self.iban = dictionary["iban"] as? String
        self.isVisible = dictionary["isVisible"] as? Bool
        self.linkedAccountId = dictionary["linkedAccountId"] as? Int64
        self.productName = dictionary["productName"] as? String
        self.productType = dictionary["productType"] as? Int
        self.savingsTargetReached = dictionary["savingsTargetReached"] as? Int
        self.targetAmountInCents = dictionary["targetAmountInCents"] as? Double
    }
}
