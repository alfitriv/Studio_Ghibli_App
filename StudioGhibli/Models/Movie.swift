//
//  Movie.swift
//  StudioGhibli
//
//  Created by Vania Radmila Alfitri on 14/09/19.
//  Copyright © 2019 Gojek. All rights reserved.
//

import Foundation

struct Movie: Codable {
    var id: String
    var title: String
    var description: String
    var director: String
    var producer: String
}
