//
//  MealResponse.swift
//  Desserts
//
//  Created by Becca Kauper on 7/27/24.
//

import UIKit

struct MealListResponse: Codable {
    let meals: [MealModel]
}

struct MealModel: Identifiable, Codable, Hashable {
    let name: String
    let image: String
    let id: String
    
    enum CodingKeys: String, CodingKey {
        case name = "strMeal"
        case image = "strMealThumb"
        case id = "idMeal"

    }
    
    // Test data
    static let sample1 = MealModel(name: "Affogato", image: "Placeholder 1", id: "1")
    static let sample2 = MealModel(name: "Black Forest Cake", image: "Placeholder 2", id: "2")
    static let sample3 = MealModel(name: "Key Lime Pie", image: "Placeholder 3", id: "3")
    static let sample4 = MealModel(name: "Salted Caramel Cheesecake jaehvlhnnkeqbvkhbkewbvbwe kwuegbhkuvbw", image: "Placeholder 4", id: "4")
    
    static let sampleData: [MealModel] = [sample1, sample2, sample3, sample4]
}

struct MealDetailResponse: Codable {
    let meals: [MealDetailModel]
}

struct MealDetailModel: Identifiable, Codable, Hashable {
    let name: String
    let image: String
    let id: String
    let instructions: String
    let ingredient1: String
    let ingredient2: String
    let ingredient3: String
    let ingredient4: String
    let ingredient5: String
    let ingredient6: String
    let ingredient7: String
    let ingredient8: String
    let ingredient9: String
    let ingredient10: String
    let ingredient11: String
    let ingredient12: String
    let ingredient13: String
    let ingredient14: String
    let ingredient15: String
    let ingredient16: String
    let ingredient17: String
    let ingredient18: String
    let ingredient19: String
    let ingredient20: String
    let measure1: String
    let measure2: String
    let measure3: String
    let measure4: String
    let measure5: String
    let measure6: String
    let measure7: String
    let measure8: String
    let measure9: String
    let measure10: String
    let measure11: String
    let measure12: String
    let measure13: String
    let measure14: String
    let measure15: String
    let measure16: String
    let measure17: String
    let measure18: String
    let measure19: String
    let measure20: String
    
    
    enum CodingKeys: String, CodingKey {
        case name = "strMeal"
        case image = "strMealThumb"
        case id = "idMeal"
        case instructions = "strInstructions"
        case ingredient1 = "strIngredient1"
        case ingredient2 = "strIngredient2"
        case ingredient3 = "strIngredient3"
        case ingredient4 = "strIngredient4"
        case ingredient5 = "strIngredient5"
        case ingredient6 = "strIngredient6"
        case ingredient7 = "strIngredient7"
        case ingredient8 = "strIngredient8"
        case ingredient9 = "strIngredient9"
        case ingredient10 = "strIngredient10"
        case ingredient11 = "strIngredient11"
        case ingredient12 = "strIngredient12"
        case ingredient13 = "strIngredient13"
        case ingredient14 = "strIngredient14"
        case ingredient15 = "strIngredient15"
        case ingredient16 = "strIngredient16"
        case ingredient17 = "strIngredient17"
        case ingredient18 = "strIngredient18"
        case ingredient19 = "strIngredient19"
        case ingredient20 = "strIngredient20"
        case measure1 = "strMeasure1"
        case measure2 = "strMeasure2"
        case measure3 = "strMeasure3"
        case measure4 = "strMeasure4"
        case measure5 = "strMeasure5"
        case measure6 = "strMeasure6"
        case measure7 = "strMeasure7"
        case measure8 = "strMeasure8"
        case measure9 = "strMeasure9"
        case measure10 = "strMeasure10"
        case measure11 = "strMeasure11"
        case measure12 = "strMeasure12"
        case measure13 = "strMeasure13"
        case measure14 = "strMeasure14"
        case measure15 = "strMeasure15"
        case measure16 = "strMeasure16"
        case measure17 = "strMeasure17"
        case measure18 = "strMeasure18"
        case measure19 = "strMeasure19"
        case measure20 = "strMeasure20"
    }
//  static let sample1 = MealDetailResponse(name: "Apple Frangipan Tart", image: "Placeholder 1", id: "1", instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", ingredient1: "- test", ingredient2: "- test", ingredient3: "test", ingredient4: "test", ingredient5: "test", ingredient6: "test", ingredient7: "test", ingredient8: "test", ingredient9: "test", ingredient10: "test", ingredient11: "test", ingredient12: "test", ingredient13: "test", ingredient14: "test", ingredient15: "test", ingredient16: "test", ingredient17: "test", ingredient18: "test", ingredient19: "test", ingredient20: "test", measure1: "- 1 tbsp", measure2: "- 1 tbsp", measure3: "1 tbsp", measure4: "1 tbsp", measure5: "tes1 tbspt", measure6: "1 tbsp", measure7: "1 tbsp", measure8: "1 tbsp", measure9: "1 tbsp", measure10: "1 tbsp", measure11: "1 tbsp", measure12: "1 tbsp", measure13: "1 tbsp", measure14: "1 tbsp", measure15: "1 tbsp", measure16: "1 tbsp", measure17: "1 tbsp", measure18: "1 tbsp", measure19: "1 tbsp", measure20: "1 tbsp")
}
