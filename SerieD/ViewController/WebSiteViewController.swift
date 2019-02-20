
//
//  WebSiteViewController.swift
//  SerieD
//
//  Created by Andrea Bacigalupo on 08/02/19.
//  Copyright © 2019 Andrea Bacigalupo. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class WebSiteViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let team = teamsSortedByName[indexTeam]
        let urlHttp = "http://" + team.website
        let url = URL(string: urlHttp)!
        
        webView.load(URLRequest(url: url))
    }
}
