//
//  ContentView.swift
//  Desserts
//
//  Created by Becca Kauper on 7/27/24.
//

import SwiftUI

struct ContentView: View {
    
    var meals: [Meal] = Meal.sampleData
    
    var body: some View {
        DessertList()
    }
}

#Preview {
    ContentView(meals: Meal.sampleData)
}
