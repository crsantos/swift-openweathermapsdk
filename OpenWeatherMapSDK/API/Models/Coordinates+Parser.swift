//
//  Coordinates+Parser.swift
//  OpenWeatherMapSDK
//
//  Created by Carlos Santos on 28/09/14.
//  Copyright (c) 2014 Carlos Santos. All rights reserved.
//

import Foundation

extension Coordinates {
    
    class func parseFromDictionary(dict: [String: String]) -> Coordinates {
        
        let latitude  = NSString(string: dict["latitude"]!).doubleValue
        let longitude = NSString(string: dict["longitude"]!).doubleValue
        
        return Coordinates(latitude: latitude, longitude: longitude)
    }
}