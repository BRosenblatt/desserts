//
//  APIClient.swift
//  Desserts
//
//  Created by Becca Kauper on 7/27/24.
//

import Foundation

@MainActor 
class APIClient: ObservableObject {
    
    enum Endpoint {
        static let baseURL = "https://www.themealdb.com/api/json/v1/1/"
        
        case getMealsByDessert
        case getMealDetails(id: String)
        
        var stringValue: String {
            switch self {
            case .getMealsByDessert:
                return Endpoint.baseURL
                + "filter.php?c=Dessert"
            case .getMealDetails(let id):
                return Endpoint.baseURL
                + "lookup.php?i=\(id)"
            }
        }
        
        var url: URL {
            URL(string: stringValue)!
        }
    }
        
    static func getMealsList() async -> [MealModel]? {
        let dessertEndpoint = APIClient.Endpoint.getMealsByDessert.url
        do {
            let (data, _) = try await URLSession.shared.data(from: dessertEndpoint)
            let decodedResponse = try JSONDecoder().decode(MealListResponse.self, from: data)
            return decodedResponse.meals
        } catch {
            print("Something went wrong \(error)")
            return nil
        }
    }

    static func getMealDetails(id: String) async -> MealDetailModel? {
        let mealDetailsEndpoint = APIClient.Endpoint.getMealDetails(id: id).url
        do {
            let (data, _) = try await URLSession.shared.data(from: mealDetailsEndpoint)
            let decodedResponse = try JSONDecoder().decode(MealDetailResponse.self, from: data)
            return decodedResponse.meals.first
        } catch {
            print("Could not fetch meal details: \(error)")
            return nil
        }
    }
}
