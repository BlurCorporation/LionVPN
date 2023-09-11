//
//  AppCoordinatorView.swift
//  LionVPN
//
//  Created by Николай Чунихин on 01.09.2023.
//

import SwiftUI

// MARK: - Coordinator View
/// Представление координатора
struct AppCoordinatorView<Coordinator>: View where Coordinator: AppCoordinatorProtocol {
    
    // MARK: Properties
    /// Координатор
    @ObservedObject var coordinator: Coordinator
    
    // MARK: Body
    var body: some View {
        NavigationStack(
            path: $coordinator.path
        ) {
            coordinator.buildPage(coordinator.start())
                .navigationDestination(for: AppFlow.self) { page in
                    coordinator.buildPage(page)
                }
                .sheet(item: $coordinator.sheet) { sheet in
                    coordinator.buildSheet(sheet)
                }
                .fullScreenCover(item: $coordinator.fullScreenCover) { fullScreenCover in
                    coordinator.buildFullScreenCover(fullScreenCover)
                }
        }
    }
}
