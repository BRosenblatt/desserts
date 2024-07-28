//
//  DessertListItemView.swift
//  Desserts
//
//  Created by Becca Kauper on 7/27/24.
//

import SwiftUI

struct DessertListItemView: View {
    var body: some View {
        VStack {
            Image("Placeholder")
                .resizable()
                .frame(width: 150.0, height: 150.0)
            Text("Dessert Recipe Name")
                .font(.subheadline)
            Spacer()
        }
    }
}

#Preview {
    DessertListItemView()
}
