//
//  MealViewModel.swift
//  Desserts
//
//  Created by Becca Kauper on 8/1/24.
//

import Foundation

@MainActor
class MealViewModel: ObservableObject {
    @Published var meals = [Meal]()
    
    func fetchMeals() async {
        guard let mealData: [Meal] = await APIClient.getMealsList() else {
            return }
        meals = mealData
    }
}
