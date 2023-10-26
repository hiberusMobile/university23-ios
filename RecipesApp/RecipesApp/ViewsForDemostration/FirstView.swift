//
//  FirstView.swift
//  RecipesApp
//
//  Created by Javier Torné Hernández on 24/10/23.
//

import SwiftUI

struct FirstView: View {
    @State var text = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                TextField("Nombre", text: $text)
                    .textFieldStyle(.roundedBorder)
                
                NavigationLink("Navegar a la segunda vista") {
                    VStack {
                        SecondView()
                    }
                }
            }
            .navigationTitle("Primera vista")
            .toolbar {
                ToolbarItem {
                    Button(action: {
                        print("Añadir")
                    }, label: {
                        Image(systemName: "plus")
                    })
                }
                
                ToolbarItem(placement: .keyboard) {
                    Button(action: {
                        print("Añadir")
                    }, label: {
                        Image(systemName: "trash")
                    })
                    .tint(.red)
                }
            }
        }
    }
}

#Preview {
    FirstView()
}
