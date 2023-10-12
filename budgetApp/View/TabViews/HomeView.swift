//
//  HomeView.swift
//  budgetApp
//
//  Created by Aysha Hameed on 11/10/2023.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var homeViewModel = HomeViewModel()
    
    var speed = 0.25
    let gradient = Gradient(colors: [.green, .orange, .pink, .red])

    var body: some View {
        
        ZStack{
            
            Rectangle()
                .foregroundColor(Color("Primary"))
                .ignoresSafeArea()
            
            VStack(spacing: 20){
                
                TitleBarView(title: "Home")
                
                ScrollView{
                    HStack{
                        Text(homeViewModel.balance.Month ?? "")
                            .font(.title2)
                            .fontWeight(.medium)
                        Spacer()
                        Text("Year: \(String(homeViewModel.balance.Year ?? 2022))")
                            .font(.title2)
                            .fontWeight(.medium)
                    }
                    .padding(.top, 20)
                    .padding(.horizontal, 20)
                    
                    
                    if #available(iOS 17.0, *) {
                        ChartsView()
                            .padding(.horizontal, 80)
                    }
                    
                    
                    HStack(spacing: 20){
                        CustomLabelView(labelText: "Spent", valueText: String(homeViewModel.balance.SpentAmount ?? 0.0))
                        CustomLabelView(labelText: "Balance", valueText: String(homeViewModel.getBalanceRemaining()))
                    }
                    .padding()
                    .padding(.top, 20)
                    
                    Gauge(value: speed) {
                        Text("Expense")
                    }
                    .padding()
                    .tint(gradient)
                }
                .background(.white)
                
                
            }
        }
        .onAppear {
            homeViewModel.getCurrentBalance()
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
