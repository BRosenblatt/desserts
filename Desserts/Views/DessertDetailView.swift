//
//  DessertDetailView.swift
//  Desserts
//
//  Created by Becca Kauper on 7/27/24.
//

import SwiftUI

struct DessertDetailView: View {
    var meal: Meal
    var body: some View {
        VStack(alignment: .leading) {
            Image(meal.image)
                .resizable()
                .frame(width: 375, height: 375)
                .mask(RoundedRectangle(cornerRadius: 8))
            Text(meal.name)
                .font(.largeTitle)
            Text("Ingredients")
                .font(.title2)
                .fontWeight(.semibold)
            Text("Ingredients list")
                .font(.subheadline)
            Text("Instructions")
                .font(.title2)
                .fontWeight(.semibold)
            Text("Instructions steps")
                .font(.subheadline)
        }
    }
}

#Preview {
    DessertDetailView(meal: .sample1)
}
