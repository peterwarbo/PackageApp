//
//  PackageViewController.swift
//  PackageApp
//
//  Created by Peter Warbo on 2018-01-10.
//  Copyright © 2018 Peter Warbo. All rights reserved.
//

import UIKit

class PackageViewController: UIViewController {

    private let viewModel: BoxViewModel
    
    private let boxDescription = UILabel()
    
    init(viewModel: BoxViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Package: \(viewModel.titleText)"
        
        view.addSubview(boxDescription)
        boxDescription.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            boxDescription.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            boxDescription.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            boxDescription.trailingAnchor.constraint(lessThanOrEqualTo: view.layoutMarginsGuide.trailingAnchor)
        ])
        
        boxDescription.numberOfLines = 0
        boxDescription.text = viewModel.boxDescriptionText
    }
}
