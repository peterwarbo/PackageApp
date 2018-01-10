//
//  BoxTests.swift
//  PackageAppTests
//
//  Created by Peter Warbo on 2018-01-10.
//  Copyright © 2018 Peter Warbo. All rights reserved.
//

import XCTest
@testable import PackageApp

class BoxTests: XCTestCase {
    
    func testVolumeCalculation() {
        let box = Box(length: 10, width: 10, height: 10)
        XCTAssertEqual(box.volume, 1000)
    }
}
