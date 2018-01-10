//
//  BoxViewModelTests.swift
//  PackageAppTests
//
//  Created by Peter Warbo on 2018-01-10.
//  Copyright © 2018 Peter Warbo. All rights reserved.
//

import XCTest
@testable import PackageApp

class BoxViewModelTests: XCTestCase {
    
    func testBoxDescriptionText() {
        let box = Box(length: 10, width: 10, height: 10)
        let vm = BoxViewModel(box: box)
        let expectedText = """
        Box has a length of 10, width of 10 and height of 10
        
        Box has a volume of 1000
        """
        
        XCTAssertEqual(vm.boxDescriptionText, expectedText)
    }
}
