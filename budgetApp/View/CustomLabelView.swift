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
        HStack{
            Text(labelText)
            Spacer()
            Text(valueText)
        }
        .padding()
    }
}

#Preview {
    CustomLabelView(labelText: "test", valueText: "value")
}
