//
//  SwiftUIView.swift
//  LionVPN
//
//  Created by Андрей Барсуков on 20.09.2023.
//

import SwiftUI

struct MainView<ViewModel>: View where ViewModel: MainViewModelProtocol {
    
    // MARK: Properties
    /// ViewModel
    @ObservedObject var viewModel: ViewModel
    
    // MARK: Body
    /// Сборка слоя представления
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    // action
                }) {
                    Image(systemName: "star")
                        .resizable()
                        .frame(width: 30, height: 23)
                }
                Text("LionVPN")
                    .padding(.leading, 105)
                    .padding(.trailing, 105)
                Button(action: {
                    // action
                }) {
                    Image(systemName: "book")
                        .resizable()
                        .frame(width: 30, height: 23)
                }
            }
            .padding(.top, 44)
            .padding(.trailing, 16)
            .padding(.leading, 16)
            Spacer()
            
            Button(action: {
                // action
            }) {
                Image("Server")
                    .resizable()
                    .frame(width: 188, height: 44)
                    .aspectRatio(contentMode: .fit)
            }
            Spacer()
            
            Image("World")
                .resizable()
                .frame(width: 343, height: 177)
                .aspectRatio(contentMode: .fit)
                .padding(.top, 56)
            Spacer()
            
            Image("Lion04")
                .resizable()
                .frame(width: 112, height: 125)
                .padding(.top, 43)
                .padding(.leading, 247)
            Spacer()
            
            Button("Подключить") {
                // action
            }
            .frame(width: 343, height: 48)
            .background(.yellow)
            .foregroundColor(.white)
            .cornerRadius(10)
            .ignoresSafeArea()
            .padding(.bottom, 8)
    
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(viewModel: MainViewModel())
    }
}

