//
//  Wind+Parser.swift
//  OpenWeatherMapSDK
//
//  Created by Carlos Santos on 28/09/14.
//  Copyright (c) 2014 Carlos Santos. All rights reserved.
//

import Foundation

extension Wind {

    class func parseFromDictionary(dict: [String: AnyObject]) -> Wind {
        
        let speed = dict["speed"]! as Double
        let deg   = dict["deg"]! as Double
        
        return Wind(speed: speed, deg: deg)
    }
}