//
//  Weather+Parser.swift
//  OpenWeatherMapSDK
//
//  Created by Carlos Santos on 28/09/14.
//  Copyright (c) 2014 Carlos Santos. All rights reserved.
//

import Foundation


extension Weather {
    
    class func parseFromDictionary(dict: [String: String]) -> Weather {
        
        let id          = dict["id"]!
        let main        = dict["main"]!
        let description = dict["description"]!
        let icon        = dict["icon"]!
        
        return Weather(id: id, main: main, description: description, icon: icon)
    }
}