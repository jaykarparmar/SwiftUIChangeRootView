//
//  SwiftUIChangeRootViewApp.swift
//  SwiftUIChangeRootView
//
//  Created by Jaykar Parmar on 02/09/23.
//

import SwiftUI

@main
struct SwiftUIChangeRootViewApp: App {
    
    @StateObject private var appRootManager = AppRootManager()
    
    var body: some Scene {
        WindowGroup {
            Group {
                switch appRootManager.currentRoot {
                case .splash:
                    SplashView()
                    
                case .authentication:
                    LoginView()
                        .transition(.scale.animation(.easeInOut(duration: 0.5)))
                    
                case .home:
                    HomeView()
                        .transition(.scale.animation(.easeInOut(duration: 0.5)))
                }
            }
            .environmentObject(appRootManager)
        }
    }
}
