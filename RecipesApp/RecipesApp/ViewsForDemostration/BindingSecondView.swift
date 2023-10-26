//
//  BindingSecondView.swift
//  RecipesApp
//
//  Created by Javier Torné Hernández on 25/10/23.
//

import SwiftUI

struct BindingSecondView: View {
    @Binding var text: String
    
    var body: some View {
        VStack {
            Text(text)
            
            Button("Cambiar texto") {
                text = "Nuevo texto"
            }
        }
    }
}

#Preview {
    BindingSecondView(text: .constant("Mi primer texto"))
}
