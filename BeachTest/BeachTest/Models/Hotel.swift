//
//  Hotel.swift
//  BeachTest
//
//  Created by Alex on 15/12/2019.
//  Copyright © 2019 test. All rights reserved.
//

import Foundation
struct Hotel: Codable {
    let name: String
    let hotel_location: String
    let rating: String
    let description: String
    let images: [String]
    let facilities: [String]
}
