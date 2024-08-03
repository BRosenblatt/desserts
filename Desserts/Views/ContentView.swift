//
//  ContentView.swift
//  Desserts
//
//  Created by Becca Kauper on 7/27/24.
//

import SwiftUI

struct ContentView: View {
    
    var meals: [MealModel] = MealModel.sampleData
    
    var body: some View {
        DessertList()
    }
}

#Preview {
    ContentView(meals: MealModel.sampleData)
}
