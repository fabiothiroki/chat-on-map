//
//  SwinjectStoryboard+Setup.swift
//  Chat on Map
//
//  Created by Fabio Hiroki on 19/07/17.
//  Copyright © 2017 Fabio Hiroki. All rights reserved.
//

import Swinject
import SwinjectStoryboard
import CoreLocation

extension SwinjectStoryboard {
    class func setup() {
        defaultContainer.storyboardInitCompleted(ViewController.self) { r, c in
            c.userLocationResource = r.resolve(UserLocationResource.self)
            c.peopleLocationResource = r.resolve(PeopleLocationResourceProtocol.self)
        }
        
        defaultContainer.register(LocationManager.self) { _ in CLLocationManager() }
        defaultContainer.register(UserLocationResource.self) { r in
            UserLocationResource.init(locationManager: r.resolve(LocationManager.self)!)
        }
        
        defaultContainer.register(PeopleLocationResourceProtocol.self) {
            _ in PeopleLocationResource()
        }

    }
}
