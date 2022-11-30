//
//  HomeView.swift
//  navi
//
//  Created by Jiaji sun on 10/4/22.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        TabView {
            MapView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            ProfileView()
                .tabItem {
                    Label("Account", systemImage: "person")
                }
            
        }
        
    }
    
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
