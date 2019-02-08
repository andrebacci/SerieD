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
    
    let jsonConfig = "http://www.usdsestrilevante.it/vecchioSito/Andre/config.json"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        getConfig()
    }
    
    func getConfig() {
        guard let url = URL(string: jsonConfig) else { return }
        URLSession.shared.dataTask(with: url) { (data,response, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
            
            if let data = data {
                do {
                    let jsonParse = try JSONSerialization.jsonObject(with: data, options: [])
                    print(jsonParse)
                    
                    guard let jsonConfig = jsonParse as? [String: Any] else {
                        return
                    }
                    
                    config = ConfigModel(json: jsonConfig)!
                } catch {
                    print(error)
                }
            }
        }.resume()
    }
}

