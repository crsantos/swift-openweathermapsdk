//
//  Wind+Parser.swift
//  OpenWeatherMapSDK
//
//  Created by Carlos Santos on 28/09/14.
//  Copyright (c) 2014 Carlos Santos. All rights reserved.
//

import Foundation

extension Wind {

    class func parseFromDictionary(dict: [String: String]) -> Wind {
     
        // TODO: is there an easier way?
        let speed = NSString(string: dict["speed"]!).doubleValue
        let deg   = NSString(string: dict["deg"]!).doubleValue
        
        return Wind(speed: speed, deg: deg)
    }
}