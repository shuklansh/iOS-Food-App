//
//  ApiClient.swift
//  iOS Food App
//
//  Created by Ansh Shukla on 06/05/24.
//

import Foundation

class ApiClient {
    private let baseUrl = URL(string:"https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/")!
    
    func getAppetizersData() async throws -> [Appetizer] {
        let networkCallUrl = baseUrl.appending(path:"appetizers")
        let urlComponent = URLComponents(url: networkCallUrl, resolvingAgainstBaseURL: true)
        
        guard let fetchDataUrl = urlComponent?.url else {
            throw NetworkError.URLError
        }
        
        let (data, response) = try await URLSession.shared.data(from: fetchDataUrl)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw NetworkError.FetchError
        }
        
        let decoder = JSONDecoder()
        let output = try decoder.decode([Appetizer].self , from: data)
        return output
    }
}
