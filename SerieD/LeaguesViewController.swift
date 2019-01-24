//
//  SecondViewController.swift
//  SerieD
//
//  Created by Andrea Bacigalupo on 24/01/2019.
//  Copyright © 2019 Andrea Bacigalupo. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var leagues: NSArray = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        leagues = ["Girone A", "Girone B", "Girone C", "Girone D", "Girone E", "Girone F", "Girone G", "Girone H"]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return leagues.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        }
        
        cell?.textLabel?.text = leagues[indexPath.row] as! String
        
        return cell!
    }
}

