//
//  DessertList.swift
//  Desserts
//
//  Created by Becca Kauper on 7/27/24.
//

import SwiftUI

struct DessertList: View {
    var meals: [Meal]
    
    var body: some View {
        GeometryReader { metrics in
            ScrollView {
                let itemWidth = metrics.size.width / 2 - 30
                let columns = [
                    GridItem(.fixed(itemWidth), spacing: 20),
                    GridItem(.fixed(itemWidth), spacing: 20)
                ]
                LazyVGrid(columns: columns) {
                    ForEach(meals) { meal in
                        DessertListItemView(meal: meal)
                    }
                    .padding(.bottom, -20)
                }
            }
            .padding(.all)
        }
    }
}

#Preview {
    DessertList(meals: Meal.sampleData)
}
