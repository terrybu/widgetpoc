//
//  TodayViewController.swift
//  TodayExtensionWidget
//
//  Created by Bu, Terry on 5/25/17.
//  Copyright © 2017 Bu, Terry. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
    
    @IBOutlet var testLabel: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        let defaults = UserDefaults.init(suiteName: "group.terrypoc")!
        if let text = defaults.object(forKey: "testKey") as? String {
            testLabel.text = text
        } else {
            completionHandler(NCUpdateResult.failed)
        }
        
        completionHandler(NCUpdateResult.newData)
    }
    
}
