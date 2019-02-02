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

let jsonTeams = "http://www.usdsestrilevante.it/vecchioSito/Andre/teams.json"

class TeamsViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        populateTableTeams()
    }
    
    func populateTableTeams () {
        guard let url = URL(string: jsonTeams) else { return }
        URLSession.shared.dataTask(with: url) { (data,response, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
            
            if let data = data {
                do {
                    let jsonParse = try JSONSerialization.jsonObject(with: data, options: [])
                    print(jsonParse)
                    
                    guard let teams = jsonParse as? [[String: Any]] else {
                        return
                    }
                    
                    print(teams)
                    
                    for t in teams {
                        let team: TeamModel = TeamModel(t)
                        let andre = 0
                        print(t)
                    }
                } catch {
                    print(error)
                }
            }            
        }.resume()        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teams.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        }
        
        cell?.textLabel?.text = teams[indexPath.row].name
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        indexTeam = indexPath.row
        
        performSegue(withIdentifier: "segueLeague", sender: self)
    }
}
