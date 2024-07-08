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
        let items = [ CheckoutItem(name: "Beef", price: 40),
                            CheckoutItem(name: "Oil", price: 10),
                            CheckoutItem(name: "Rice", price: 30),
                            CheckoutItem(name: "Big onion", price: 20)]
        
        let taxPercentage = 20
        
        let totalToPay = calculateTotal(items: items, localTaxPercent: taxPercentage)
        
        XCTAssertEqual(totalToPay, 120)
    }

}
