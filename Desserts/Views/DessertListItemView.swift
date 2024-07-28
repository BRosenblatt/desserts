//
//  DessertListItemView.swift
//  Desserts
//
//  Created by Becca Kauper on 7/27/24.
//

import SwiftUI

struct DessertListItemView: View {    
    var meal: Meal
    
    var body: some View {
        VStack {
            Image(meal.image)
                .resizable()
                .shadow(radius: 5)
                .border(.gray, width: 1)
                .frame(width: 150.0, height: 150.0)
            Text(meal.name)
                .font(.subheadline)
        }
        Spacer()
    }
}

#Preview {
    Group {
        DessertListItemView(meal: .sample1)
        DessertListItemView(meal: .sample2)
        DessertListItemView(meal: .sample3)
        DessertListItemView(meal: .sample4)
    }
}
