//
//  NewRecipeView.swift
//  RecipesApp
//
//  Created by Javier Torné Hernández on 25/10/23.
//

import SwiftUI

typealias CancelAction = () -> Void

struct NewRecipeView: View {
    @State private var name = ""
    @State private var numberOfDiners = 1
    @Environment(\.dismiss) var dismiss
    
    let onCancelTap: CancelAction
    let onSaveTap: (String) -> Void
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Nombre", text: $name)
                    Stepper("Comensales: \(numberOfDiners)", value: $numberOfDiners, in: 1...6)
                }
                
                Section {
                    HStack {
                        Spacer()
                        Button("Guardar") {
                            
                        }
                        .buttonStyle(.borderedProminent)
                        Spacer()
                    }
                }
                .listRowBackground(Color.clear)
            }
            .navigationTitle("Nueva receta")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancelar", role: .cancel) {
//                        onCancelTap()
                        dismiss()
                    }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Guardar") {
                        onSaveTap("Javi")
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    NewRecipeView(
        onCancelTap: {},
        onSaveTap: { name in }
    )
}
