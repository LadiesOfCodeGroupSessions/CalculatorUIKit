//
//  CalculatorUIKitTests.swift
//  CalculatorUIKitTests
//
//  Created by Maria Kharybina on 22/03/2023.
//

import XCTest
@testable import CalculatorUIKit

final class CalculatorControllerTests: XCTestCase {

    func testAddition() throws {
        //Given - controller, two numbers
        let testSubject = CalculatorController()
        let numberOne: Int = 5
        let numberTwo: Int = -10
        
        //When - add two numbers using a controller
        let result = testSubject.add(a: numberOne, b:numberTwo)
        
        //Then - one number as a result
        XCTAssertEqual(result, numberOne + numberTwo)
    }
    
    func testSubstacting() throws {
        let testSubject = CalculatorController()
        let numberOne: Int = 5
        let numberTwo: Int = -10
        
        let result = testSubject.subtract(a: numberOne, b: numberTwo)
        
        XCTAssertEqual(result, numberOne - numberTwo)
        
    }
    
    func testMultiplying() throws {
        let testSubject = CalculatorController()
        let numberOne: Int = 5
        let numberTwo: Int = -10
        
        let result = testSubject.multiply(a: numberOne, b: numberTwo)
        
        XCTAssertEqual(result, numberOne * numberTwo)
    }
    
    func testDivision() throws {
        let testSubject = CalculatorController()
        let numberOne: Int = 5
        let numberTwo: Int = -10
        
        let result = testSubject.divide(a: numberOne, b: numberTwo)
        
        XCTAssertEqual(result, numberOne / numberTwo)
    }
}
