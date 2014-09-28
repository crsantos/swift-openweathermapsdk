//
//  Weather.swift
//  OpenWeatherMapSDK
//
//  Created by Carlos Santos on 27/09/14.
//  Copyright (c) 2014 Carlos Santos. All rights reserved.
//

import Foundation

public class Weather {
    
    var id:String!
    var main:String!
    var description:String!
    var icon:String!
    
//        Day	Night
//        01d.png  	01n.png  	clear sky
//        02d.png  	02n.png  	few clouds
//        03d.png  	03n.png  	scattered clouds
//        04d.png  	04n.png  	broken clouds
//        09d.png  	09n.png  	shower rain
//        10d.png  	10n.png  	rain
//        11d.png  	11n.png  	thunderstorm
//        13d.png  	13n.png  	snow
//        50d.png  	50n.png  	mist
    
    init(id:String, main:String, description:String, icon:String){

        self.id          = id
        self.main        = main
        self.description = description
        self.icon        = icon
    }
}