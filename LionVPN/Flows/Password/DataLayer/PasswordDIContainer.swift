//
//  PasswordDIContainer.swift
//  LionVPN
//
//  Created by Николай Чунихин on 24.07.2023.
//

import Foundation


struct PasswordDIContainer {
    
    let repository: RepositoryProtocol
    let sceneFactory: SceneFactory
    
    init(diContaner: AppDIContainer) {
        self.repository = diContaner.repository
        self.sceneFactory = diContaner.sceneFactory
    }
}
