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
            c.userLocationDataSource = r.resolve(UserLocationResource.self)
        }
        
        defaultContainer.register(LocationManager.self) { _ in CLLocationManager() }
        defaultContainer.register(UserLocationResource.self) { r in
            UserLocationResource.init(locationManager: r.resolve(LocationManager.self)!)
        }

    }
}
