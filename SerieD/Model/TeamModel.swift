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
    var stadium: String = ""
    var president: String = ""
    var mister: String = ""
    var website: String = ""
    var nameComplete: String = ""
    var league: String = ""
    
    init?(json: [String: Any]) {
        name = (json["name"] as? String)!
        city = (json["city"] as? String)!
        foundation = (json["fondation"] as? String)!
        image = (json["image"] as? String)!
        color = (json["color"] as? String)!
        president = (json["president"] as? String)!
        mister = (json["mister"] as? String)!
        website = (json["website"] as? String)!
        nameComplete = (json["nameComplete"] as? String)!
        league = (json["league"] as? String)!
    }
    
    init(_ dictionary: [String: Any]) {
        name = (dictionary["name"] as? String)!
        city = (dictionary["city"] as? String)!
        foundation = (dictionary["fondation"] as? String)!
        image = (dictionary["image"] as? String)!
        color = (dictionary["color"] as? String)!
        president = (dictionary["president"] as? String)!
        mister = (dictionary["mister"] as? String)!
        website = (dictionary["website"] as? String)!
        nameComplete = (dictionary["nameComplete"] as? String)!
        league = (dictionary["league"] as? String)!
    }
}
