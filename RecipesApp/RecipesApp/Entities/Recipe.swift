//
//  Recipe.swift
//  RecipesApp
//
//  Created by Javier Torné Hernández on 24/10/23.
//

import Foundation

struct Recipe: Identifiable {
    let id: String
    let imageName: String
    let name: String
    let numberOfDiners: Int
    let foodCategory: FoodCategory
    
    static var example: Recipe {
        Recipe(
            id: UUID().uuidString,
            imageName: "Paella",
            name: "Paella valenciana",
            numberOfDiners: 6,
            foodCategory: FoodCategory(
                id: 1,
                name: "Española"
            )
        )
    }
}
