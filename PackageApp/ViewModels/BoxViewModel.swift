//
//  BoxViewModel.swift
//  PackageApp
//
//  Created by Peter Warbo on 2018-01-10.
//  Copyright © 2018 Peter Warbo. All rights reserved.
//

import Foundation

struct BoxViewModel {
    private let box: Box
    
    init(box: Box) {
        self.box = box
    }
    
    let titleText = "Box"
    
    var boxDescriptionText: String {
        return """
        Box has a length of \(box.length), width of \(box.width) and height of \(box.height)
        
        Box has a volume of \(box.volume)
        """
    }
}

