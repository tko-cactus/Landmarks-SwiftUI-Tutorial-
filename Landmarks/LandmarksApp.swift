//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Yamaguchi Tokio on 2021/01/05.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
