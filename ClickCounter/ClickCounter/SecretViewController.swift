//
//  SecretViewController.swift
//  ClickCounter
//
//  Created by Hugh Ferguson on 7/14/17.
//  Copyright © 2017 Hugh Ferguson. All rights reserved.
//

import UIKit

class SecretViewController: UIViewController {

    @IBOutlet weak var MasterCounter: UILabel!
    
    var masterCountPassed = Int()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        MasterCounter.text = String(describing: masterCountPassed)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 }
