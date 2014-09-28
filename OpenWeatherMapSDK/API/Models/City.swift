//
//  City.swift
//  OpenWeatherMapSDK
//
//  Created by Carlos Santos on 27/09/14.
//  Copyright (c) 2014 Carlos Santos. All rights reserved.
//

import Foundation

public class City {
    
    var name:           String!
    var cod:            String!
    var coordinates:    Coordinate!
    var weather:        Weather!
    var wind:           Wind!
    var environment:    Environment!
    var country:        String!
    var sunrise_time:   NSDate!
    var sunset_time:    NSDate!
    var id:             Int!
    var type:           Int!
}