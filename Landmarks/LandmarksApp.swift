//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Ruslan Magomedov on 30.06.2023.
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
        .commands {
            LandmarkCommands()
        }
        
        #if os(macOS)
        Settings {
            LandmarkSettings()
        }
        #endif
    }
}
