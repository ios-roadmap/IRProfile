//
//  ProfileView.swift
//  IRProfile
//
//  Created by Ömer Faruk Öztürk on 26.05.2025.
//

import SwiftUI
internal import IRStyleKit
internal import IRSettings

public struct ProfileView: View {
    
    public init() {
        
    }
    
    public var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    SettingsView()
                } label: {
                    Text("Settings")
                        .callToActionButtonDesign()
                }
                .padding()
            }
        }
        .navigationTitle("Profile")
    }
}

#Preview {
    ProfileView()
}
