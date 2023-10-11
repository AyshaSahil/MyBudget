//
//  Balance.swift
//  budgetApp
//
//  Created by Aysha Hameed on 11/10/2023.
//

import Foundation


struct Balance: Decodable, Identifiable {
    
    var id: Int?
    var year: Int?
    var month: String?
    var spentAmount: Double?
    var standardAmount: Double?

    enum CodingKeys: String, CodingKey {
        case id, year, month, spentAmount, standardAmount
    }
    
}

