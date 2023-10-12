//
//  CustomLabelView.swift
//  budgetApp
//
//  Created by Aysha Sahil on 12/10/2023.
//

import SwiftUI

struct CustomLabelView: View {
    
    @State var labelText: String
    @State var valueText: String
    
    var body: some View {
        VStack{
            Spacer()
            Text(labelText)
                .font(.title2)
                .fontWeight(.semibold)
            Text(valueText)
                .font(.title)
                .fontWeight(.bold)
            Spacer()
        }
        .padding()
        .frame(width: 160, height: 100)
        .background(Color("Primary"))
        .cornerRadius(10.0)
        .foregroundColor(.white)
        .shadow(radius: 5)
        
    }
}

#Preview {
    CustomLabelView(labelText: "Budget", valueText: "0.0")
}
