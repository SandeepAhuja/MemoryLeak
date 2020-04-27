//
//  APIClient.swift
//  NetworkLibrary
//
//  Created by Sandeep Ahuja on 27/04/20.
//  Copyright © 2020 Sapient. All rights reserved.
//

import UIKit

protocol APIClient {
    let urlSession: URLSession!
    func request(requesst: URLRequest, completion:()->())
}
