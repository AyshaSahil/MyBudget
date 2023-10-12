//
//  TitleBarView.swift
//  budgetApp
//
//  Created by Aysha Sahil on 12/10/2023.
//

import SwiftUI

struct TitleBarView: View {
    
    @State var title: String
    
    var body: some View {
        Text(title)
            .font(.title)
            .fontWeight(.bold)
            .foregroundStyle(Color(.white))
    }
}

#Preview {
    TitleBarView(title: "Heading")
}
