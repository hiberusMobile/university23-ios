//
//  StateView.swift
//  RecipesApp
//
//  Created by Javier Torné Hernández on 25/10/23.
//

import SwiftUI

struct StateView: View {
    @State var name = "Javi"
    
    var body: some View {
        VStack(spacing: 16) {
            Text(name)
            
            Button("Cambar nombre") {
                name = "Alberto"
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    StateView()
}
