//
//  OWMRequestSearchExtensions.swift
//  OpenWeatherMapSDK
//
//  Created by Carlos Santos on 27/09/14.
//  Copyright (c) 2014 Carlos Santos. All rights reserved.
//

import Foundation

/**
*  @brief  Extension that gathers all Search methods supported on SDK
*/
public extension NSURLRequest {
    
    // MARK: - Search by name
    
    public class func searchByNameRequest(name:NSString, unitSystem: OpenWeatherMapSDK.UnitSystem = OpenWeatherMapSDK.UnitSystem.Metric) -> NSURLRequest {
        
        var url = NSURL(scheme: API_SCHEME, host: API_ENDPOINT, path: "/weather?q=\(name)&units=\(unitSystem)")
        return NSURLRequest(URL: url)
    }
    
    // MARK: - Search by city id
    
    public class func searchByIdRequest(id:String, unitSystem: OpenWeatherMapSDK.UnitSystem = OpenWeatherMapSDK.UnitSystem.Metric) -> NSURLRequest {
        
        var url = NSURL(scheme: API_SCHEME, host: API_ENDPOINT, path: "/weather?id=\(id)&units=\(unitSystem)")
        return NSURLRequest(URL: url)
    }
    
    // MARK: - Search by coordinates
    
    public class func searchByCoordinatesRequest(latitude:Double, longitude: Double, unitSystem: OpenWeatherMapSDK.UnitSystem = OpenWeatherMapSDK.UnitSystem.Metric) -> NSURLRequest {
        
        var url = NSURL(scheme: API_SCHEME, host: API_ENDPOINT, path: "/weather?lat=\(latitude)&lon=\(longitude)&units=\(unitSystem)")
        return NSURLRequest(URL: url)
    }
    
    // MARK: - Search by bounding box
    
    public class func searchByBoundingBoxRequest(latitudeA:Double, longitudeA: Double, latitudeB:Double, longitudeB: Double, zoom:Double, unitSystem: OpenWeatherMapSDK.UnitSystem = OpenWeatherMapSDK.UnitSystem.Metric) -> NSURLRequest {
    
        var url = NSURL(scheme: API_SCHEME, host: API_ENDPOINT, path: "/find/city?bbox=\(latitudeA),\(longitudeA),\(latitudeB),\(longitudeA),\(zoom)&cluster=yes&units=\(unitSystem)")
        return NSURLRequest(URL: url)
    }
    
    // MARK: - Search by radius
    
    public class func searchByCircleRequest(latitude:Double, longitude: Double, radius:Double, unitSystem: OpenWeatherMapSDK.UnitSystem = OpenWeatherMapSDK.UnitSystem.Metric) -> NSURLRequest {
        
        var url = NSURL(scheme: API_SCHEME, host: API_ENDPOINT, path: "/find/city?lat=\(latitude)&lon=\(longitude)&cnt\(radius)&units=metric")
        return NSURLRequest(URL: url)
    }
    
    // MARK: - Bulk city search by ID
    
    public class func searchByIdListRequest(cityIds:[String], unitSystem: OpenWeatherMapSDK.UnitSystem = OpenWeatherMapSDK.UnitSystem.Metric) -> NSURLRequest {
        
        var listOfIds = ",".join(cityIds)
        var url = NSURL(scheme: API_SCHEME, host: API_ENDPOINT, path: "/group?id=\(listOfIds)&units=\(unitSystem)")
        return NSURLRequest(URL: url)
    }
}
