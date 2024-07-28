//
//  APIClient.swift
//  Desserts
//
//  Created by Becca Kauper on 7/27/24.
//

import Foundation

class APIClient {
    enum Endpoint {
        static let baseURL = "www.themealdb.com/api/json/v1/1/"
        
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
    
    // TODO: - fetch list of meals by dessert category
    
    class func getMealsList(completion: @escaping ([Meal]?, Error?) -> Void) {
        let dessertEndpoint = APIClient.Endpoint.getMealsByDessert.url
        let task = URLSession.shared.dataTask(with: dessertEndpoint) { data, response, error in
            guard let data = data else {
                DispatchQueue.main.async {
                    completion(nil, error)
                }
                return
            }
            let decoder = JSONDecoder()
            
            do {
                let response = try decoder.decode(MealListResponse.self, from: data)
                let result = response.meals
                DispatchQueue.main.async {
                    completion(result, nil)
                }
            } catch {
                DispatchQueue.main.async {
                    completion(nil, error)
                }
            }
        }
        task.resume()
    }
    // TODO: - fetch meal/dessert details by id
}
