//
//  EndPoint.swift
//  NetworkLibrary
//
//  Created by Sandeep Ahuja on 27/04/20.
//  Copyright © 2020 Sapient. All rights reserved.
//

import UIKit

protocol EndPoint {
    var base: String { get }
    var path: String { get }
    var query: String { get }
}

extension EndPoint {
    var urlComponents: URLComponents {
        var components = URLComponents(string: base)!
        components.path = path
        components.query = query
        return components
    }
    
    var request: URLRequest {
        let url = urlComponents.url!
        return URLRequest(url: url)
    }
}
