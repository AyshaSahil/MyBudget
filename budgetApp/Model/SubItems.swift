//
//  SubItems.swift
//  budgetApp
//
//  Created by Aysha Sahil on 12/10/2023.
//

import Foundation

struct SubItems: Decodable {
    
    var Name: String?
    var Date: String?
    var Comment: String?
    var AmountSpent: Double?
    var Deleted: Bool?

    enum CodingKeys: String, CodingKey {
        case Name, Date, Comment, AmountSpent, Deleted
    }
    
}
