//
//  StringExtensionsTests.swift
//  BoosterPack
//
//  Created by Nicholas Maccharoli on 11/14/15.
//  Copyright © 2015 Nicholas Maccharoli. All rights reserved.
//

import XCTest
@testable import BoosterPack

class StringExtensionsTests: XCTestCase {
    
    func testStringLength() {
        let petName = "gizmo"
        
        XCTAssert(petName.length == 5, "String length method is broken")
    }

    func testRegexSimpleTextMatch() {
        let isMatch = "coffee" =~ "coffee"

        XCTAssert(isMatch == true, "Simple matches are failing for regex operator.")
    }

    func testRegexSimpleMatchFail() {
        let isMatch = "coffee" =~ "tea"

        XCTAssert(isMatch == false, "Simple matches are falsely passing.")
    }

    func testRegexAnchorsProperPass() {
        let found = "Coffee is an essential vitamin" =~ "^Coffee"

        XCTAssert(found == true, "Anchored matches not working.")
    }

    func testRegexAnchorExclusivity() {
        let found = "If you don't drink coffee, you cant enjoy coffee" =~ "^you.*"

        XCTAssert(found == false, "Anchor matches are not working")
    }

    func testWordDetection() {
        let found = "Somewhere in this sentence lies a pause... pause" =~ "\\bpause\\b"

        XCTAssert(found == true, "Word boundries are failing to register.")
    }

    func testWordDetectionNotOverextending() {
        let found = "Somewhere in this sentence lies a pause... or maybe not" =~ "\\bpause\\b"

        XCTAssert(found == true, "Word boundries are failing to register.")
    }

    func testHiraganaToKatakana() {
        let word = "こんにちは"

        XCTAssert((word.katakana == "コンニチハ"), "Converting word to Katakana is failing.")
    }

    func testKatakanaToHiragana() {
        let word = "コンニチハ"

        XCTAssert((word.hiragana == "こんにちは"), "Converting word to Hiragana is failing.")
    }
}
