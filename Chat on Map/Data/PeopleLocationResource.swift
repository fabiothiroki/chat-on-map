//
//  PeopleLocationDataSource.swift
//  Chat on Map
//
//  Created by Fabio Hiroki on 19/07/17.
//  Copyright © 2017 Fabio Hiroki. All rights reserved.
//

import Foundation
import CoreLocation
import RxSwift

protocol PeopleLocationResourceProtocol {
    func getPeopleNearby(_ location: CLLocation) -> Observable<[PeopleLocation]>
}

struct PeopleLocationResource {


}

extension PeopleLocationResource: PeopleLocationResourceProtocol {

    func getPeopleNearby(_ location: CLLocation) -> Observable<[PeopleLocation]> {
    
        let people1 = PeopleLocation.init(
            name: "Suzanne Richelle",
            age: 25,
            latitude: location.coordinate.latitude + 10,
            longitude: location.coordinate.longitude + 10,
            imageUrl: "https://unsplash.it/200?image=996")
        
        return Observable.of([people1])
    }
}
