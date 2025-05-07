//
//  IRProfileDemoApp.swift
//  IRProfileDemo
//
//  Created by Ömer Faruk Öztürk on 6.05.2025.
//

import SwiftUI
import IRCore
import IRProfileInterface
import IRSettingsInterface
import IRProfile      // concrete impls
import IRSettings

@main
struct IRProfileDemoApp: App {
    
    init() {
        let dc = IRDependencyContainer.shared
        dc.register(IRProfileInterface.self, scope: .module) { IRProfileFactory().create() }
        dc.register(IRSettingsInterface.self, scope: .module) { IRSettingsFactory().create() }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
