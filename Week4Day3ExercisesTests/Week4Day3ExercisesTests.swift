//
//  Week4Day3ExercisesTests.swift
//  Week4Day3ExercisesTests
//
//  Created by Brent Fordham on 4/19/17.
//  Copyright © 2017 Brent Fordham. All rights reserved.
//

import XCTest
@testable import Week4Day3Exercises

class Week4Day3ExercisesTests: XCTestCase {
    
    func testMapBully() {
        let result = mapBully(input: ["a": "alpha", "b": "beta", "c": "gamma", "d": "delta"])
        let expected = ["a": "", "b": "alpha", "c": "gamma", "d": "delta"]
        XCTAssertEqual(result, expected)
    }
    
    func testMapBully2() {
        let result = mapBully(input: ["b": "beta", "c": "gamma", "d": "delta"])
        let expected = ["b": "beta", "c": "gamma", "d": "delta"]
        XCTAssertEqual(result, expected)
    }
    
    func testMapShare() {
        let result = mapShare(input: ["a": "alpha", "b": "beta", "c": "gamma", "d": "delta"])
        let expected = ["a": "alpha", "b": "alpha", "d": "delta"]
        XCTAssertEqual(result, expected)
    }
    
    func testMapShare2() {
        let result = mapShare(input: ["b": "beta", "c": "gamma", "d": "delta"])
        let expected = ["b": "beta", "d": "delta"]
        XCTAssertEqual(result, expected)
    }
    
    func testMapAB() {
        let result = mapAB(input: ["a": "alpha", "b": "beta", "c": "gamma", "d": "delta"])
        let expected = ["a": "alpha", "ab": "alphabeta", "b": "beta", "c": "gamma", "d": "delta"]
        XCTAssertEqual(result, expected)
    }
    
    func testMapAB2() {
        let result = mapAB(input: ["b": "beta", "c": "gamma", "d": "delta"])
        let expected = ["b": "beta", "c": "gamma", "d": "delta"]
        XCTAssertEqual(result, expected)
    }
    
    func testToppings() {
        let result = toppings(input: ["ice cream": "olives", "pizza": "pepperoni"])
        let expected = ["ice cream": "cherry", "bread": "butter", "pizza": "pepperoni"]
        XCTAssertEqual(result, expected)
    }
    
    func testToppings2() {
        let result = toppings2(input: ["ice cream": "cherries", "spinach": "feta cheese"])
        let expected = ["ice cream": "cherries", "yogurt": "cherries", "spinach": "nuts"]
        XCTAssertEqual(result, expected)
    }
    
    func testToppings2point2() {
        let result = toppings2(input: ["yogurt": "cherries"])
        let expected = ["yogurt": "cherries"]
        XCTAssertEqual(result, expected)
    }
    
    func testToppings3() {
        let result = toppings3(input: ["potato": "cheese and bacon", "fries": "ketchup", "salad": "dressing", "spinach": "nuts"])
        let expected = ["potato": "cheese and bacon", "fries": "cheese and bacon", "salad": "dressing", "spinach": "dressing"]
        XCTAssertEqual(result, expected)
    }
    
    func testMapAB2point1() {
        let result = mapAB2(input: ["a": "alpha", "b": "beta", "c": "gamma", "d": "delta"])
        let expected = ["a": "alpha", "b": "beta", "c": "gamma", "d": "delta"]
        XCTAssertEqual(result, expected)
    }
    
    func testMapAB2point2() {
        let result = mapAB2(input: ["a": "alpha", "b": "alpha", "c": "gamma", "d": "delta"])
        let expected = ["c": "gamma", "d": "delta"]
        XCTAssertEqual(result, expected)
    }
    
    func testMapAB3point1() {
        let result = mapAB3(input: ["a": "alpha", "b": "beta", "c": "gamma", "d": "delta"])
        let expected = ["a": "alpha", "b": "beta", "c": "gamma", "d": "delta"]
        XCTAssertEqual(result, expected)
    }
    
    func testMapAB3point2() {
        let result = mapAB3(input: ["a": "alpha", "c": "gamma", "d": "delta"])
        let expected = ["a": "alpha", "b": "alpha", "c": "gamma", "d": "delta"]
        XCTAssertEqual(result, expected)
    }
    
    func testMapAB3point3() {
        let result = mapAB3(input: ["b": "beta", "c": "gamma", "d": "delta"])
        let expected = ["a": "beta", "b": "beta", "c": "gamma", "d": "delta"]
        XCTAssertEqual(result, expected)
    }
    
    func testMapAB4point1() {
        let result = mapAB4(input: ["a": "hello", "b": "hello"])
        let expected = ["a": "", "b": ""]
        XCTAssertEqual(result, expected)
    }
    
    func testMapAB4point2() {
        let result = mapAB4(input: ["a": "hello", "b": "hi"])
        let expected = ["a": "hello", "b": "hi", "c": "hello"]
        XCTAssertEqual(result, expected)
    }
    
    func testMapAB4point3() {
        let result = mapAB4(input: ["a": "hi", "b": "hello"])
        let expected = ["a": "hi", "b": "hello", "c": "hello"]
        XCTAssertEqual(result, expected)
    }
    
    func testWord0() {
        let result = word0(input: ["one", "two", "three"])
        let expected = ["one": 0, "two": 0, "three": 0]
        XCTAssertEqual(result, expected)
    }
    
    func testWordLen() {
        let result = wordLen(input: ["car", "jacket", "tube", "triskadecaphobia"])
        let expected = ["car": 3, "jacket": 6, "tube": 4, "triskadecaphobia": 16]
        XCTAssertEqual(result, expected)
    }
    
    func testPairs() {
        let result = pairs(input: ["car", "jacket", "tube", "triskadecaphobia"])
        let expected: [Character: Character] = ["c": "r", "j": "t", "t": "a"]
        XCTAssertEqual(result, expected)
    }
    
    func testWordCount() {
        let result = wordCount(input: ["a", "b", "b", "c", "c", "c", "d"])
        let expected = ["a": 1, "b": 2, "c": 3, "d": 1]
        XCTAssertEqual(result, expected)
    }
    
    func testFirstChar() {
        let result = firstChar(input: ["alpha", "arm", "ardvark", "yellow", "whiskey", "young", "wonder"])
        let expected: [Character: String] = ["a": "alphaarmardvark", "y": "yellowyoung", "w": "whiskeywonder"]
        XCTAssertEqual(result, expected)
    }
    
    func testWordAppend() {
        let result = wordAppend(input: ["a", "b", "a", "c", "a", "d", "a", "e", "a"])
        let expected = "aa"
        XCTAssertEqual(result, expected)
    }
    
    func testWordAppend2() {
        let result = wordAppend(input: [""])
        let expected = ""
        XCTAssertEqual(result, expected)
    }
    
    func testWordMultiple() {
        let result = wordMultiple(input: ["a", "b", "b", "c", "c", "c", "d", "e", "e"])
        let expected = ["a": false, "b": true, "c": true, "d": false, "e": true]
        XCTAssertEqual(result, expected)
    }
    
}
