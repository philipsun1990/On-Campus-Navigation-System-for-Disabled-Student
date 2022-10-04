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
                ContentView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                        SettingView()
                            .tabItem {
                                Label("Setting", systemImage: "gear")
                            }
                    
            }
        }
    }


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
