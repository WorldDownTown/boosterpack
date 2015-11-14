//
//  ArrayExtensions.swift
//  BoosterPack
//
//  Created by Nicholas Maccharoli on 11/15/15.
//  Copyright © 2015 Nicholas Maccharoli. All rights reserved.
//

import Foundation

func << <Element> (inout lhs: Array<Element>, rhs: Element) -> Array<Element> {
    lhs.append(rhs)
    
    return lhs
}
