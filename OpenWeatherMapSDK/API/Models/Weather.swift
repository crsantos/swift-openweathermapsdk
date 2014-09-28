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
    
    init(id:String, main:String, description:String, icon:String){

        self.id          = id
        self.main        = main
        self.description = description
        self.icon        = icon
    }
}