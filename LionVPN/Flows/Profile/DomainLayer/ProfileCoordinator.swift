//
//  ProfileCoordinator.swift
//  LionVPN
//
//  Created by Николай Чунихин on 24.07.2023.
//

import Foundation

final class ProfileCoordinator: ObservableObject {
    
    let repository: RepositoryProtocol
    let sceneFactory: SceneFactory
    let coordinatorFactory: CoordinatorFactory
    let diContainerFactory: DIContainerFactoryProtocol
    
    init(diContainer: ProfileDIContainer) {
        self.repository = diContainer.repository
        self.sceneFactory = diContainer.sceneFactory
        self.coordinatorFactory = diContainer.coordinatorFactory
        self.diContainerFactory = diContainer.diContainerFactory
    }
}
