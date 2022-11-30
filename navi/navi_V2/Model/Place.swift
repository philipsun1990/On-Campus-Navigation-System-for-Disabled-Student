//
//  Place.swift
//  navi_V2
//
//  Created by Jiaji sun on 11/29/22.
//

import SwiftUI
import MapKit

struct Place: Identifiable {
    
    var id = UUID().uuidString
    var place: CLPlacemark
}
