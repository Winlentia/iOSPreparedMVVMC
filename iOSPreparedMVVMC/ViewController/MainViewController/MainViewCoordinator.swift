//
//  MainViewCoordinator.swift
//  iOSPreparedMVVMC
//
//  Created by Winlentia on 5.08.2023.
//

import Foundation
import UIKit

class MainViewCoordinator: BaseCoordinator {
    
    let navigationController: UINavigationController?
    
    init(navigationController: UINavigationController?){
        self.navigationController = navigationController
    }
    
    override func start() {
        let controller = MainViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    
}
