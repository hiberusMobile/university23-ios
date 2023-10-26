//
//  PropertyWrapperView.swift
//  RecipesApp
//
//  Created by Javier Torné Hernández on 25/10/23.
//

import SwiftUI

struct PropertyWrapperView: View {
    @State private var name = "Javi"
    
    var body: some View {
        VStack(spacing: 16) {
            TextField("Nombre", text: $name)
            
            Text(name)
            
            Button("Poner en mayúsculas") {
                @Uppercased var newName: String
                newName = "Jorge"
                name = newName
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    PropertyWrapperView()
}
