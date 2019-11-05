//
//  ConverterTests.swift
//  FirstTests
//
//  Created by Ale Mohamad on 05/11/2019.
//  Copyright © 2019 Ale Mohamad. All rights reserved.
//

import XCTest
@testable import First

class ConverterTests: XCTestCase {

    var sut: Converter!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = Converter()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

//    func testFahrenheitToCelsius() {
//        // given
//        let sut = Converter()
//        let input1 = 32.0
//        let input2 = 212.0
//
//        // when
//        let output1 = sut.convertToCelsius(fahrenheit: input1)
//        let output2 = sut.convertToCelsius(fahrenheit: input2)
//
//        // then
//        XCTAssertEqual(output1, 0)
//        XCTAssertEqual(output2, 100)
//    }
    
    func test32FahrenheitIsZeroCelsius() {
        // given
        let input = 32.0
        
        // when
        let celsius = sut.convertToCelsius(fahrenheit: input)
        
        // then
        XCTAssertEqual(celsius, 0, accuracy: 0.000001)
    }
    
    func test212FahrenheitIs100Celsius() {
        // given
        let input = 212.0
        
        // when
        let celsius = sut.convertToCelsius(fahrenheit: input)
        
        // then
        XCTAssertEqual(celsius, 100, accuracy: 0.000001)
    }
    
    func test100FahrenheitIs37Celsius() {
        // given
        let input = 100.0
        
        // when
        let celsius = sut.convertToCelsius(fahrenheit: input)
        
        // then
        XCTAssertEqual(celsius, 37.777777, accuracy: 0.000001)
    }
    
}
