//
//  ProfileDIContainer.swift
//  LionVPN
//
//  Created by Николай Чунихин on 24.07.2023.
//

import Foundation

struct ProfileDIContainer {
    
    let repository: RepositoryProtocol
    let sceneFactory: SceneFactory
    let coordinatorFactory: CoordinatorFactory
    let diContainerFactory: DIContainerFactory
    
    init(diContaner: AppDIContainer) {
        self.repository = diContaner.repository
        self.sceneFactory = diContaner.sceneFactory
        self.coordinatorFactory = diContaner.coordinatorFactory
        self.diContainerFactory = diContaner.diContainerFactory
    }
}
