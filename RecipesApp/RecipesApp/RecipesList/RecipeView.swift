//
//  RecipeView.swift
//  RecipesApp
//
//  Created by Javier Torné Hernández on 24/10/23.
//

import SwiftUI

struct RecipeView: View {
    let recipe: Recipe
    
    var body: some View {
        VStack(spacing: 16) {
            Image(recipe.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(color: Color("Shadow"), radius: 5, x: 0, y: 5)
            
            HStack {
                Text(recipe.name)
                    .font(.headline)
                    .foregroundStyle(.recipeName)
                Spacer()
                HStack {
                    Text("\(recipe.numberOfDiners)")
                    Image(systemName: "fork.knife.circle.fill")
                }
                .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    RecipeView(recipe: .example)
}
