//
//  ComunicatiViewController.swift
//  SerieD
//
//  Created by Andrea Bacigalupo on 11/02/19.
//  Copyright © 2019 Andrea Bacigalupo. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class ComunicatiViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    let urlSerieD = "https://seried.lnd.it/it/serie-d-comunicati/comunicati-ufficiali/stagione-sportiva-2018-19/serie-d-stagione-sportiva-2018-2019"
    let urlCoppaItalia = "https://seried.lnd.it/it/serie-d-comunicati/comunicati-ufficiali/stagione-sportiva-2018-19/coppa-italia-stagione-sportiva-2018-2020"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.loadHTMLString(urlSerieD, baseURL: nil)
    }
}
