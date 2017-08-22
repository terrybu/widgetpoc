//
//  ViewController.swift
//  WidgetPOC
//
//  Created by Bu, Terry on 5/25/17.
//  Copyright © 2017 Bu, Terry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let defaults = UserDefaults.init(suiteName: "group.terrypoc")
        defaults?.set("Getting data from main app viewcontroller", forKey: "testKey")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

