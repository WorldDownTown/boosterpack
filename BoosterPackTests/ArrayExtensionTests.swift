//
//  ArrayExtensionTests.swift
//  BoosterPack
//
//  Created by Nicholas Maccharoli on 11/15/15.
//  Copyright © 2015 Nicholas Maccharoli. All rights reserved.
//

import XCTest
@testable import BoosterPack

class ArrayExtensionTests: XCTestCase {
    
    func testShiftAppend() {
        var testArray = [1,2,3,4]
        testArray << 5
        
        XCTAssert(testArray == [1,2,3,4,5], "Shift-append operator is failing.")
    }
}
