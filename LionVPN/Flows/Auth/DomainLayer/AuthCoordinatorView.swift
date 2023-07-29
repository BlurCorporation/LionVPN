//
//  AuthCoordinatorView.swift
//  LionVPN
//
//  Created by Николай Чунихин on 24.07.2023.
//

import SwiftUI

struct AuthCoordinatorView: View {
    
    let diContainer: AuthDIContainer
    @ObservedObject var coordinator: AuthCoordinator
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    init(diContainer: AuthDIContainer) {
        self.diContainer = diContainer
        coordinator = AuthCoordinator(diContainer: diContainer)
    }
}

struct AuthCoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        AuthCoordinatorView(diContainer: AuthDIContainer(diContaner: AppDIContainer()))
    }
}
