//
//  AppCoordinator.swift
//  LionVPN
//
//  Created by Николай Чунихин on 21.07.2023.
//

import SwiftUI

final class AppCoordinator: ObservableObject {
    @Published var diContainer: AppDIContainer
    
    init(diContainer: AppDIContainer){
        self.diContainer = diContainer
    }
}
