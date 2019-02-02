//
//  TeamModel.swift
//  SerieD
//
//  Created by Andrea Bacigalupo on 01/02/2019.
//  Copyright © 2019 Andrea Bacigalupo. All rights reserved.
//

import Foundation

struct TeamModel: Codable {
    var name: String = ""
    var city: String = ""
    var foundation: String = ""
    var image: String = ""
    var color: String = ""
    
    init?(json: [String: Any]) {
        name = (json["name"] as? String)!
        city = (json["city"] as? String)!
        foundation = (json["fondation"] as? String)!
        image = (json["image"] as? String)!
        color = (json["color"] as? String)!
    }
    
    init(_ dictionary: [String: Any]) {
        name = (dictionary["name"] as? String)!
        city = (dictionary["city"] as? String)!
        foundation = (dictionary["fondation"] as? String)!
        image = (dictionary["image"] as? String)!
        color = (dictionary["color"] as? String)!
    }
}
