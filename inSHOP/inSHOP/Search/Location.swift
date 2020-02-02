//
//  Location.swift
//  inSHOP
//
//  Created by Jai Gautam on 02/02/2020.
//  Copyright © 2020 Jai Gautam. All rights reserved.
//

import Foundation
class Location {
    static let shared = Location(lat: 0, lng: 0)
    var lat : Double
    var lng : Double
    private init(lat: Double, lng: Double){
        self.lat = lat
        self.lng = lng
    }
}

