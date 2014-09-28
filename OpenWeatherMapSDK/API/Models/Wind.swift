//
//  Wind.swift
//  OpenWeatherMapSDK
//
//  Created by Carlos Santos on 27/09/14.
//  Copyright (c) 2014 Carlos Santos. All rights reserved.
//

import Foundation

class Wind {
    
    var speed:Double!
    var deg:Double!
    
    init(speed:Double, deg:Double){
        
        self.speed = speed;
        self.deg   = deg;
    }
}