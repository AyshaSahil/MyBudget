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
        
        homeData.Month = currentMonth
        homeData.Year = currentYear
        
        //get Data for the current year and month
        homeData.SpentAmount = 2000.00
        homeData.BudgetedAmount = 10000.00
        
    }
    
    func getBalanceRemaining() -> Double {
        guard let stdAmount = homeData.BudgetedAmount, let spent = homeData.SpentAmount else { return 0.0 }
        return stdAmount - spent
    }
    
}
