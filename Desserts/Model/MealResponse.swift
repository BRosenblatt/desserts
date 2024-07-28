//
//  MealResponse.swift
//  Desserts
//
//  Created by Matthew Kauper on 7/27/24.
//

import Foundation

struct MealListResponse: Codable {
    let meals: [Meal]
}

struct Meal: Identifiable, Codable {
    let name: String
    let image: String
    let id: String
    
    enum CodingKeys: String, CodingKey {
        case name = "strMeal"
        case image = "strMealThumb"
        case id = "idMeal"

    }
}
