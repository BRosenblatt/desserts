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
    DessertListItemView(meal: .sample1)
}
