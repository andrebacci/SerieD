//
//  TeamsViewController.swift
//  SerieD
//
//  Created by Andrea Bacigalupo on 01/02/2019.
//  Copyright © 2019 Andrea Bacigalupo. All rights reserved.
//

import Foundation
import UIKit

var teams: [TeamModel] = []
var indexTeam = -1

class TeamsViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teams.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        }
        
        //cell?.textLabel?.text = teams[indexPath.row]
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        indexTeam = indexPath.row
        
        performSegue(withIdentifier: "segueLeague", sender: self)
    }
}
