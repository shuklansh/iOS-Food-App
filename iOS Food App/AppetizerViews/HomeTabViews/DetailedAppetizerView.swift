//
//  DetailedAppetizerView.swift
//  iOS Food App
//
//  Created by Ansh Shukla on 06/05/24.
//

import SwiftUI

struct DetailedAppetizerView: View {
    var item: Appetizer
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            AsyncImage(
                url: item.imageURL,
                content:{ image in image
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(12)
                    .padding(.leading)
                    .padding(.trailing)
                },
                placeholder: { ProgressView()}
            )
            VStack(alignment: .leading) {
                Text("\(item.name) ($\(item.price, specifier: "%.f"))")
                    .font(.title)
                    .padding(.bottom)
                Text("description : \(item.description)")
                    .font(.title3)
                Text("calories : \(item.calories) gm")
                    .font(.title3)
                Text("protein : \(item.protein) gm")
                    .font(.title3)
                Text("carbs : \(item.carbs) gm")
                    .font(.title3)
            }
            .padding(.leading)
            .padding(.trailing)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    DetailedAppetizerView(
        item: MockData.sampleModel
    )
}
