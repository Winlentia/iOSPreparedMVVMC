//
//  AppCoordinator.swift
//  iOSPreparedMVVMC
//
//  Created by Winlentia on 5.08.2023.
//

import Foundation
import UIKit

class AppCoordinator : BaseCoordinator {

    let window : UIWindow

    init(window: UIWindow) {
        self.window = window
        super.init()
    }

    override func start() {
        // preparing root view
        let navigationController = UINavigationController()
        let mainViewCoordinator = MainViewCoordinator(navigationController: navigationController)
        self.store(coordinator: mainViewCoordinator)
        mainViewCoordinator.start()
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        mainViewCoordinator.isCompleted = { [weak self] in
            // custom complete methods here
            self?.free(coordinator: mainViewCoordinator)
        }
    }
}
