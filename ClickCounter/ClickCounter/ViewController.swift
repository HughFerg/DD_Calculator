//
//  ViewController.swift
//  ClickCounter
//
//  Created by Hugh Ferguson on 7/14/17.
//  Copyright © 2017 Hugh Ferguson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Counter: UILabel!
    var ct = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func AddClick(_ sender: Any) {
        ct = ct + 1
        Counter.text = String(ct)
    }

    @IBAction func SubtractClick(_ sender: Any) {
        ct = ct - 1
        Counter.text = String(ct)
    }
}

