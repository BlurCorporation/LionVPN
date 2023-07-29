//
//  AuthCoordinator.swift
//  LionVPN
//
//  Created by Николай Чунихин on 24.07.2023.
//

import Foundation

enum loginFlow {
    case login
    case register
}

final class AuthCoordinator: ObservableObject {
    
    let repository: RepositoryProtocol
    let sceneFactoory: SceneFactory
    let coordinatorFactory: CoordinatorFactory
    let diContainerFactory: DIContainerFactory
        
    init(diContainer: AuthDIContainer) {
        self.repository = diContainer.repository
        self.sceneFactoory = diContainer.sceneFactory
        self.coordinatorFactory = diContainer.coordinatorFactory
        self.diContainerFactory = diContainer.diContainerFactory
    }
}
