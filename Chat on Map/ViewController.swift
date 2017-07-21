//
//  ViewController.swift
//  Chat on Map
//
//  Created by Fabio Hiroki on 12/07/17.
//  Copyright © 2017 Fabio Hiroki. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController {

    @IBOutlet fileprivate var mapView: MKMapView!
    
    var userLocationDataSource: UserLocationResource?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(userLocationDataSource)
    }
}

