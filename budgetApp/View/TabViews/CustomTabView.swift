//
//  CustomTabView.swift
//  budgetApp
//
//  Created by Aysha Hameed on 11/10/2023.
//

import SwiftUI

struct CustomTabView: View {
    var body: some View {
        TabView{
            HistoryView()
                .tabItem{
                    Label("History", systemImage: "tray.full.fill")
                }
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "house.fill")
                }
            ExpenseView()
                .tabItem{
                    Label("Expenses", systemImage: "list.bullet.rectangle.fill")
                }
        }
        .tint(Color("Primary"))
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
