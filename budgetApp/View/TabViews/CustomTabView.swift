//
//  CustomTabView.swift
//  budgetApp
//
//  Created by Aysha Hameed on 11/10/2023.
//

import SwiftUI

struct CustomTabView: View {
    
    @State private var selectedTabIndex = 2
    
    var body: some View {
        TabView(selection: $selectedTabIndex){
            HistoryView()
                .tabItem{
                    Label("History", systemImage: "tray.full.fill")
                }
                .tag(1)
            
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "house.fill")
                }
                .tag(2)
            
            ExpenseView()
                .tabItem{
                    Label("Expenses", systemImage: "list.bullet.rectangle.fill")
                }
                .tag(3)
        }
        .tint(Color("Primary"))
        
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
