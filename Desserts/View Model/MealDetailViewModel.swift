//
//  MealDetailViewModel.swift
//  Desserts
//
//  Created by Becca Kauper on 8/2/24.
//

import Foundation

@MainActor
class MealDetailViewModel: ObservableObject {
    @Published var mealDetails: MealDetailModel?
        
    func fetchMealDetails(id: String) async {
        print("fetchMealDetails was called")
        guard let mealDetails: MealDetailModel = await APIClient.getMealDetails(id: id) else {
            print("failed to fetch")
            return
        }
        self.mealDetails = mealDetails
        print("fetchMealDetails: success")
    }
}
