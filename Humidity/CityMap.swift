//
//  CityMap.swift
//  Humidity
//
//  Created by Peter Fryer-Davis on 2016-04-23.
//  Copyright © 2016 Peter Fryer-Davis. All rights reserved.
//

import Foundation

class CityMap: NSObject {
    var numCities : Int!
    var cities : NSArray!
    
    init(numCities : Int, cities : NSArray) {
        super.init()
        self.numCities = numCities
        self.cities = cities
    }
}
