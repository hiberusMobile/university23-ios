//
//  BindingFirstView.swift
//  RecipesApp
//
//  Created by Javier Torné Hernández on 25/10/23.
//

import SwiftUI

struct BindingFirstView: View {
    @State var text1 = "Texto 1"
    @State var text2 = "Texto 2"
    
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(text1) {
                    BindingSecondView(text: $text1)
                }
                
                NavigationLink(text2) {
                    BindingSecondView(text: $text2)
                }
            }
        }
    }
}

#Preview {
    BindingFirstView()
}
