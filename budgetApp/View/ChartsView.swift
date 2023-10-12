//
//  ChartsView.swift
//  budgetApp
//
//  Created by Aysha Hameed on 11/10/2023.
//

import SwiftUI
import Charts

struct ChartsView: View {
    
    private var items = [
        (name: "Rent", count: 1750),
        (name: "Transportation", count: 700),
        (name: "Grocery", count: 500),
        (name: "Electricity", count: 750),
        (name: "EMI", count: 2750)
    ]

    var body: some View {
        if #available(iOS 17.0, *) {
            Chart {
                ForEach (items, id: \.name) { element in
                    SectorMark(
                        angle: .value("Money Spent", element.count),
                        innerRadius: .ratio(0.5),
                        angularInset: 1.5
                    )
                    .cornerRadius(1.5)
                    .foregroundStyle(by: .value("name", element.name))
                    .annotation(position: .overlay) {                        Text("\(element.count)")
                            .font(.headline)
                            .foregroundStyle(.white)
                    }
                    
                }
            }
            .frame(height: 320)
        }else {
            Text("test")
        }
           
    }
}

struct ChartsView_Previews: PreviewProvider {
    static var previews: some View {
        ChartsView()
    }
}
