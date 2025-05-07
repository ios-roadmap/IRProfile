//
//  IRProfileCoordinator.swift
//  IRProfile
//
//  Created by Ömer Faruk Öztürk on 6.05.2025.
//

import SwiftUI
import IRCore
import IRProfileInterface
import IRSettingsInterface

// MARK: Factory
public struct IRProfileFactory: IRProfileFactoryProtocol {
    public init() {}
    public func create() -> any IRProfileInterface { IRProfileCoordinator() }
}

// MARK: Coordinator
public final class IRProfileCoordinator: IRProfileInterface {

    @IRLazyInjected private var settings: any IRSettingsInterface   // 🔄 cross‑module

    // ─────────────────────────────────────────────────────────────
    // Public entry point
    // ─────────────────────────────────────────────────────────────
    public func start() -> AnyView {
        AnyView(RootView(coordinator: self))
    }

    // ─────────────────────────────────────────────────────────────
    // Internal routing
    // ─────────────────────────────────────────────────────────────
    enum Route: Hashable { case settings }

    @MainActor
    fileprivate func destination(for route: Route) -> some View {
        switch route {
        case .settings: settings.start()
        }
    }

    fileprivate func goToSettings(on path: inout NavigationPath) {
        path.append(Route.settings)
    }
}

// ──────────────────────────────────────────────────────────────────
// MARK: - RootView (owns the NavigationPath state)
// ──────────────────────────────────────────────────────────────────
private struct RootView: View {

    @ObservedObject var coordinator: IRProfileCoordinator
    @State private var path = NavigationPath()

    var body: some View {
        NavigationStack(path: $path) {
            ProfileView()
                .environmentObject(coordinator)
                .navigationDestination(for: IRProfileCoordinator.Route.self) {
                    coordinator.destination(for: $0)
                }
        }
        .onReceive(NotificationCenter.default.publisher(for: .init("IRProfile.GoToSettings"))) { _ in
            coordinator.goToSettings(on: &path)
        }
    }
}

// ──────────────────────────────────────────────────────────────────
// MARK: - ProfileView (dumb UI – delegates navigation)
// ──────────────────────────────────────────────────────────────────
private struct ProfileView: View {

    @EnvironmentObject private var coordinator: IRProfileCoordinator

    var body: some View {
        VStack {
            Text("My Profile").font(.title)
            Button("Open Settings") {
                NotificationCenter.default.post(name: .init("IRProfile.GoToSettings"), object: nil)
            }
        }
        .navigationTitle("Profile")
    }
}
