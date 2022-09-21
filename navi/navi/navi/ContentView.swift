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

    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: true)
            .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
