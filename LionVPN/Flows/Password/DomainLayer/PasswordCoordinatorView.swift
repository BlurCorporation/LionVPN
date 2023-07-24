//
//  PasswordCoordinatorView.swift
//  LionVPN
//
//  Created by Николай Чунихин on 24.07.2023.
//

import SwiftUI

struct PasswordCoordinatorView: View {
    
    let diContainer: PasswordDIContainer
    @ObservedObject var coordinator: PasswordCoordinator
    
    init(diContainer: PasswordDIContainer) {
        self.diContainer = diContainer
        self.coordinator = PasswordCoordinator(diContainer: diContainer)
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PasswordCoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordCoordinatorView(diContainer: PasswordDIContainer(diContaner: AppDIContainer()))
    }
}
