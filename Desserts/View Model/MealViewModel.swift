//
//  MealViewModel.swift
//  Desserts
//
//  Created by Becca Kauper on 8/1/24.
//

import Foundation

@MainActor
class MealViewModel: ObservableObject {
    @Published var meals = [MealModel]()
    
    func fetchMeals() async {
        guard let meals: [MealModel] = await APIClient.getMealsList() else {
            return }
        self.meals = meals
    }
}
