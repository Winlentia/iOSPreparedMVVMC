//
//  ViewController.swift
//  iOSPreparedMVVMC
//
//  Created by Winlentia on 5.08.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    private let viewModel = MainViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = viewModel.backgroundColor
        // Do any additional setup after loading the view.
    }


}

