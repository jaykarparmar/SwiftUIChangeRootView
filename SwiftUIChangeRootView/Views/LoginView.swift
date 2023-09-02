//
//  LoginView.swift
//  SwiftUIChangeRootView
//
//  Created by Jaykar Parmar on 02/09/23.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject private var appRootManager: AppRootManager
    
    var body: some View {
        ZStack {
            Color.pink
                .ignoresSafeArea()
            
            Button {
                withAnimation(.spring()) {
                    appRootManager.currentRoot = .home
                }
            } label: {
                Text("Login")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
            }
            .background(.blue)
            .cornerRadius(12)
            .padding()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(AppRootManager())
    }
}
