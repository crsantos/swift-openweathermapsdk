//
//  Environment+Parser.swift
//  OpenWeatherMapSDK
//
//  Created by Carlos Santos on 28/09/14.
//  Copyright (c) 2014 Carlos Santos. All rights reserved.
//

import Foundation

extension Environment {
    
    class func parseFromDictionary(dict: [String: String]) -> Environment {
        
        let grnd_level = NSString(string: dict["grnd_level"]!).doubleValue
        let humidity   = NSString(string: dict["humidity"]!).doubleValue
        let pressure   = NSString(string: dict["pressure"]!).doubleValue
        let sea_level  = NSString(string: dict["sea_level"]!).doubleValue
        let temp       = NSString(string: dict["temp"]!).doubleValue
        let temp_max   = NSString(string: dict["temp_max"]!).doubleValue
        let temp_min   = NSString(string: dict["temp_min"]!).doubleValue
        
        return Environment(grnd_level: grnd_level, humidity: humidity, pressure: pressure, sea_level: sea_level, temp: temp, temp_max: temp_max, temp_min: temp_min)
    }
}