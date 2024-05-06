//
//  HomeListItemView.swift
//  iOS Food App
//
//  Created by Ansh Shukla on 05/05/24.
//

import SwiftUI

struct HomeListItemView: View {
    var item: Appetizer
    var body: some View {
        HStack {
            AsyncImage(url: item.imageURL, content: {
                image in image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height:90, alignment: .center)
                    .cornerRadius(12)
            }, placeholder: {
                ProgressView()
            })
            VStack(alignment: .leading, spacing: 8) {
                Text(item.name)
                    .font(.title3)
                    .fontWeight(.medium)
                Text("$\(item.price, specifier: "%.2f")")
                    .foregroundColor(.gray)
            }.padding(.leading)
        }
    }
}

#Preview {
    HomeListItemView(
        item: MockData.sampleModel
    )
}
