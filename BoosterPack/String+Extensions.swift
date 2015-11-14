//
//  StringExtensions.swift
//  BoosterPack
//
//  Created by Nicholas Maccharoli on 11/14/15.
//  Copyright © 2015 Nicholas Maccharoli. All rights reserved.
//

import Foundation

extension String {
    var length : Int {
        return self.characters.count
    }
}

infix operator =~ { associativity left precedence 140 }

func =~ (lhs: String, rhs: String) -> Bool {

    if let regex = try? NSRegularExpression(pattern: rhs, options: NSRegularExpressionOptions.CaseInsensitive) {

        let matches = regex.matchesInString(lhs, options: NSMatchingOptions.ReportCompletion, range: NSMakeRange(0, lhs.length))
        return matches.count > 0

    } else {
        return false
    }
}


