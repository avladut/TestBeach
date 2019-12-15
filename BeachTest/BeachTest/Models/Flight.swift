//
//  Flight.swift
//  BeachTest
//
//  Created by Alex on 15/12/2019.
//  Copyright © 2019 test. All rights reserved.
//

import Foundation
struct Flight: Codable {
    let airline: String
    let departure_date: String
    let arrival_date: String
    let price: String
    let departure_airport: String
    let arrival_airport: String
}
