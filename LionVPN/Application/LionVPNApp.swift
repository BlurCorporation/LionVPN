//
//  LionVPNApp.swift
//  LionVPN
//
//  Created by Николай Чунихин on 30.08.2023.
//

import SwiftUI

// MARK: - Struct app
@main
struct LionVPN: App {
    // MARK: Managers and Services
    /// Репозиторий
    private let repository = Repository()
    
    // MARK: App body
    var body: some Scene {
        WindowGroup {
            configureApp()
        }
    }
    
    // MARK: Private methods
    /// Используется для сборки AppCoordinator и передачи в него зависимостей
    /// - Returns: структура AppCoordinatorView связанная с AppCoordinator
    private func configureApp() -> some View {
        let coordinator = AppCoordinator(
            repository: self.repository
        )
        let coordinatorView = AppCoordinatorView(
            coordinator: coordinator
        )
        return coordinatorView
    }
}
