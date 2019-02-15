//
//  UrlModel.swift
//  SerieD
//
//  Created by Andrea Bacigalupo on 15/02/19.
//  Copyright © 2019 Andrea Bacigalupo. All rights reserved.
//

import Foundation

class UrlModel: Codable {
    var name: String = ""
    var risultati: String = ""
    var classifica: String = ""
    
    init?(json: [String: Any]) {
        name = (json["name"] as? String)!
        risultati = (json["risultati"] as? String)!
        classifica = (json["classifica"] as? String)!
    }
    
    init(_ dictionary: [String: Any]) {
        name = (dictionary["name"] as? String)!
        risultati = (dictionary["risultati"] as? String)!
        classifica = (dictionary["classifica"] as? String)!
    }
}
