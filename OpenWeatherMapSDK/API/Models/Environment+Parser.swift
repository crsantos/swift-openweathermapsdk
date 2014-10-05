//
//  Environment+Parser.swift
//  OpenWeatherMapSDK
//
//  Created by Carlos Santos on 28/09/14.
//  Copyright (c) 2014 Carlos Santos. All rights reserved.
//

import Foundation

extension Environment {
    
    class func parseFromDictionary(dict: [String: AnyObject]) -> Environment {
        
        let humidity   = dict["humidity"]! as Double
        let pressure   = dict["pressure"]! as Double
        let temp       = dict["temp"]! as Double
        let temp_max   = dict["temp_max"]! as Double
        let temp_min   = dict["temp_min"]! as Double
        let sea_level  = 0.0 // dict["sea_level"]! as Double
        let grnd_level = 0.0 // dict["grnd_level"]! as Double
        
        // TODO: optional parsing of sea_level and grnd_level
        
        return Environment(grnd_level: grnd_level, humidity: humidity, pressure: pressure, sea_level: sea_level, temp: temp, temp_max: temp_max, temp_min: temp_min)
    }
}