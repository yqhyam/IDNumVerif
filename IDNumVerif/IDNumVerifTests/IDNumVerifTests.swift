//
//  IDNumVerifTests.swift
//  IDNumVerifTests
//
//  Created by YaM on 2019/7/1.
//  Copyright © 2019 yam. All rights reserved.
//

import XCTest
@testable import IDNumVerif

class IDNumVerifTests: XCTestCase {

    var f1: Float?
    var f2: Float?
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        f1 = 10.0
        f2 = 20.0
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertTrue(f1! + f2! == 30.0)
    }
    
    func testPerformanceExample() {
        // This is an example o
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
