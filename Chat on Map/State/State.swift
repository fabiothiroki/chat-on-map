//
//  State.swift
//  Chat on Map
//
//  Created by Fabio Hiroki on 18/07/17.
//  Copyright © 2017 Fabio Hiroki. All rights reserved.
//

import ReSwift

struct State: StateType {
    var peopleNearby: Result<[PeopleLocation]>?
}

enum Result<T> {
    case loading
    case failed
    case finished(T)
}

