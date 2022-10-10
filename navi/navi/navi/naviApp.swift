//
//  naviApp.swift
//  navi
//
//  Created by Jiaji sun on 9/21/22.
//

import SwiftUI

@main
struct naviApp: App {
    var body: some Scene {
        WindowGroup{
            HomeView()
        }
    }
}

struct naviApp_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
