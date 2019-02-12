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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        leadingConstraint.constant = -190
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

