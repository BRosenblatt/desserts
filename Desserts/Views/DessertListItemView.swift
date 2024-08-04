//
//  DessertListItemView.swift
//  Desserts
//
//  Created by Becca Kauper on 7/27/24.
//

import SwiftUI

struct DessertListItemView: View {    
    var meal: MealModel
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: meal.image)) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .mask(RoundedRectangle(cornerRadius: 8))
            } placeholder: {
                Image(systemName: "birthday.cake.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            
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
