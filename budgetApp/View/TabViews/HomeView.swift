//
//  HomeView.swift
//  budgetApp
//
//  Created by Aysha Hameed on 11/10/2023.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var homeViewModel = HomeViewModel()

    var body: some View {
    
        VStack{
            HStack{
                Text("Month: \(homeViewModel.balance.month ?? "")")
                Spacer()
                Text("Year: \(String(homeViewModel.balance.year ?? 2022))")
            }
            .padding()
            .foregroundColor(Color("Primary"))
            
            
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
