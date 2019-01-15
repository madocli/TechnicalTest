//
//  AccountModel+TestData.swift
//  TechnicalTestApp
//
//  Created by Maria Donet Climent on 15/1/19.
//  Copyright © 2019 MariaDonet. All rights reserved.
//

import Foundation

class TestData {
    static let appData = "{{\"accounts\": [{\"accountBalanceInCents\": 985000,\"accountCurrency\": \"EUR\",\"accountId\": 748757694,\"accountName\": \"Hr P L G N StellingTD\",\"accountNumber\": 748757694,\"accountType\": \"PAYMENT\",\"alias\": \"\",\"isVisible\": true,\"iban\": \"NL23INGB0748757694\"},{\"accountBalanceInCents\": 1000000,\"accountCurrency\": \"EUR\",\"accountId\": 700000027559,\"accountName\": \",\",\"accountNumber\": 748757732,\"accountType\": \"PAYMENT\",\"alias\": \"\",\"isVisible\": false,\"iban\": \"NL88INGB0748757732\"},{\"accountBalanceInCents\": 15000,\"accountCurrency\": \"EUR\",\"accountId\": 700000027559,\"accountName\": \"\",\"accountNumber\": \"H 177-27066\",\"accountType\": \"SAVING\",\"alias\": \"G\\UfffdLSAVINGSdiacrits\",\"iban\": \",\"isVisible\": true,\"linkedAccountId\": 748757694,\"productName\": \"Oranje Spaarrekening\",\"productType\": 1000,\"savingsTargetReached\": 1,\"targetAmountInCents\": 2000}],\"failedAccountTypes\" : \"CREDITCARDS\",\"returnCode\" : \"OK\"}"
    
    static func convertToArrayDictionary(text: String) -> [NSDictionary]? {
        if let data = text.data(using: .utf8) {
            do {
                return try JSONSerialization.jsonObject(with: data, options: []) as? [NSDictionary]
            } catch {
                print(error.localizedDescription)
            }
        }
        return nil
    }
    
    static func convertToDictionary(text: String) -> NSDictionary? {
        if let data = text.data(using: .utf8) {
            do {
                return try JSONSerialization.jsonObject(with: data, options: []) as? NSDictionary
            } catch {
                print(error.localizedDescription)
            }
        }
        return nil
    }

}
