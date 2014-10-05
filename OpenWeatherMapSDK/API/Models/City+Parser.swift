//
//  City+Parser.swift
//  OpenWeatherMapSDK
//
//  Created by Carlos Santos on 28/09/14.
//  Copyright (c) 2014 Carlos Santos. All rights reserved.
//

import Foundation

extension City {
    
    class func parseFromDictionary(dict: Dictionary<String,AnyObject>) -> City {
        
        var coordinates:Coordinates!
        var weather:Weather!
        var wind:Wind!
        var environment:Environment!
        var country:String!
        var sunrise_time:NSDate!
        var sunset_time:NSDate!
        var id:Int!
        var type:Int!
        
        let name         = dict["name"]! as String
        let cod          = dict["cod"]! as Int
        
        // coordinates
        if let coordinatesDict = dict["coord"]! as? Dictionary<String, AnyObject>{
         
            coordinates  = Coordinates.parseFromDictionary(coordinatesDict)
        }
        
        // weather
        if let weatherArray = dict["weather"]! as? Array< Dictionary<String, AnyObject> > {
            
            for weatherNode in weatherArray {
                
                weather = Weather.parseFromDictionary(weatherNode)
                break; // just parse the first one
            }
        }
        
        // Wind
        if let windDict = dict["wind"]! as? Dictionary<String, AnyObject> {
            
            wind = Wind.parseFromDictionary(windDict)
        }
        
        // Environment (main)
        if let environmentDict  = dict["main"]! as? Dictionary<String, AnyObject> {
        
            environment = Environment.parseFromDictionary(environmentDict)
        }
        
        // sys
        if let sysDict = dict["sys"]! as? Dictionary<String, AnyObject> {
            
            country = sysDict["country"]! as String
            id           = sysDict["id"]! as Int
            type         = sysDict["id"]! as Int
            
            var sunriseTimestamp:Double!
            var sunsetStringTimestamp:Double!
            
            if let sunriseTimestamp = sysDict["sunrise"]! as? Double {
            
                sunrise_time = NSDate(timeIntervalSince1970: sunriseTimestamp)
            }
            if let sunsetTimestamp = sysDict["sunset"]! as? Double {
                
                sunset_time = NSDate(timeIntervalSince1970: sunsetTimestamp)
            }
        }

        return City(name: name, cod: cod, coordinates: coordinates, weather: weather, wind: wind, environment: environment, country: country, sunrise_time: sunrise_time, sunset_time: sunset_time, id: id, type: type)
    }
}