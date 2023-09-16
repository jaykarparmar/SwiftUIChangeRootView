//
//  SplashView.swift
//  SwiftUIChangeRootView
//
//  Created by Jaykar Parmar on 02/09/23.
//

import SwiftUI

struct SplashView: View {
    
    @EnvironmentObject private var appRootManager: AppRootManager
    
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            
            Text("SwiftUI Change Root View")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
        }
        
        .onAppear() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                appRootManager.currentRoot = .authentication
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
            .environmentObject(AppRootManager())
    }
}
