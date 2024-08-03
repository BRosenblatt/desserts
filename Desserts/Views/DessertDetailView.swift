//
//  DessertDetailView.swift
//  Desserts
//
//  Created by Becca Kauper on 7/27/24.
//

import SwiftUI

struct DessertDetailView: View {
    @StateObject var mealDetailViewModel = MealDetailViewModel()
    
    let mealId: String
    
    var body: some View {
        
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
                    Text(mealDetailViewModel.mealDetails?.name ?? "")
                        .font(.largeTitle)
                    
                    Divider()
                    
                    Text("Ingredients")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("placeholder ingredient")
                        .font(.subheadline)
                    Text("placeholder ingredient")
                        .font(.subheadline)
                    
                    Text("Instructions")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Text(mealDetailViewModel.mealDetails?.instructions ?? "")
                        .font(.subheadline)
                }
                .padding(.horizontal)
            }
            .padding(.top, -40)
            .onAppear {
                if mealDetailViewModel.mealDetails == nil {
                    Task {
                        await mealDetailViewModel.fetchMealDetails(id: mealId)
                    }
                }
            }
        } else {
            Image("birthday.cake.fill")
        }
    }
}

#Preview {
    DessertDetailView(mealId: "")
}
