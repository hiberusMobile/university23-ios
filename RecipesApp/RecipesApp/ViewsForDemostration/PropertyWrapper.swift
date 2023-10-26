//
//  PropertyWrapper.swift
//  RecipesApp
//
//  Created by Javier Torné Hernández on 25/10/23.
//

@propertyWrapper
struct Uppercased {
    private var value = ""
    
    var wrappedValue: String {
        get { return value }
        set { value = newValue.uppercased() }
    }
}
