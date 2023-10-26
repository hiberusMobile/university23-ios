//
//  RecipesView.swift
//  RecipesApp
//
//  Created by Javier Torné Hernández on 24/10/23.
//

import SwiftUI

struct RecipesView: View {
    let recipes = [
        Recipe(
            id: UUID().uuidString,
            imageName: "Paella",
            name: "Paella valenciana",
            numberOfDiners: 6,
            foodCategory: FoodCategory(
                id: 1,
                name: "Española"
            )
        ),
        Recipe(
            id: UUID().uuidString,
            imageName: "Gazpacho",
            name: "Gazpacho andaluz",
            numberOfDiners: 1,
            foodCategory: FoodCategory(
                id: 1,
                name: "Española"
            )
        ),
        Recipe(
            id: UUID().uuidString,
            imageName: "Tortilla",
            name: "Tortilla de patatas",
            numberOfDiners: 2,
            foodCategory: FoodCategory(
                id: 1,
                name: "Española"
            )
        ),
        Recipe(
            id: UUID().uuidString,
            imageName: "Lasagna",
            name: "Lasaña boloñesa",
            numberOfDiners: 4,
            foodCategory: FoodCategory(
                id: 2,
                name: "Italiana"
            )
        )
    ]
    
    var recipesByFoodCategory: [String: [Recipe]] {
        Dictionary(grouping: recipes, by: { $0.foodCategory.name })
    }
    
    @State private var showNewRecipeView = false
    @State private var title = "Mis recetas"
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(recipesByFoodCategory.keys.sorted(), id: \.self) { category in
                    Section {
                        ForEach(recipesByFoodCategory[category]!) { recipe in
                            createRow(for: recipe)
                        }
                    } header: {
                        Text(category)
                    }
                    .listRowSeparator(.hidden)
                }
            }
            .listStyle(.plain)
            .navigationTitle(title)
            .toolbar {
                ToolbarItem {
                    Button("Añadir", systemImage: "plus") {
                        showNewRecipeView = true
                    }
                    
                }
            }
            .sheet(isPresented: $showNewRecipeView) {
                NewRecipeView(
                    onCancelTap: cancel,
                    onSaveTap: save
                )
            }
        }
    }
    
    private func cancel() {
        title = "Cancelar"
    }
    
    private func save(name: String) {
        title = name
    }
    
    private func createRow(for recipe: Recipe) -> some View {
        RecipeView(recipe: recipe)
            .background(
                NavigationLink(destination: {
                    RecipeDetailView(recipe: recipe)
                }, label: { EmptyView() })
            )
    }
}

#Preview {
    RecipesView()
}
