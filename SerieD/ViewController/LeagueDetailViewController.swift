//
//  LeagueDetailViewController.swift
//  SerieD
//
//  Created by Andrea Bacigalupo on 26/01/2019.
//  Copyright © 2019 Andrea Bacigalupo. All rights reserved.
//

import UIKit
import WebKit

var urlsGironi: [UrlModel] = []

class LeagueDetailViewController: UIViewController {
    
    @IBOutlet weak var titleLeague: UILabel!
    @IBOutlet weak var leagueWebView: WKWebView!    
    @IBOutlet weak var scoreWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()        
        
        titleLeague.text = leagues[indexCell]
        
        var frameScore: String = ""
        var frameLeague: String = ""
        
        frameScore = urlsGironi[indexCell].risultati
        frameLeague = urlsGironi[indexCell].classifica
        
        let urlScore = "<html><body>" + frameScore + "</body><html>"
        let urlLeague = "<html><body>" + frameLeague + "</body></html>"
        
        scoreWebView.loadHTMLString(urlScore, baseURL: nil)
        leagueWebView.loadHTMLString(urlLeague, baseURL: nil)
    }
}
