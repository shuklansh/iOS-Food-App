//
//  OrderView.swift
//  iOS Food App
//
//  Created by Ansh Shukla on 05/05/24.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationView {
            Text("Order View")
                .navigationTitle("Orders 🛒") // emoji shortcut: Cmd+Ctrl+Space
        }.ignoresSafeArea()
    }
}

#Preview {
    OrderView()
}
