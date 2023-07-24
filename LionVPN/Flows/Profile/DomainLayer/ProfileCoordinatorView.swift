//
//  ProfileCoordinatorView.swift
//  LionVPN
//
//  Created by Николай Чунихин on 24.07.2023.
//

import SwiftUI

struct ProfileCoordinatorView: View {
    
    let diContainer: ProfileDIContainer
    @ObservedObject var coordinator: ProfileCoordinator
    
    init(diContainer: ProfileDIContainer) {
        self.diContainer = diContainer
        self.coordinator = ProfileCoordinator(diContainer: diContainer)
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ProfileCoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCoordinatorView(diContainer: ProfileDIContainer(diContaner: AppDIContainer()))
    }
}
