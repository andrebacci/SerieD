//
//  ConfigModel.swift
//  SerieD
//
//  Created by Andrea Bacigalupo on 08/02/2019.
//  Copyright © 2019 Andrea Bacigalupo. All rights reserved.
//

import Foundation

class ConfigModel: Codable {
    var season: String = ""
    
    var countA: Int = 0
    var countB: Int = 0
    var countC: Int = 0
    var countD: Int = 0
    var countE: Int = 0
    var countF: Int = 0
    var countG: Int = 0
    var countH: Int = 0
    var countI: Int = 0
    
    init?(json: [String: Any]) {
        season = (json["season"] as? String)!
        
        countA = (json["countA"] as? Int)!
        countB = (json["countB"] as? Int)!
        countC = (json["countC"] as? Int)!
        countD = (json["countD"] as? Int)!
        countE = (json["countE"] as? Int)!
        countF = (json["countF"] as? Int)!
        countG = (json["countG"] as? Int)!
        countH = (json["countH"] as? Int)!
        countI = (json["countI"] as? Int)!
    }
}
