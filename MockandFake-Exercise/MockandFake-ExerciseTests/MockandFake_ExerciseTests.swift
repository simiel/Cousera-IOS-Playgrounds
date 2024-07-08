//
//  MockandFake_ExerciseTests.swift
//  MockandFake-ExerciseTests
//
//  Created by Samuel Mensa on 08/07/2024.
//

import XCTest
@testable import MockandFake_Exercise

final class MockandFake_ExerciseTests: XCTestCase {

    func test_calculateTotal_salesTaxTwentyPercent(){
        let items = [ CheckoutItem(name: "Fish and Chips", price: 625) ]
        
        let taxPercentage = 20
        
        let totalToPay = calculateTotal(items: items, localTaxPercent: taxPercentage)
        
        XCTAssertEqual(totalToPay, 750)
    }

}
