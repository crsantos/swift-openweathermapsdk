//
//  Weather+Parser.swift
//  OpenWeatherMapSDK
//
//  Created by Carlos Santos on 28/09/14.
//  Copyright (c) 2014 Carlos Santos. All rights reserved.
//

import Foundation


extension Weather {
    
    class func parseFromDictionary(dict: Dictionary<String, AnyObject>) -> Weather {
        
        let id          = dict["id"]! as Int
        let main        = dict["main"]! as String
        let description = dict["description"]! as String
        let icon        = dict["icon"]! as String
        
        return Weather(id: id, main: main, description: description, icon: icon)
    }
}