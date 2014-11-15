//
//  NSData+Parser.swift
//  OpenWeatherMapSDK
//
//  Created by Carlos Santos on 15/11/14.
//  Copyright (c) 2014 Carlos Santos. All rights reserved.
//

import Foundation

extension NSData {
    
    /**
    Helper method to parse JSON Dictionary from the NSData object
    
    :returns: a new NSDictionary with the json object
    */
    func parse() -> Dictionary<String,AnyObject> {
        
        println("JSON: \(NSString(data: self, encoding: NSUTF8StringEncoding))")
        var parsedJSON: NSDictionary?
        var jsonError: NSError?
        
        let jsonOptional: AnyObject! = NSJSONSerialization.JSONObjectWithData(self, options: NSJSONReadingOptions(0), error: &jsonError)
        
        if let json = jsonOptional as? Dictionary<String, AnyObject> {
            
            println("After parse: \(json)")
            parsedJSON = json as Dictionary
            
        } else {
            
            println("json error unwrapping")
        }
        
        return parsedJSON! as Dictionary
    }
}