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
                .frame(width: 150, height: 150)
                .mask(RoundedRectangle(cornerRadius: 8))
            Text(meal.name)
                .font(.subheadline)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .lineLimit(4, reservesSpace: true)
        }
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
