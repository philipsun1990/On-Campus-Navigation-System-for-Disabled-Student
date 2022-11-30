//
//  Home.swift
//  navi_V2
//
//  Created by Jiaji sun on 11/29/22.
//

import SwiftUI

struct Home: View {
    
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

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
