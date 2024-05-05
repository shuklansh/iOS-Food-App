//
//  iOS_Food_AppApp.swift
//  iOS Food App
//
//  Created by Ansh Shukla on 05/05/24.
//

import SwiftUI

@main // entry point for app (similar to appDelegate/sceneDelegate in uiKit) n
struct iOS_Food_AppApp: App { // App -> scene representing the content of the app (scene -> allows multiple windows/splitScreens)
    var body: some Scene {
        WindowGroup {
            FoodAppTabView()
        }
    }
}
