//
//  DessertDetailView.swift
//  Desserts
//
//  Created by Becca Kauper on 7/27/24.
//

import SwiftUI

struct DessertDetailView: View {
    var meal: Meal
    
    var body: some View {
        GeometryReader { metrics in
            
            var imageWidth = metrics.size.width
            
            VStack(alignment: .leading) {
                Image(meal.image)
                    .resizable()
                    .mask(RoundedRectangle(cornerRadius: 8))
                    .aspectRatio(contentMode: .fit)
                    .padding(.all)
                    .frame(width: imageWidth)
                
                VStack(alignment: .leading) {
                    Text(meal.name)
                        .font(.largeTitle)
                    
                    Divider()
                    
                    Text("Ingredients")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Text("Ingredients list")
                        .font(.subheadline)
                                        
                    Text("Instructions")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Text("Instructions steps")
                        .font(.subheadline)
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

#Preview {
    DessertDetailView(meal: .sample4)
}
