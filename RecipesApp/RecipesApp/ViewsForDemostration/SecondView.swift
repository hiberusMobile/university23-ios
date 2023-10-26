//
//  SecondView.swift
//  RecipesApp
//
//  Created by Javier Torné Hernández on 24/10/23.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        ScrollView {
            NavigationLink("Ir a la tercera vista") {
                ThirdView()
            }
        }
        .navigationTitle("Segunda vista")
    }
}

#Preview {
    SecondView()
}
