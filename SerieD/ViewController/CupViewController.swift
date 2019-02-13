//
//  CupViewController.swift
//  SerieD
//
//  Created by Andrea Bacigalupo on 13/02/19.
//  Copyright © 2019 Andrea Bacigalupo. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class CupViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    let url = "https://www.tuttocampo.it/Widget/Risultati/e3eff29d-b15d-44c0-afb0-e2300d47c943"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.loadHTMLString(url, baseURL: nil)
    }
}
