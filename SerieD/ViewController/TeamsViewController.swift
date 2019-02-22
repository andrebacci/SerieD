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
var teamsSortedByName: [TeamModel] = []

var orderByName = true

var indexTeam = -1

let teamsInLeague: [Int] = [(config?.countA)!, (config?.countB)!, (config?.countC)!, (config?.countD)!, (config?.countE)!, (config?.countF)!, (config?.countG)!, (config?.countH)!, (config?.countI)!]

class TeamsViewController: UITableViewController, UISearchBarDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    var currentTeams = [TeamModel]()
    
    var searching = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        teamsSortedByName = teams
        currentTeams = teamsSortedByName
        
        initSearchBar()
    }
    
    private func initSearchBar() {
        searchBar.delegate = self
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching {
            return currentTeams.count
        } else {
            if orderByName {
                return teamsSortedByName.count
            } else {
                return teamsInLeague[section]
            }
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
        if config != nil {
            if orderByName {
                return "Elenco Squadre " + (config?.season)!
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
        } else {
            return "Elenco Squadre"
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
        
        if searching {
            cell?.textLabel?.text = currentTeams[indexPath.row].name
        } else {
            cell!.textLabel?.text = teamsSortedByName[indexPath.row].name
        }
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        indexTeam = indexPath.row
        
        performSegue(withIdentifier: "segueTeam", sender: self)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        guard !searchText.isEmpty else {
            currentTeams = teamsSortedByName
            
            tableView.reloadData()
            return
        }
        currentTeams = teamsSortedByName.filter({ team -> Bool in
            searching = true
            
            return team.name.lowercased().contains(searchText.lowercased())
        })
        
        tableView.reloadData()
    }
}
