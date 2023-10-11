//
//  HomeViewModel.swift
//  budgetApp
//
//  Created by Aysha Hameed on 11/10/2023.
//

import Foundation
import UIKit

class HomeViewModel: ObservableObject {
    
    @Published private var homeData = Balance()
    
    var balance: Balance {
        return homeData
    }
    
    func getCurrentBalance() {
        
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "LLLL"
        
        let currentMonth = dateFormatter.string(from: now)
        let currentYear = Calendar.current.component(.year, from: now)
        
        homeData.month = currentMonth
        homeData.year = currentYear
        
        //get Data for the current year and month
        homeData.id = 1
        homeData.spentAmount = 2000.00
        homeData.standardAmount = 10000.00
        
    }
    
}
