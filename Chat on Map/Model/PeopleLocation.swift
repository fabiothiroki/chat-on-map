//
//  FriendLocation.swift
//  Chat on Map
//
//  Created by Fabio Hiroki on 18/07/17.
//  Copyright © 2017 Fabio Hiroki. All rights reserved.
//

import Foundation

struct PeopleLocation {
    
    let name: String
    let age: Int
    let latitude: Double
    let longitude: Double
    let imageUrl: String
    
    init(name: String,
        age: Int,
        latitude: Double,
        longitude: Double,
        imageUrl: String) {
        
        self.name = name
        self.age = age
        self.latitude = latitude
        self.longitude = longitude
        self.imageUrl = imageUrl
    }
}



