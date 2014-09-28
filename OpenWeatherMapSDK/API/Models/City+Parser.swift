//
//  City+Parser.swift
//  OpenWeatherMapSDK
//
//  Created by Carlos Santos on 28/09/14.
//  Copyright (c) 2014 Carlos Santos. All rights reserved.
//

import Foundation

extension City {
    
    class func parseFromDictionary(dict: Dictionary<String, AnyObject>) -> City {
     
        let name         = dict["name"]! as String
        let cod          = dict["cod"]! as String
        let coordinates  = Coordinates.parseFromDictionary(dict["coordinates"]! as Dictionary<String, String>)
        let weather      = Weather.parseFromDictionary(dict["weather"]! as Dictionary<String,String>)
        let wind         = Wind.parseFromDictionary(dict["wind"]! as Dictionary<String, String>)
        let environment  = Environment.parseFromDictionary(dict["environment"]! as Dictionary<String, String>)
        let country      = dict["country"]! as String
        let sunrise_time = NSDate(timeIntervalSince1970: NSString(string: dict["sunrise_time"]! as String).doubleValue)
        let sunset_time  = NSDate(timeIntervalSince1970: NSString(string: dict["sunset_time"]! as String).doubleValue)
        let id           = NSString(string: dict["id"]! as String).integerValue
        let type         = NSString(string: dict["type"]! as String).integerValue

        return City(name: name, cod: cod, coordinates: coordinates, weather: weather, wind: wind, environment: environment, country: country, sunrise_time: sunrise_time, sunset_time: sunset_time, id: id, type: type)
    }
}