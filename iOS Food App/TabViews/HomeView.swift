//
//  HomeView.swift
//  iOS Food App
//
//  Created by Ansh Shukla on 05/05/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = ViewModel(controller: ApiClient())
    var body: some View {
        NavigationView {
            ZStack {
                switch viewModel.status {
                case .NOT_STARTED: EmptyView()
                case .IN_PROGRESS: ProgressView()
                case .SUCCESS(let data):
                    List(data.request, id: \.id) { item in
                        NavigationLink {
                            DetailedAppetizerView(item: item)
                        } label : {
                            HomeListItemView(item: item)
                        }
                    }
                case .FAILURE(let error):
                    Text("Error: \(error)")
                }
            }
            .onAppear(perform: {
                Task {
                    await viewModel.getAppetizersData()
                }
            })
            .navigationTitle("Appetizers 🍔") // emoji shortcut: Cmd+Ctrl+Space
        }
    }
}
   
#Preview {
    HomeView()
}
