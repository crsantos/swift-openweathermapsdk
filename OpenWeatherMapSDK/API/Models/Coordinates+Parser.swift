//
//  Coordinates+Parser.swift
//  OpenWeatherMapSDK
//
//  Created by Carlos Santos on 28/09/14.
//  Copyright (c) 2014 Carlos Santos. All rights reserved.
//

import Foundation

extension Coordinates {
    
    class func parseFromDictionary(dict: [String: AnyObject]) -> Coordinates {
        
        var lat:Double!
        var lon:Double!
        
        if let latValue = dict["lat"]! as? Double {
            
            lat = latValue
        }
        
        if let lonValue = dict["lon"]! as? Double {
            
            lon = lonValue
        }
        
        return Coordinates(latitude: lat, longitude: lon)
    }
}