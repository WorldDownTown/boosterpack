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


// MARK: - Hiragana / Katakana

extension String {

    /// Hiragana -> Katakana
    var katakana: String {
        return unicodeScalars.reduce("") { (str, c) in
            var str = str
            if c.value >= 0x3041 && c.value <= 0x3096 {
                str.append(UnicodeScalar(c.value + 96))
            } else {
                str.append(c)
            }
            return str
        }
    }

    /// Katakana -> Hiragana
    var hiragana: String {
        return unicodeScalars.reduce("") { (str, c) in
            var str = str
            if c.value >= 0x30A1 && c.value <= 0x30F6 {
                str.append(UnicodeScalar(c.value - 96))
            } else {
                str.append(c)
            }
            return str
        }
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
