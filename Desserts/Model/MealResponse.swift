//
//  MealResponse.swift
//  Desserts
//
//  Created by Matthew Kauper on 7/27/24.
//

import UIKit

struct MealListResponse: Codable {
    let meals: [Meal]
}

struct Meal: Identifiable, Codable, Hashable {
    let name: String
    let image: String
    let id: String
    
    enum CodingKeys: String, CodingKey {
        case name = "strMeal"
        case image = "strMealThumb"
        case id = "idMeal"

    }
    
    // Test data
    static let sample1 = Meal(name: "Affogato", image: "Placeholder 1", id: "1")
    static let sample2 = Meal(name: "Black Forest Cake", image: "Placeholder 2", id: "2")
    static let sample3 = Meal(name: "Key Lime Pie", image: "Placeholder 3", id: "3")
    static let sample4 = Meal(name: "Salted Caramel Cheesecake jaehvlhnnkeqbvkhbkewbvbwe kwuegbhkuvbw", image: "Placeholder 4", id: "4")
    
    static let sampleData: [Meal] = [sample1, sample2, sample3, sample4]
}
