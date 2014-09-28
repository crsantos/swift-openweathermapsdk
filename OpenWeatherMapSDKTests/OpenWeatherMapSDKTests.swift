//
//  OpenWeatherMapSDKTests.swift
//  OpenWeatherMapSDKTests
//
//  Created by Carlos Santos on 27/09/14.
//  Copyright (c) 2014 Carlos Santos. All rights reserved.
//

import UIKit
import XCTest

class OpenWeatherMapSDKTests: XCTestCase {
    
    var sdk: OpenWeatherMapSDK!
    
    override func setUp() {
        
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        self.sdk = OpenWeatherMapSDK(appKey: "1234")
    }
    
    override func tearDown() {
        
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        self.sdk = nil
    }
    
    func testSDKInstantiation() {
        
        XCTAssert(self.sdk != nil, "sdk cannot be nil")
    }
    
    func testSDKapiKey() {
        
        XCTAssert(self.sdk.appKey == "1234", "sdk api key must comply")
    }
}
