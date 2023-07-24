//
//  LoginViewModel.swift
//  LionVPN
//
//  Created by Николай Чунихин on 24.07.2023.
//

import SwiftUI

enum LoginViewType {
    case login
    case register
}

final class LoginViewModel: ObservableObject {
    let viewType: LoginViewType
    
    init(viewType: LoginViewType) {
        self.viewType = viewType
    }
}
