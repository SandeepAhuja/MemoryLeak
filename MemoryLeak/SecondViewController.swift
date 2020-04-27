//
//  SecondViewController.swift
//  MemoryLeak
//
//  Created by Sandeep Ahuja on 25/04/20.
//  Copyright © 2020 Sapient. All rights reserved.
//

import UIKit


class SecondViewController: UIViewController {

    var aNumber: Int = 0
    lazy var incrementNumber:(Int)->Void = { value in
        self.aNumber += value
        print(self.aNumber);
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        incrementNumber(3)
    }
    
    
    deinit {
        print("deinit SecondViewController")
    }
}
