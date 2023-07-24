//
//  SubscriptionView.swift
//  LionVPN
//
//  Created by Николай Чунихин on 24.07.2023.
//

import SwiftUI

struct SubscriptionView: View {
    
    @ObservedObject var viewModel: SubscriptionViewModel
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SubscriptionView_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionView(viewModel: SubscriptionViewModel())
    }
}
