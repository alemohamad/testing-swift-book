//
//  Hater.swift
//  First
//
//  Created by Ale Mohamad on 05/11/2019.
//  Copyright © 2019 Ale Mohamad. All rights reserved.
//

import Foundation

struct Hater {
    var hating = false
    
    mutating func hadABadDay() {
        hating = true
    }
    
    mutating func hadAGoodDay() {
        hating = false
    }
}
