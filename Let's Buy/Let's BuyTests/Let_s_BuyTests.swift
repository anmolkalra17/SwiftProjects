//
//  Let_s_BuyTests.swift
//  Let's BuyTests
//
//  Created by Anmol Kalra on 02/08/20.
//  Copyright © 2020 Anmol Kalra. All rights reserved.
//

import XCTest

class Let_s_BuyTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testgetHours(){
        XCTAssert(Wages.getHours(forWages: 25, andPrice: 100) == 4)
        XCTAssert(Wages.getHours(forWages: 15, andPrice: 1799) == 120)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
