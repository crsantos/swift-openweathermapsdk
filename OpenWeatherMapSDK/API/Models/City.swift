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
    var cod:            Int!
    var coordinates:    Coordinates!
    var weather:        Weather!
    var wind:           Wind!
    var environment:    Environment!
    var country:        String!
    var sunrise_time:   NSDate!
    var sunset_time:    NSDate!
    var id:             Int!
    var type:           Int!
    
    enum CityType {
        
        case One, Two
    }
    
    init(name: String, cod: Int, coordinates: Coordinates, weather: Weather, wind: Wind, environment: Environment, country: String, sunrise_time: NSDate, sunset_time: NSDate, id: Int, type:  Int){

        self.name         = name
        self.cod          = cod
        self.coordinates  = coordinates
        self.weather      = weather
        self.wind         = wind
        self.environment  = environment
        self.country      = country
        self.sunrise_time = sunrise_time
        self.sunset_time  = sunset_time
        self.id           = id
        self.type         = type
    }
}