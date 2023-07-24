//
//  MainCoordinatorView.swift
//  LionVPN
//
//  Created by Николай Чунихин on 24.07.2023.
//

import SwiftUI

struct MainCoordinatorView: View {
    
    let diContainer: MainDIContainer
    @ObservedObject var coordinator: MainCoordinator
    
    init(diContainer: MainDIContainer) {
        self.diContainer = diContainer
        self.coordinator = MainCoordinator(diContainer: diContainer)
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct MainCoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        MainCoordinatorView(diContainer: MainDIContainer(diContaner: AppDIContainer()))
    }
}
