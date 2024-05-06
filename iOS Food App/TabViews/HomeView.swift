//
//  HomeView.swift
//  iOS Food App
//
//  Created by Ansh Shukla on 05/05/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                List(MockData.sampleModelList, id: \.id) { item in
                    HomeListItemView(item: item)
                }
            }
            .navigationTitle("Appetizers 🍔") // emoji shortcut: Cmd+Ctrl+Space
        }
    }
}
   
#Preview {
    HomeView()
}
