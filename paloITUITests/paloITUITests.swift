//
//  paloITUITests.swift
//  paloITUITests
//
//  Created by Carlos Ponce on 04/08/20.
//  Copyright © 2020 Carlos Ponce. All rights reserved.
//

import XCTest

class paloITUITests: XCTestCase {
    
    let app = XCUIApplication()
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        app.launch()
        
        XCTAssert(app.otherElements["principalView"].exists)
        measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
            introNumbers()
        }
    }

    func introCharacters() {
        let textField = app.textFields["inputNumber"]
        textField.tap()
        textField.clearText(andReplaceWith: "asdiuo290k3j2m000")
        let button = app.buttons["CountNumbers"]
        button.tap()
    }
    
    func introNumbers() {
        let textField = app.textFields["inputNumber"]
        textField.tap()
        textField.clearText(andReplaceWith: "123123123345678")
        let button = app.buttons["CountNumbers"]
        button.tap()
    }
    
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
