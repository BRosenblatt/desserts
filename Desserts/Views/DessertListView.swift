//
//  DessertList.swift
//  Desserts
//
//  Created by Becca Kauper on 7/27/24.
//

import SwiftUI

struct DessertList: View {
    @StateObject var mealViewModel = MealViewModel()
    
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
                        ForEach(mealViewModel.meals) { meal in
                            NavigationLink {
                                DessertDetailView(mealId: meal.id)
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
        .onAppear {
            if mealViewModel.meals.isEmpty {
                Task {
                    await mealViewModel.fetchMeals()
                }
            }
        }
    }
}

#Preview {
    DessertList()
}
