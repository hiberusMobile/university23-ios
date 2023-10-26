//
//  RecipeDetailView.swift
//  RecipesApp
//
//  Created by Javier Torné Hernández on 24/10/23.
//

import SwiftUI

struct RecipeDetailView: View {
    let recipe: Recipe
    
    var body: some View {
        Text(recipe.name)
            .navigationTitle(recipe.name)
            .toolbar {
                ToolbarItem(placement: .destructiveAction) {
                    Button("Eliminar", systemImage: "trash") {
                        print("Eliminar")
                    }
                    .tint(.red)
                }
            }
    }
}

#Preview {
    NavigationStack {
        RecipeDetailView(recipe: .example)
    }
}
