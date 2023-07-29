//
//  SubscriptionCoordinator.swift
//  LionVPN
//
//  Created by Николай Чунихин on 24.07.2023.
//

import Foundation

final class SubscriptionCoordinator: ObservableObject {
    let repository: RepositoryProtocol
    let sceneFactory: SceneFactory
    
    init(diContaner: SubscriptionDIContainer) {
        self.repository = diContaner.repository
        self.sceneFactory = diContaner.sceneFactory
    }
}
