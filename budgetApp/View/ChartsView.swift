//
//  ChartsView.swift
//  budgetApp
//
//  Created by Aysha Hameed on 11/10/2023.
//

import SwiftUI
import Charts

struct ChartsView: View {
    
    private var coffeeSales = [
        (name: "Americano", count: 120),
        (name: "Cappuccino", count: 234),
        (name: "Espresso", count: 62),
        (name: "Latte", count: 625),
        (name: "Mocha", count: 320),
        (name: "Affogato", count: 50)
    ]
    
    var body: some View {
        Chart{
            ForEach(coffeeSales, id: \.name) { coffee in
            if #available(iOS 17.0, *) {
                
                    
                    SectorMark(
                        angle: .value("Cup", coffee.count)
                    )
                    .foregroundStyle(by: .value("Type", coffee.name))
                } 
                else {
                    // Fallback on earlier versions
                }
                }
        }
           
    }
}

struct ChartsView_Previews: PreviewProvider {
    static var previews: some View {
        ChartsView()
    }
}
