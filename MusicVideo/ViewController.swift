//
//  ViewController.swift
//  MusicVideo
//
//  Created by Shreyash Kawalkar on 12/08/17.
//  Copyright © 2017 Sk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       // call api
        let api = APIManager()
        api.loadData(urlString: "http://itunes.apple.com/us/rss/topmusicvideos/limit=10/json",
                     completion: didLoadData)
    }
    func didLoadData(result:String){
        print(result)
    }
}

