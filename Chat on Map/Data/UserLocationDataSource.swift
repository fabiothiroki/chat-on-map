//
//  UserLocationDataSource.swift
//  Chat on Map
//
//  Created by Fabio Hiroki on 13/07/17.
//  Copyright © 2017 Fabio Hiroki. All rights reserved.
//

import CoreLocation

protocol LocationManager {
    var delegate: CLLocationManagerDelegate? { get set }
    func requestWhenInUseAuthorization()
    func requestLocation()
}

extension CLLocationManager: LocationManager {}

class UserLocationDataSource: NSObject {
    
    fileprivate var locationManager: LocationManager
    
    init(locationManager: LocationManager) {
        
        self.locationManager = locationManager
        
        super.init()
        
        self.locationManager.delegate = self
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.requestLocation()
    }

}


extension UserLocationDataSource: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print(locations)
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
}
