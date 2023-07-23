//
//  AppCoordinatorView.swift
//  LionVPN
//
//  Created by Николай Чунихин on 21.07.2023.
//

import SwiftUI

struct AppCoordinatorView: View {
    
    let dependencies: AppDIContainer
    @ObservedObject var coordinator: AppCoordinator
    
    init(dependencies: AppDIContainer) {
        self.dependencies = dependencies
        self.coordinator = AppCoordinator(diContainer: dependencies)
    }
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct AppCoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        AppCoordinatorView(dependencies: AppDIContainer())
    }
}
