//
//  TeamDetailViewController.swift
//  SerieD
//
//  Created by Andrea Bacigalupo on 04/02/19.
//  Copyright © 2019 Andrea Bacigalupo. All rights reserved.
//

import Foundation
import UIKit

class TeamDetailViewController: UIViewController {
    
    @IBOutlet weak var nameTxt: UILabel!
    @IBOutlet weak var cityTxt: UILabel!
    @IBOutlet weak var foundationTxt: UILabel!
    @IBOutlet weak var stadiumTxt: UILabel!
    @IBOutlet weak var colorTxt: UILabel!
    @IBOutlet weak var presidentTxt: UILabel!
    @IBOutlet weak var misterTxt: UILabel!        
    
    var team: TeamModel? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if orderByName {
            team = teamsSortedByName[indexTeam]
        } else {
            
        }
        
        nameTxt.text = team!.name
        cityTxt.text = team!.city
        foundationTxt.text = team!.foundation
        stadiumTxt.text = team!.stadium
        colorTxt.text = team!.color
        presidentTxt.text = team!.president
        misterTxt.text = team!.mister
        //nameCompleteTxt.text = team!.nameComplete
        //websiteTxt.text = team!.website
    }
}
