//
//  MainCoordinator.swift
//  LionVPN
//
//  Created by Николай Чунихин on 24.07.2023.
//

import Foundation

final class MainCoordinator: ObservableObject {
    
    let repository: RepositoryProtocol
    let sceneFactory: SceneFactory
    let coordinatorFactory: CoordinatorFactory
    let diContainerFactory: DIContainerFactory
    
    init(diContainer: MainDIContainer) {
        self.repository = diContainer.repository
        self.sceneFactory = diContainer.sceneFactory
        self.coordinatorFactory = diContainer.coordinatorFactory
        self.diContainerFactory = diContainer.diContainerFactory
    }
}
