//
//  DictionaryExtensions.swift
//  BoosterPack
//
//  Created by Nicholas Maccharoli on 11/14/15.
//  Copyright © 2015 Nicholas Maccharoli. All rights reserved.
//

import Foundation

extension Dictionary {
    func each (eachBlock: (key: Key, value: Value) -> Void) {
        for (key, value) in self {
            eachBlock(key: key, value: value)
        }
    }
}

func + <Key, Value> (lhs: Dictionary<Key, Value>, rhs: Dictionary<Key, Value>) -> Dictionary<Key, Value> {
    var lhs = lhs
    for (key, value) in rhs {
        lhs[key] = value
    }
    return lhs
}

func - <Key, Value> (lhs: Dictionary<Key, Value>, rhs: Dictionary<Key, Value>) -> Dictionary<Key, Value> {
    var lhs = lhs 
    for key in rhs.keys {
        lhs.removeValueForKey(key)
    }
    
    return lhs
}

func -= <Key, Value> (inout lhs: Dictionary<Key, Value>, rhs: Dictionary<Key, Value>) -> Dictionary<Key, Value> {
    lhs = lhs - rhs
    return lhs
}

func += <Key, Value> (inout lhs: Dictionary<Key, Value>, rhs: Dictionary<Key, Value>) -> Dictionary<Key, Value> {
    lhs = lhs + rhs
    return lhs
}
