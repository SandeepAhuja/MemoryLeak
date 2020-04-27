//
//  ViewController.swift
//  MemoryLeak
//
//  Created by Sandeep Ahuja on 25/04/20.
//  Copyright © 2020 Sapient. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    weak var delegate: SecondViewController?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        self.delegate = segue.destination as? SecondViewController
        
    }
    
    deinit {
        print("deinit ViewController")
    }
}

