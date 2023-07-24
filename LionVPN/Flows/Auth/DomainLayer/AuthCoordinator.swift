//
//  AuthCoordinator.swift
//  LionVPN
//
//  Created by Николай Чунихин on 24.07.2023.
//

import Foundation

final class AuthCoordinator {
    
    let repository: Repository
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
