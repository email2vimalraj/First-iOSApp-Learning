//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Vimal Raj on 24/10/15.
//
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    // MARK: FoodTracker Tests
    
    // Tests to confirm that the meal initializer returns when no name or a negative rating is provided
    func testMealInitialization() {
        
        // Success case
        let potentialItem = Meal(name: "Newest Meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        // Failure cases
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName)
        
        let badRating = Meal(name: "Bad Rating", photo: nil, rating: -1)
        XCTAssertNil(badRating)
    }
}
