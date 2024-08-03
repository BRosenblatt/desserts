//
//  DessertDetailView.swift
//  Desserts
//
//  Created by Becca Kauper on 7/27/24.
//

import SwiftUI

struct DessertDetailView: View {
    @StateObject var mealDetailViewModel = MealDetailViewModel()
    
    var mealId: String
    
    var body: some View {
        ScrollView {
            if let mealDetails = mealDetailViewModel.mealDetails {
                VStack(alignment: .leading) {
                    AsyncImage(url: URL(string: mealDetails.image)) { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .mask(RoundedRectangle(cornerRadius: 8))
                            .padding(.horizontal)
                    } placeholder: {
                        Image(systemName: "birthday.cake.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    
                    VStack(alignment: .leading) {
                        Text(mealDetails.name)
                            .font(.largeTitle)
                        
                        Divider()
                        
                        Text("Ingredients")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        ForEach(mealDetails.combinedIngredientsAndMeasurements,  id: \.self) { ingredient in
                            Text(ingredient)
                                .font(.subheadline)
                        }
                        
                        Spacer()
                        
                        Text("Instructions")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Text(mealDetails.instructions)
                            .font(.subheadline)
                    }
                    .padding(.horizontal)
                }
                .padding(.top, -40)
                
            } else {
                Image(systemName: "birthday.cake.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal)
                    .onAppear {
                        Task {
                            await mealDetailViewModel.fetchMealDetails(id: mealId)
                    }
                }
            }
        }
    }
}

#Preview {
    DessertDetailView(mealId: "")
}
