//
//  DessertList.swift
//  Desserts
//
//  Created by Becca Kauper on 7/27/24.
//

import SwiftUI

struct DessertList: View {
    var meals: [Meal]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(meals) { meal in
                    DessertListItemView(meal: meal)
                }
            }
        }
    }
}

#Preview {
    DessertList(meals: Meal.sampleData)
}
