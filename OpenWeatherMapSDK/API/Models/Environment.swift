//
//  Environment.swift
//  OpenWeatherMapSDK
//
//  Created by Carlos Santos on 27/09/14.
//  Copyright (c) 2014 Carlos Santos. All rights reserved.
//

import Foundation

public class Environment {
    
    var grnd_level: Double!
    var humidity: Double!
    var pressure: Double!
    var sea_level: Double!
    var temp: Double!
    var temp_max: Double!
    var temp_min: Double!
    
    init(
        grnd_level: Double,
        humidity: Double,
        pressure: Double,
        sea_level: Double,
        temp: Double,
        temp_max: Double,
        temp_min: Double){
        
            self.grnd_level = grnd_level
            self.humidity   = humidity
            self.pressure   = pressure
            self.sea_level  = sea_level
            self.temp       = temp
            self.temp_max   = temp_max
            self.temp_min   = temp_min
    }
    
}