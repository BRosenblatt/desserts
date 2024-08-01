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
        NavigationStack {
            GeometryReader { metrics in
                ScrollView {
                    let itemWidth = metrics.size.width / 2 - 30
                    let columns = [
                        GridItem(.fixed(itemWidth), spacing: 20),
                        GridItem(.fixed(itemWidth), spacing: 20)
                    ]
                    LazyVGrid(columns: columns) {
                        ForEach(meals) { meal in
                            NavigationLink {
                                DessertDetailView(meal: .sample1)
                            } label: {
                                DessertListItemView(meal: meal)
                            }
                            .buttonStyle(PlainButtonStyle())
                            .padding(.bottom, -40)
                        }
                        .navigationTitle("Desserts")
                    }
                }
                .padding(.all)
            }
        }
    }
    
    func fetchMeal(for: String) {
        // make API call
    }
}

#Preview {
    DessertList(meals: Meal.sampleData)
}
