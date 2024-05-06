//
//  ViewModel.swift
//  iOS Food App
//
//  Created by Ansh Shukla on 06/05/24.
//

import Foundation

@MainActor
class ViewModel: ObservableObject {
    enum Status{
            case NOT_STARTED
            case IN_PROGRESS
            case SUCCESS(data: (AppetizerResponse))
            case FAILURE(error: Error)
        }
    
    @Published private(set) var status: Status = .NOT_STARTED
    
    private let apiClient: ApiClient
    
    init(controller: ApiClient) {
        self.apiClient = controller
    }
    
    func getAppetizersData() async {
        status = .IN_PROGRESS
        do {
            let appetizersList = try await apiClient.getAppetizersData()
            status = .SUCCESS(data: appetizersList)
        } catch {
            status = .FAILURE(error: error)
        }
    }
}
