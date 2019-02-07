//
//  TeamsViewController.swift
//  SerieD
//
//  Created by Andrea Bacigalupo on 01/02/2019.
//  Copyright © 2019 Andrea Bacigalupo. All rights reserved.
//

import Foundation
import UIKit

var teamsSortedByName: [TeamModel] = []

var indexTeam = -1

var orderByName = true

let jsonTeams = "http://www.usdsestrilevante.it/vecchioSito/Andre/teams.json"

let teamsInLeague: [Int] = [2, 0, 0, 0, 0, 0, 0, 0, 0]

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
                    
                    guard let jsonTeams = jsonParse as? [[String: Any]] else {
                        return
                    }
                    
                    var teams: [TeamModel] = []
                    
                    for jt in jsonTeams {
                        let team: TeamModel = TeamModel(jt)
                        teams.append(team)
                    }
                    
                    if orderByName {
                        teamsSortedByName = teams.sorted(by: { $0.name < $1.name })
                    } else {
                        
                    }
                    
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                } catch {
                    print(error)
                }
            }            
        }.resume()        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if orderByName {
            return teamsSortedByName.count
        } else {
            return teamsInLeague[section]
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        if orderByName {
            return 1
        } else {
            return 9
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if orderByName {
            return "Elenco Squadre 2018/2019"
        } else {
            switch section {
            case 0:
                return "Girone A"
            case 1:
                return "Girone B"
            case 2:
                return "Girone C"
            case 3:
                return "Girone D"
            case 4:
                return "Girone E"
            case 5:
                return "Girone F"
            case 6:
                return "Girone G"
            case 7:
                return "Girone H"
            case 8:
                return "Girone I"
            default:
                return "Error"
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        }
        
        if teamsSortedByName.count == 0 {
            return cell!
        }
        
        cell!.textLabel?.text = teamsSortedByName[indexPath.row].name
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        indexTeam = indexPath.row
        
        performSegue(withIdentifier: "segueTeam", sender: self)
    }
}
