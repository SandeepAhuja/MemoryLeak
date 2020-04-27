//
//  RouteManager.swift
//  MemoryLeak
//
//  Created by Sandeep Ahuja on 25/04/20.
//  Copyright © 2020 Sapient. All rights reserved.
//

import UIKit

class RouteManager {
    static let sharedInstance = RouteManager()
    private  init() {}
    
    private var controllers = [UIViewController]()
    
    func addViewController(_ item: UIViewController){
        RouteManager.sharedInstance.controllers.append(item)
    }
    func removeViewController(_ item: UIViewController){
        RouteManager.sharedInstance.controllers.removeAll { (controller) -> Bool in
            return controller == item
        }
    }
}
