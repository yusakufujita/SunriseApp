//
//  ViewController.swift
//  SunriseApp
//
//  Created by 藤田優作 on 2020/04/23.
//  Copyright © 2020 藤田優作. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cityNameInput: UITextField!
    
    
    @IBOutlet weak var sunriseTimeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func findSunrise(_ sender: Any) {
        let url = "https://weather-ydn-yql.media.yahoo.com/forecastrss"
        getURL(url: url)
    }
    
    func getURL(url:String) {
        do {
            let apiURL = URL(string: url)!
            let data = try Data(contentsOf: apiURL)
            let json = try JSONSerialization.jsonObject(with: data) as! [String:Any]
            print(json)
        } catch {
            self.sunriseTimeLabel.text = "サーバーに接続できません"
        }
    
    }

}
