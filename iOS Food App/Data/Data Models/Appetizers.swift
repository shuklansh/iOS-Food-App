//
//  Appetizers.swift
//  iOS Food App
//
//  Created by Ansh Shukla on 05/05/24.
//

import Foundation

struct Appetizer: Decodable, Identifiable { // retreive data -> decodable, sending data -> encodable
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: URL?
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleModel = Appetizer(
        id: 1,
        name: "Egg",
        description: "chicken egg 1 dozen",
        price: 80,
        imageURL: URL(string: "https://res.cloudinary.com/studentsamskipnaden-i-s-r-st-norge/image/upload/c_lfill,g_auto,h_880,f_auto/f_auto/q_auto/v1698313498/Mat%20og%20drikke/Oppskrifter/egg-71577018_syu3z8.jpg") ?? nil,
        calories: 155,
        protein: 13,
        carbs: 1)
    static let sampleModelList = [sampleModel, sampleModel, sampleModel, sampleModel, sampleModel, sampleModel]
}
