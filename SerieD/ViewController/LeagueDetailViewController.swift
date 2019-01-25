//
//  LeagueDetailViewController.swift
//  SerieD
//
//  Created by Andrea Bacigalupo on 26/01/2019.
//  Copyright © 2019 Andrea Bacigalupo. All rights reserved.
//

import UIKit

class LeagueDetailViewController: UIViewController {
    
    @IBOutlet weak var titleLeague: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLeague.text = leagues[indexCell]
    }
}
