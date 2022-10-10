//
//  ContentView.swift
//  navi
//
//  Created by Jiaji sun on 9/21/22.
//

import MapKit
import SwiftUI

struct ContentView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.0150, longitude: -105.2705),
                                                   span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
     @State private var searchText = ""
    
    var body: some View {
        NavigationView{
            
            ZStack {
                Map(coordinateRegion: $region, showsUserLocation: true)

            }
                .searchable(text: $searchText)
                .navigationTitle("Search Location")
                
               
        }
        .navigationBarTitleDisplayMode(.automatic)
        
        
       
    }
    
    struct CongtentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}




//extension ButtonStyle.Configuration {
//    static func mainPage() -> UIButton.Configuration{
//        var config: UIButton.Configuration = .filled()
//        config.baseBackgroundColor = .systemBrown
//        config.title = "Main"
//        config.titleAlignment = .center
//        config.cornerStyle = .medium
//        return config
//    }
//}
