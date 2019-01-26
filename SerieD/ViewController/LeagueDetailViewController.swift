//
//  LeagueDetailViewController.swift
//  SerieD
//
//  Created by Andrea Bacigalupo on 26/01/2019.
//  Copyright © 2019 Andrea Bacigalupo. All rights reserved.
//

import UIKit
import WebKit

class LeagueDetailViewController: UIViewController {
    
    @IBOutlet weak var titleLeague: UILabel!
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLeague.text = leagues[indexCell]
        
        // init webView
        //let url = URL(string: "http://www.google.com")
        //let request = URLRequest(url: url!)
        
        let frame = "<html><body>Hello world!</body></html>"
        
        webView.loadHTMLString(frame, baseURL: nil)
        //webView.load(request)
    }
}
