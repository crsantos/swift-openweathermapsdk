//
//  OpenWeatherMap.swift
//  OpenWeatherMapSDK
//
//  Created by Carlos Santos on 27/09/14.
//  Copyright (c) 2014 Carlos Santos. All rights reserved.
//

import Foundation

/**
*  @brief  Completion handler for callbacks
*
*  @param obj:AnyObject? the response object
*  @param success:Bool?  whether the response was a success or a failure
*
*  @return the respective task to be canceled if user wants
*/
public typealias CompletionHandler = (obj:AnyObject?, success:Bool?) -> Void

/**
*  @brief  SDK class that will wrap the queries
*/
public class OpenWeatherMapSDK {
    
    public enum UnitSystem: String {
        
        case Metric = "metric"
        case Imperial = "imperial"
    }
    
    /// API key to configure SDK
    public var appKey:String!
    
    /// Brief ref to the shared session
    public var session: NSURLSession!
    
    public var unitSystem: UnitSystem!
    
    // MARK: - Object lifecycle
    
    public convenience init(appKey: String!) {
        
        self.init(appKey: appKey, unitSystem: .Metric)
    }
    
    public init(appKey: String!, unitSystem: UnitSystem!){
        
        AssertString(appKey)
        
        self.appKey = appKey
        self.session = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
    }
    
    // MARK: - Public
    
    /**
    Fetches the weather for the provided text search
    
    :param: name       the text to search: i.e.: "Lisbon,pt"
    :param: completion the callback closure
    
    :returns: a new task that can be canceled
    */
    public func searchByNameTask(name: String, completion:CompletionHandler) -> NSURLSessionDataTask {
        
        var request = NSURLRequest.searchByNameRequest(name)
        
        return self.taskForRequest(request, completion: completion)
    }
    
    /**
    Fetches the weather for the provided id
    
    :param: id       the id to search: 1231341
    :param: completion the callback closure
    
    :returns: a new task that can be canceled
    */
    public func searchByIdTask(id: String, completion:CompletionHandler) -> NSURLSessionDataTask {
        
        var request = NSURLRequest.searchByIdRequest(id)
        
        return self.taskForRequest(request, completion: completion)
    }
    
    /**
    Fetches the weather for the provided coordinates
    
    :param: latitude       the latitude to search: 26.123123
    :param: longitude      the longitude to search: 4.123123
    :param: completion     the callback closure
    
    :returns: a new task that can be canceled
    */
    public func searchByCoordinatesTask(latitude: Double, longitude: Double, completion:CompletionHandler) -> NSURLSessionDataTask {
        
        var request = NSURLRequest.searchByCoordinatesRequest(latitude, longitude: longitude)
        
        return self.taskForRequest(request, completion: completion)
    }
    
    /**
    Fetches the weather for the provided bounding box and zoom
    
    :param: latitudeA  lat of the top left point
    :param: longitudeA lon of the top left point
    :param: latitudeB  lat of the bottom right point
    :param: longitudeB lon of the bottom right point
    :param: zoom       map zoom
    :param: completion the callback closure
    
    :returns: a new task that can be canceled
    */
    public func searchByBoundingBoxTask(latitudeA: Double, longitudeA: Double, latitudeB: Double, longitudeB: Double, zoom:Double, completion:CompletionHandler) -> NSURLSessionDataTask {
        
        var request = NSURLRequest.searchByBoundingBoxRequest(latitudeA, longitudeA: longitudeA, latitudeB: latitudeB, longitudeB: longitudeB, zoom: zoom)
        
        return self.taskForRequest(request, completion: completion)
    }
    
    /**
    Fetches the weather for the provided circle radius
    
    :param: latitude   latitude
    :param: longitude  longitude
    :param: radius     radius of circle area
    :param: completion the callback closure
    
    :returns: a new task that can be canceled
    */
    public func searchByCircleTask(latitude:Double, longitude: Double, radius:Double, completion:CompletionHandler) -> NSURLSessionDataTask {
        
        var request = NSURLRequest.searchByCircleRequest(latitude, longitude: longitude, radius: radius)
        
        return self.taskForRequest(request, completion: completion)
    }
    
    /**
    Fetches the weather for the provided list of city Ids
    
    :param: cityIds    a list of ids of the desired cities
    :param: completion the callback closure
    
    :returns: a new task that can be canceled
    */
    public func searchByIdListTask(cityIds:[String], completion:CompletionHandler) -> NSURLSessionDataTask {
        
        var request = NSURLRequest.searchByIdListRequest(cityIds)
        
        return self.taskForRequest(request, completion: completion)
    }
    
    // MARK: - Private
    
    /**
    Builds a task via the request
    
    :param: request    the request to perform on task
    :param: completion the callback closure
    
    :returns: the built task already with completion set
    */
    func taskForRequest(request: NSURLRequest, completion:CompletionHandler) -> NSURLSessionDataTask {
        
        let task : NSURLSessionDataTask = self.session.dataTaskWithRequest(request, completionHandler: {(data, response, error) in
            
            if (error == nil) { // evaluate response
                
                let dict = self.parseJSON(data)
                completion(obj:dict, success:true)
                
            } else {
                
                completion(obj:nil, success:false)
            }
        });
        
        task.resume()
        
        return task
    }
    
    /**
    Helper method to parse JSON Dictionary from NSData object
    
    :param: inputData the NSData object
    
    :returns: a new NSDictionary with the json object
    */
    func parseJSON(inputData: NSData) -> NSDictionary{

        var parsedJSON: NSDictionary?
        var jsonError: NSError?
        let json = NSJSONSerialization.JSONObjectWithData(inputData, options: nil, error: &jsonError) as NSDictionary
        
        if let unwrappedError = jsonError {
            
            println("json error: \(unwrappedError)")
            
        } else {
            
            parsedJSON = json
        }
        
        return parsedJSON!
    }
}