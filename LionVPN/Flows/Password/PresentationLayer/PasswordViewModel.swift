//
//  PasswordViewModel.swift
//  LionVPN
//
//  Created by Николай Чунихин on 24.07.2023.
//

import SwiftUI

enum PasswordViewType {
    case email
    case password
}

final class PasswordViewModel: ObservableObject {
    let viewType: PasswordViewType
    
    init(viewType: PasswordViewType) {
        self.viewType = viewType
    }
}
