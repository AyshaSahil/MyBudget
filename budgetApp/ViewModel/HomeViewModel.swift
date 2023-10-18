//
//  HomeViewModel.swift
//  budgetApp
//
//  Created by Aysha Hameed on 11/10/2023.
//

import Foundation
import UIKit
import FirebaseFirestore
import FirebaseCore


class HomeViewModel: ObservableObject {
    
    @Published private var homeData = Balance()
    @Published var mainUser: Users?
    
    let db = Firestore.firestore()
    
    func fetchUser() {
            db.collection("Users").whereField("UserName", isEqualTo: "Aysha").getDocuments() { (querySnapshot, error) in
            if let error = error {
                print("Error getting documents: \(error)")
            } else {
                for document in querySnapshot!.documents {
                let data = document.data()
                    print(document.data())
                    do {
                        let jsonData = try JSONSerialization.data(withJSONObject: data)
                        let user = try JSONDecoder().decode(Users.self, from: jsonData)
                        self.mainUser = user
                    } catch {
                        print("Error decoding user: \(error)")
                    }
                }
            }
            return
        }
    }
    
//    
//    var user: Users {
//        self.fetchUser { user in
//            return user
//        }
//    }
//
//    var subItems: [SubItems] {
//        
//    }
//    
//    var mainItems: [MainItem] {
//        
//    }
    
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
    
    func getSpentPercent() -> Double {
        guard let stdAmount = mainUser?.Amount, let spent = homeData.SpentAmount else { return 0.0 }
        let ratio = 1 - (spent/stdAmount)
        return ratio
    }
    
    func getBalanceRemaining() -> Double {
        guard let stdAmount = mainUser?.Amount, let spent = homeData.SpentAmount else { return 0.0 }
        return stdAmount - spent
    }
    
}
