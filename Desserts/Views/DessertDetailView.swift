//
//  DessertDetailView.swift
//  Desserts
//
//  Created by Becca Kauper on 7/27/24.
//

import SwiftUI

struct DessertDetailView: View {
    var meal: MealDetailResponse
    
    var body: some View {
            VStack(alignment: .leading) {
                Image(meal.image)
                    .resizable()
                    .mask(RoundedRectangle(cornerRadius: 8))
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal)
                VStack(alignment: .leading) {
                    Text(meal.name)
                        .font(.largeTitle)
                    
                    Divider()
                    
                    Text("Ingredients")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("\(meal.ingredient1)")
                        .font(.subheadline)
                    Text(meal.ingredient2)
                        .font(.subheadline)

                    Text("Instructions")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Text(meal.instructions)
                        .font(.subheadline)
                }
                .padding(.horizontal)
            }
            .padding(.top, -40)
        }
    }

#Preview {
    DessertDetailView(meal: .sample1)
}
