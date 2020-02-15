//
//  ViewController.swift
//  ModuleStableClient
//
//  Created by Evgeny Kazakov on 2/15/20.
//  Copyright © 2020 Evgeny Kazakov. All rights reserved.
//

import UIKit
import ModuleStable

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    ConcreteClass().greet()
  }
}

