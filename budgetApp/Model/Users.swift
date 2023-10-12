//
//  Users.swift
//  budgetApp
//
//  Created by Aysha Sahil on 12/10/2023.
//

import Foundation

struct Users: Decodable {
    
    var UserName: String?
    var Password: String?
    var CreatedDate: String?
    var Amount: Double?

    enum CodingKeys: String, CodingKey {
        case UserName, Password, CreatedDate, Amount
    }
    
}
