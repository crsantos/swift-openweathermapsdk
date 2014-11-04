//
//  NSURLRequest+ForecastExtentions.swift
//  OpenWeatherMapSDK
//
//  Created by Carlos Santos on 07/10/14.
//  Copyright (c) 2014 Carlos Santos. All rights reserved.
//

import Foundation

public extension NSURLRequest {

    // MARK: - Forecast by city name
    
    /**
    Builds the request for a forcast for a city name
    
    :param: name        the city name
    :param: unitSystem  either metric or imperial
    
    :returns: a new request formatted
    */
    public class func forecastByNameRequest(cityName:NSString, unitSystem: OpenWeatherMapSDK.UnitSystem = OpenWeatherMapSDK.UnitSystem.Metric) -> NSURLRequest {
        
        var url:NSURL! = NSURL(scheme: API_SCHEME, host: API_ENDPOINT, path: "/forecast?q=\(cityName)&units=\(unitSystem)")
        return NSURLRequest(URL: url)
    }
    
    // MARK: - Forecast by coordinates
    
    /**
    Builds the request for a forcast for a city name
    
    :param: name        the city name
    :param: unitSystem  either metric or imperial
    
    :returns: a new request formatted
    */
    public class func forecastByCoordinatesRequest(latitude:Double, longitude: Double, unitSystem: OpenWeatherMapSDK.UnitSystem = OpenWeatherMapSDK.UnitSystem.Metric) -> NSURLRequest {
        
        var url:NSURL! = NSURL(scheme: API_SCHEME, host: API_ENDPOINT, path: "/forecast?lat=\(latitude)&lon=\(longitude)&units=\(unitSystem)")
        return NSURLRequest(URL: url)
    }
    
    // MARK: - Forecast by city id
    
    /**
    Builds the request for a forcast for a city Id
    
    :param: id         the city id
    :param: unitSystem either metric or imperial
    
    :returns: a new request formatted
    */
    public class func forecastByIdRequest(id:String, unitSystem: OpenWeatherMapSDK.UnitSystem = OpenWeatherMapSDK.UnitSystem.Metric) -> NSURLRequest {
        
        var url:NSURL! = NSURL(scheme: API_SCHEME, host: API_ENDPOINT, path: "/forecast?id=\(id)&units=\(unitSystem)")
        return NSURLRequest(URL: url)
    }
    
    // MARK: - Daily Forecast by city name
    
    /**
    Builds the request for a daily forcast for a city name
    
    :param: name        the city name
    :param: unitSystem  either metric or imperial
    
    :returns: a new request formatted
    */
    public class func dailyForecastByNameRequest(cityName:NSString, unitSystem: OpenWeatherMapSDK.UnitSystem = OpenWeatherMapSDK.UnitSystem.Metric) -> NSURLRequest {
        
        var url:NSURL! = NSURL(scheme: API_SCHEME, host: API_ENDPOINT, path: "/forecast/daily?q=\(cityName)&units=\(unitSystem)")
        return NSURLRequest(URL: url)
    }
    
    // MARK: - Daily Forecast by coordinates
    
    /**
    Builds the request for a daily forcast for specific coordinates
    
    :param: latitude    the latitude of city
    :param: longitude   the longitude of city
    :param: unitSystem  either metric or imperial
    
    :returns: a new request formatted
    */
    public class func dailyForecastByCoordinatesRequest(latitude:Double, longitude: Double, unitSystem: OpenWeatherMapSDK.UnitSystem = OpenWeatherMapSDK.UnitSystem.Metric) -> NSURLRequest {
        
        var url:NSURL! = NSURL(scheme: API_SCHEME, host: API_ENDPOINT, path: "/forecast/daily?lat=\(latitude)&lon=\(longitude)&units=\(unitSystem)")
        return NSURLRequest(URL: url)
    }
    
    
    // MARK: - Daily Forecast by city id
    
    /**
    Builds the request for a daily forcast for a city Id
    
    :param: id         the city id
    :param: unitSystem either metric or imperial
    
    :returns: a new request formatted
    */
    public class func dailyForecastIdRequest(id:String, unitSystem: OpenWeatherMapSDK.UnitSystem = OpenWeatherMapSDK.UnitSystem.Metric) -> NSURLRequest {
        
        var url:NSURL! = NSURL(scheme: API_SCHEME, host: API_ENDPOINT, path: "/forecast/daily?id=\(id)&units=\(unitSystem)")
        return NSURLRequest(URL: url)
    }
}