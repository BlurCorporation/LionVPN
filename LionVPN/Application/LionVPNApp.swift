//
//  LionVPNApp.swift
//  LionVPN
//
//  Created by Николай Чунихин on 21.07.2023.
//
import SwiftUI

@main
struct LionVPNApp: App {
    /// менеджер зависимостей
    let diContainer = AppDIContainer()
    /// запуск сцены
    var body: some Scene {
        WindowGroup {
            AppCoordinatorView(appDIContainer: diContainer)
        }
    }
}

