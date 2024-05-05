//
//  AccountView.swift
//  iOS Food App
//
//  Created by Ansh Shukla on 05/05/24.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView {
            Text("Account View")
                .navigationTitle("Account 🫵") // emoji shortcut: Cmd+Ctrl+Space
        }.ignoresSafeArea()
    }
}

#Preview {
    AccountView()
}
