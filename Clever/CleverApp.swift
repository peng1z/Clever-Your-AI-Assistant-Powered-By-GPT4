//
//  CleverApp.swift
//  Clever
//
//  Created by Peng Zhang on 5/25/24.
//

import SwiftUI

@main
struct CleverApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            #if os(macOS)
                .frame(width: 400, height: 400)
            #endif
        }
        #if os(macOS)
        .windowStyle(.hiddenTitleBar)
        .windowResizability(.contentSize)
        #elseif os(visionOS)
        .defaultSize(width: 0.4, height: 0.4, depth: 0.0, in: .meters)
        .windowResizability(.contentSize)
        #endif
    }
}
