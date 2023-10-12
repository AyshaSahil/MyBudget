//
//  Balance.swift
//  budgetApp
//
//  Created by Aysha Hameed on 11/10/2023.
//

import Foundation


struct Balance: Decodable {
    
    var Year: Int?
    var Month: String?
    var SpentAmount: Double?
    var BudgetedAmount: Double?

    enum CodingKeys: String, CodingKey {
        case Year, Month, SpentAmount, BudgetedAmount
    }
    
}

