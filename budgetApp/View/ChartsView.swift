//
//  ChartsView.swift
//  budgetApp
//
//  Created by Aysha Hameed on 11/10/2023.
//

import SwiftUI
import Charts

struct ChartsView: View {
    
    
    var data: [(type: String, amount: Double)] {
            [(type: "Spent", amount: 2000),
             (type: "Available", amount: 10000) ] }
    
    var body: some View {
        ZStack{
            Text("tset")
        }
    }
}

struct ChartsView_Previews: PreviewProvider {
    static var previews: some View {
        ChartsView()
    }
}
