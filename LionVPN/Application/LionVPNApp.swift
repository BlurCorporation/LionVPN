//
//  LionVPNApp.swift
//  LionVPN
//
//  Created by Николай Чунихин on 21.07.2023.
//

import SwiftUI

@main
struct LionVPNApp: App {
    
    
    let diContainer = AppDIContainer()
    
    var body: some Scene {
        WindowGroup {
            AppCoordinatorView(dependencies: diContainer)
        }
    }
}
