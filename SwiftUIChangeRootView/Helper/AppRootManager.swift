//
//  AppRootManager.swift
//  SwiftUIChangeRootView
//
//  Created by Jaykar Parmar on 02/09/23.
//

import Foundation

final class AppRootManager: ObservableObject {
    
    @Published var currentRoot: eAppRoots = .splash
    
    enum eAppRoots {
        case splash
        case authentication
        case home
    }
}
