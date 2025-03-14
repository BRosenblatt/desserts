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

struct MealModel: Identifiable, Codable {
    let name: String
    let image: String
    let id: String
    
    enum CodingKeys: String, CodingKey {
        case name = "strMeal"
        case image = "strMealThumb"
        case id = "idMeal"
        
    }
    // Test data
    static let sample1 = MealModel(name: "Apam balik", image: "https://www.themealdb.com/images/media/meals/adxcbq1619787919.jpg", id: "53049")
    static let sample2 = MealModel(name: "Apple & Blackberry Crumble", image: "https://www.themealdb.com/images/media/meals/xvsurr1511719182.jpg", id: "52893")
    static let sample3 = MealModel(name: "Apple Frangipan Tart", image: "https://www.themealdb.com/images/media/meals/wxywrq1468235067.jpg", id: "52768")
    
    static let sampleData: [MealModel] = [sample1, sample2, sample3]
}

struct MealDetailResponse: Codable {
    let meals: [MealDetailModel]
}

struct MealDetailModel: Identifiable, Codable {
    let name: String
    let image: String
    let id: String
    let instructions: String
    let ingredient1: String?
    let ingredient2: String?
    let ingredient3: String?
    let ingredient4: String?
    let ingredient5: String?
    let ingredient6: String?
    let ingredient7: String?
    let ingredient8: String?
    let ingredient9: String?
    let ingredient10: String?
    let ingredient11: String?
    let ingredient12: String?
    let ingredient13: String?
    let ingredient14: String?
    let ingredient15: String?
    let ingredient16: String?
    let ingredient17: String?
    let ingredient18: String?
    let ingredient19: String?
    let ingredient20: String?
    let measure1: String?
    let measure2: String?
    let measure3: String?
    let measure4: String?
    let measure5: String?
    let measure6: String?
    let measure7: String?
    let measure8: String?
    let measure9: String?
    let measure10: String?
    let measure11: String?
    let measure12: String?
    let measure13: String?
    let measure14: String?
    let measure15: String?
    let measure16: String?
    let measure17: String?
    let measure18: String?
    let measure19: String?
    let measure20: String?
    
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
    
    var ingredientArray: [String?] {
        [ingredient1,
         ingredient2,
         ingredient3,
         ingredient4,
         ingredient5,
         ingredient6,
         ingredient7,
         ingredient8,
         ingredient9,
         ingredient10,
         ingredient11,
         ingredient12,
         ingredient13,
         ingredient14,
         ingredient15,
         ingredient16,
         ingredient17,
         ingredient18,
         ingredient19,
         ingredient20]
    }
    
    var measurementArray: [String?] {
        [measure1,
         measure2,
         measure3,
         measure4,
         measure5,
         measure6,
         measure7,
         measure8,
         measure9,
         measure10,
         measure11,
         measure12,
         measure13,
         measure14,
         measure15,
         measure16,
         measure17,
         measure18,
         measure19,
         measure20]
    }
    
    var combinedIngredientsAndMeasurements: [String] {
        var combinedArray: [String] = []
        
        let filteredIngredients = ingredientArray.compactMap({ $0 })
        let filteredMeasurements = measurementArray.compactMap({ $0 })
        
        for index in ingredientArray.indices {
            if filteredIngredients[index].isEmpty || filteredMeasurements[index].isEmpty {
                break
            }
            let combinedString = "- \(filteredMeasurements[index]) \(filteredIngredients[index])"
            combinedArray.append(combinedString)
        }
        return combinedArray
    }
}
