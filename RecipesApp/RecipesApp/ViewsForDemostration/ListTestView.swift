//
//  ListTestView.swift
//  RecipesApp
//
//  Created by Javier Torné Hernández on 25/10/23.
//

import SwiftUI

struct ListTestView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("1") {
                    Text("1")
                }
                Text("2")
                Text("3")
            }
        }
    }
}

#Preview {
    ListTestView()
}
