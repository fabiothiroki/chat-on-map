//
//  ViewController.swift
//  Chat on Map
//
//  Created by Fabio Hiroki on 12/07/17.
//  Copyright © 2017 Fabio Hiroki. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {

    let userLocationDataSource = UserLocationResource.init(locationManager: CLLocationManager())
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

