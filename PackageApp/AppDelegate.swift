//
//  AppDelegate.swift
//  PackageApp
//
//  Created by Peter Warbo on 2018-01-10.
//  Copyright © 2018 Peter Warbo. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        window?.makeKeyAndVisible()
        
        let box = Box(length: 10, width: 10, height: 10)
        let viewModel = BoxViewModel(box: box)
        let vc = PackageViewController(viewModel: viewModel)
        
        let nc = UINavigationController(rootViewController: vc)
        
        window?.rootViewController = nc
        
        return true
    }
}

