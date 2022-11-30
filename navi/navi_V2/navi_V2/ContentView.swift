//
//  ContentView.swift
//  navi_V2
//
//  Created by Jiaji sun on 11/29/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            //
            //            ZStack{
            //                ProfileView()
            //                    .tabItem {
            //                        Label("Account", systemImage: "person")
            //                    }
            //            }
            //
            //        }
            
            Home()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            MapContainerView()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
            ProfileView()
                .tabItem {
                    Label("Account", systemImage: "person")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
