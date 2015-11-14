//
//  DictionaryExtensionTests.swift
//  BoosterPack
//
//  Created by Nicholas Maccharoli on 11/14/15.
//  Copyright © 2015 Nicholas Maccharoli. All rights reserved.
//

import XCTest
@testable import BoosterPack

class DictionaryExtensionTests: XCTestCase {
    
    func testDictionaryAddition() {
        let original = ["key_a" : 1]
        let augmented = original + ["key_b" : 2]
        let expected = ["key_a" : 1, "key_b" : 2]
        
        XCTAssert(augmented == expected, "Dictionary addition is Broken!")
    }
    
    func testDictionaryCompoundAddition() {
        var testDictionary = ["key_a" : 1]
        testDictionary += ["key_b" : 2]
        let expected = ["key_a" : 1, "key_b" : 2]
        
        XCTAssert(testDictionary == expected, "Dictionary addition is Broken!")
    }
    
    func testDictionarySubtraction() {
        let original = ["key_a" : 1, "key_b" : 2]
        let reducedDictionary = original - ["key_b" : 2]
        let expected = ["key_a" : 1]
        
        XCTAssert(reducedDictionary == expected, "Dictionary addition is Broken!")
    }
    
    func testDictionaryCompoundSubtraction() {
        var testDictionary = ["key_a" : 1, "key_b" : 2]
        testDictionary -= ["key_b" : 2]
        let expected = ["key_a" : 1]
        
        XCTAssert(testDictionary == expected, "Dictionary addition is Broken!")
    }
}
