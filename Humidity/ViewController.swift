//
//  ViewController.swift
//  Humidity
//
//  Created by Peter Fryer-Davis on 2016-04-23.
//  Copyright © 2016 Peter Fryer-Davis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NetworkManager.sharedInstance.getCityIndex()
        
        print("Hello there")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

