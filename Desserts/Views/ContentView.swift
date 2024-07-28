//
//  ContentView.swift
//  Desserts
//
//  Created by Becca Kauper on 7/27/24.
//

import SwiftUI

struct ContentView: View {
    
    var meals: [Meal] = []
    
    var body: some View {
        DessertList(meals: meals)
    }
}

#Preview {
    ContentView()
}
