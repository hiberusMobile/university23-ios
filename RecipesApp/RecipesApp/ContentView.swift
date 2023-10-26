//
//  ContentView.swift
//  RecipesApp
//
//  Created by Javier Torné Hernández on 25/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            RecipesView()
                .tabItem {
                    Label("Mis recetas", systemImage: "fork.knife")
                }
            
            Text("Lista de la compra")
                .tabItem {
                    Label("Lista de la compra", systemImage: "cart")
                }
        }
    }
}

#Preview {
    ContentView()
}
