//
//  Coordinate.swift
//  OpenWeatherMapSDK
//
//  Created by Carlos Santos on 27/09/14.
//  Copyright (c) 2014 Carlos Santos. All rights reserved.
//

import Foundation


public class Coordinate {
    
    var latitude:Double!
    var longitude:Double!
    
    init(latitude:Double, longitude:Double) {
        
        self.latitude = latitude
        self.longitude = longitude
    }
}