//
//  Box.swift
//  PackageApp
//
//  Created by Peter Warbo on 2018-01-10.
//  Copyright © 2018 Peter Warbo. All rights reserved.
//

import Foundation

struct Box {
    let length: Int
    let width: Int
    let height: Int
}

extension Box {
    var volume: Int {
        return length * width * height
    }
}
