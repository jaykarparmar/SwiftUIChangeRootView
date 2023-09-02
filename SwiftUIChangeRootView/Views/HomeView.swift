//
//  HomeView.swift
//  SwiftUIChangeRootView
//
//  Created by Jaykar Parmar on 02/09/23.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject private var appRootManager: AppRootManager
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            
            VStack(alignment: .trailing) {
                HStack {
                    Spacer()
                    Button {
                        appRootManager.currentRoot = .authentication
                    } label: {
                        Image(systemName: "square.and.arrow.up")
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                    }
                }
                Spacer()
            }
            .padding(.trailing)
            
            Text("Welcome Home")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(AppRootManager())
    }
}
