//
//  XCUISiriUITests.swift
//  XCUISiriUITests
//
//  Created by Shashikant Jagtap on 07/02/2017.
//  Copyright © 2017 Shashikant Jagtap. All rights reserved.
//

import XCTest

class XCUISiriUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false

        XCUIApplication().launch()

    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testXCUISiriOpenExistingApp() {
        
        XCUIDevice.shared().siriService.activate(voiceRecognitionText: "Open News")
        
    }
    
    
    func testXCUISiriNotInstalledApp() {
        
        XCUIDevice.shared().siriService.activate(voiceRecognitionText: "Open Facebook")
        
    }
    
    
    func testXCUISiriAskHowAreYou() {
        
        XCUIDevice.shared().siriService.activate(voiceRecognitionText: "How Are You?")
        sleep(10)
        
        
    }
    
    
    
    
    
    
}
