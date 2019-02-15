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
        
        /* switch (indexCell) {
        case 0:
            frameScore = "<iframe src='https://www.tuttocampo.it/Widget/Risultati/348a4ae9-f7cb-4e51-91ad-41a488e36bac' width='100%' height='100%' scrolling='no' frameborder='0'></iframe>"
            frameLeague = "<iframe src='https://www.tuttocampo.it/Widget/Classifica/348a4ae9-f7cb-4e51-91ad-41a488e36bac' width='100%' height='100%' scrolling='no' frameborder=0></iframe>"
            break;
        case 1:
            frameScore = "<iframe src='https://www.tuttocampo.it/Widget/Risultati/47e84921-2cf6-4738-95fc-989ae78a662a' width='100%' height='100%' scrolling='no' frameborder='0'></iframe>"
            frameLeague = "<iframe src='https://www.tuttocampo.it/Widget/Classifica/47e84921-2cf6-4738-95fc-989ae78a662a' width='100%' height='100%' scrolling='no' frameborder='0'></iframe>"
            break;
        case 2:
            frameScore = "<iframe src='https://www.tuttocampo.it/Widget/Risultati/06be8744-4806-4baf-89d9-cc47a6ea5f30' width='100%' height='100%' scrolling='no' frameborder='0'></iframe>"
            frameLeague = "<iframe src='https://www.tuttocampo.it/Widget/Classifica/06be8744-4806-4baf-89d9-cc47a6ea5f30' width='100%' height='100%' scrolling='no' frameborder='0'></iframe>"
            break;
        case 3:
            frameScore = "<iframe src='https://www.tuttocampo.it/Widget/Risultati/ef7eafae-a9e4-47fa-a3f7-da23e25627e1' width='100%' height='100%' scrolling='no' frameborder='0'></iframe>"
            frameLeague = "<iframe src='https://www.tuttocampo.it/Widget/Classifica/ef7eafae-a9e4-47fa-a3f7-da23e25627e1' width='100%' height='100%' scrolling='no' frameborder='0'></iframe>"
            break;
        case 4:
            frameScore = "<iframe src='https://www.tuttocampo.it/Widget/Risultati/a9c7b6a0-c655-4231-b75e-90dacd12b8ad' width='100%' height='100%' scrolling='no' frameborder='0'></iframe>"
            frameLeague = "<iframe src='https://www.tuttocampo.it/Widget/Classifica/a9c7b6a0-c655-4231-b75e-90dacd12b8ad' width='100%' height='100%' scrolling='no' frameborder='0'></iframe>"
            break;
        case 5:
            frameScore = "<iframe src='https://www.tuttocampo.it/Widget/Risultati/17688def-3887-4ec6-ac84-b243269d4f98' width='100%' height='100%' scrolling='no' frameborder='0'></iframe>"
            frameLeague = "<iframe src='https://www.tuttocampo.it/Widget/Classifica/17688def-3887-4ec6-ac84-b243269d4f98' width='100%' height='100%' scrolling='no' frameborder='0'></iframe>"
            break;
        case 6:
            frameScore = "<iframe src='https://www.tuttocampo.it/Widget/Risultati/ae73913f-9f25-4d55-b1eb-c08f6ad50747' width='100%' height='100%' scrolling='no' frameborder='0'></iframe>"
            frameLeague = "<iframe src='https://www.tuttocampo.it/Widget/Classifica/ae73913f-9f25-4d55-b1eb-c08f6ad50747' width='100%' height='100%' scrolling='no' frameborder='0'></iframe>"
            break;
        case 7:
            frameScore = "<iframe src='https://www.tuttocampo.it/Widget/Risultati/7e80452d-38fb-49e7-aca9-a8cbcb0d8cbf' width='100%' height='100%' scrolling='no' frameborder='0'></iframe>"
            frameLeague = "<iframe src='https://www.tuttocampo.it/Widget/Classifica/7e80452d-38fb-49e7-aca9-a8cbcb0d8cbf' width='100%' height='100%' scrolling='no' frameborder='0'></iframe>"
            break;
        case 8:
            frameScore = "<iframe src='https://www.tuttocampo.it/Widget/Risultati/a7cb4aa7-be01-423f-8be6-0fdc1290a966' width='100%' height='100%' scrolling='no' frameborder='0'></iframe>"
            frameLeague = "<iframe src='https://www.tuttocampo.it/Widget/Classifica/a7cb4aa7-be01-423f-8be6-0fdc1290a966' width='100%' height='100%' scrolling='no' frameborder='0'></iframe>"
            break;
        default:
            frameScore = "<p>ERRORE DURANTE IL CARICAMENTO DEI RISULTATI</p>"
            frameLeague = "<p>ERRORE DURANTE IL CARICAMENTO DELLA CLASSIFICA</p>"
            break;
        } */
        
        let urlScore = "<html><body>" + frameScore + "</body><html>"
        let urlLeague = "<html><body>" + frameLeague + "</body></html>"
        
        scoreWebView.loadHTMLString(urlScore, baseURL: nil)
        leagueWebView.loadHTMLString(urlLeague, baseURL: nil)
    }
}
