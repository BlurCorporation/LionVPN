//
//  PasswordCoordinator.swift
//  LionVPN
//
//  Created by Николай Чунихин on 24.07.2023.
//

import Foundation

enum PasswordFlow {
    case email
    case password
}

final class PasswordCoordinator: ObservableObject {
    
    let repository: RepositoryProtocol
    let sceneFactory: SceneFactory
    
    init(diContainer: PasswordDIContainer) {
        self.repository = diContainer.repository
        self.sceneFactory = diContainer.sceneFactory
    }
}
