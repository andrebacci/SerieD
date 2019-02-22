//
//  FirstViewController.swift
//  SerieD
//
//  Created by Andrea Bacigalupo on 24/01/2019.
//  Copyright © 2019 Andrea Bacigalupo. All rights reserved.
//

import UIKit

var config: ConfigModel? = nil

class HomeViewController: UIViewController {
    
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    var menuIsHidden = true
    
    let jsonTeams = "http://www.usdsestrilevante.it/vecchioSito/Andre/teams.json"
    let jsonConfig = "http://www.usdsestrilevante.it/vecchioSito/Andre/config.json"
    let jsonUrl = "http://www.usdsestrilevante.it/vecchioSito/Andre/url.json"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadJson()
        
        leadingConstraint.constant = -190
    }
    
    func loadJson() {
        let urlConfig = URL(string: jsonConfig)
        let urlTeams = URL(string: jsonTeams)
        let urlUrl = URL(string: jsonUrl)
        
        // Parse Config Json
        _ = URLSession.shared.dataTask(with: urlConfig!) {(data, response, error) in
            if let data = data {
                do {
                    let jsonParse = try JSONSerialization.jsonObject(with: data, options: [])
                    //print(jsonParse)
                    
                    guard let jsonConfig = jsonParse as? [String: Any] else {
                        return
                    }
                    
                    config = ConfigModel(json: jsonConfig)!
                } catch {
                    print(error)
                }
            }
                
            // Parse Teams Json
            _ = URLSession.shared.dataTask(with: urlTeams!) {(data, response, error) in
                if let data = data {
                    do {
                        let jsonParse = try JSONSerialization.jsonObject(with: data, options: [])
                        //print(jsonParse)
                        
                        guard let jsonTeams = jsonParse as? [[String: Any]] else {
                            return
                        }
                        
                        for jt in jsonTeams {
                            let team: TeamModel = TeamModel(jt)
                            teams.append(team)
                        }
                    } catch {
                        print(error)
                    }
                }
                
                // Parse Teams Json
                _ = URLSession.shared.dataTask(with: urlUrl!) {(data, response, error) in
                    if let data = data {
                        do {
                            let jsonParse = try JSONSerialization.jsonObject(with: data, options: [])
                            //print(jsonParse)
                            
                            guard let jsonUrl = jsonParse as? [[String: Any]] else {
                                return
                            }
                            
                            for item in jsonUrl {
                                let url: UrlModel = UrlModel(item)
                                urlsGironi.append(url)
                            }
                        } catch {
                            print(error)
                        }
                    }
                }.resume()
            }.resume()
        }.resume()
    }
    
    @IBAction func toggleMenu(_ sender: UIBarButtonItem) {
        if menuIsHidden {
            leadingConstraint.constant = 0
            
            UIView.animate(withDuration: 0.3) {
                self.view.layoutIfNeeded()
            }
        } else {
            leadingConstraint.constant = -190
            
            UIView.animate(withDuration: 0.3) {
                self.view.layoutIfNeeded()
            }
        }
        
        menuIsHidden = !menuIsHidden
    }
    
    @IBAction func showItemMenu(_ sender: Any) {
        leadingConstraint.constant = -190
        
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
        
        menuIsHidden = true
    }
}

