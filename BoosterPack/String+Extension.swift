//
//  StringExtensions.swift
//  BoosterPack
//
//  Created by Nicholas Maccharoli on 11/14/15.
//  Copyright © 2015 Nicholas Maccharoli. All rights reserved.
//

import Foundation

extension String {

    ///Length of String
    var length : Int {
        return self.characters.count
    }

    ///Remove all white space from string
    var trimmedString: String {
        return stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
    }
}


// MARK: - Regex Syntax

extension String {

    struct Regex {
        let internalExpression: NSRegularExpression
        let pattern: String

        init?(_ pattern: String) {
            self.pattern = pattern
            if let internalExpression = try? NSRegularExpression(pattern: pattern, options: [.CaseInsensitive]) {
                self.internalExpression = internalExpression
                return
            }
            return nil
        }

        func test(input: String) -> Bool {
            let range = NSMakeRange(0, input.length)
            let matches = internalExpression.matchesInString(input, options: [], range: range)
            return (matches.count > 0)
        }
    }
}

infix operator =~ {}

func =~ (input: String, pattern: String) -> Bool {
    return String.Regex(pattern)?.test(input) ?? false
}
