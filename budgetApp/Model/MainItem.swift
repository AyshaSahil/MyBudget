//
//  MainItem.swift
//  budgetApp
//
//  Created by Aysha Sahil on 12/10/2023.
//

import Foundation


struct MainItem: Decodable {
    
    var Name: String?
    var StandardAmount: Double?
    var Deleted: Bool?

    enum CodingKeys: String, CodingKey {
        case Name, StandardAmount, Deleted
    }
    
}
