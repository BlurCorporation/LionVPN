//
//  AppDIContainer.swift
//  LionVPN
//
//  Created by Николай Чунихин on 22.07.2023.
//

import Foundation

final class AppDIContainer {
    //MARK: - Properties
    let repository: RepositoryProtocol
    let coordinatorFactory = CoordinatorFactory()
    let sceneFactory = SceneFactory()    
    let diContainerFactory: DIContainerFactoryProtocol = DIContainerFactory()
    //MARK: - Init
    init() {
        let managerFactory = ManagerFactory()
        self.repository = Repository(managerFactory: managerFactory)
    }
}
