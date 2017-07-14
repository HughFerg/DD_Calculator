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
    var masterCt = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func AddClick(_ sender: Any) {
        ct = ct + 1
        Counter.text = String(ct)
        
        masterCt = masterCt + 1
        
    }

    @IBAction func SubtractClick(_ sender: Any) {
        ct = ct - 1
        Counter.text = String(ct)
        
        masterCt = masterCt + 1
    
    }
    
    @IBAction func GoToSecretView(_ sender: Any) {
        
        let myVC = storyboard?.instantiateViewController(withIdentifier: "SecretView") as! SecretViewController
        myVC.masterCountPassed = masterCt
        navigationController?.pushViewController(myVC, animated: true)
        
    }
}

