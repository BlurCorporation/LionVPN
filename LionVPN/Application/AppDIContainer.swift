//
//  AppDIContainer.swift
//  LionVPN
//
//  Created by Николай Чунихин on 22.07.2023.
//

import Foundation



final class AppDIContainer {
    
    let repository: Repository
    let coordinatorFactory = CoordinatorFactory()
    let sceneFactory = SceneFactory()
    let diContainerFactory = DIContainerFactory()
    
    init() {
        let managerFactory = ManagerFactory()
        self.repository = Repository(managerFactory: ManagerFactory())
    }
}



