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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
                
    }
    
    @IBAction func showMenu(_ sender: Any) {
        leadingConstraint.constant = 0
    }
}

