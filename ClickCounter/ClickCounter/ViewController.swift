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
    
    @IBAction func SecretButton(_ sender: Any) {
        
        performSegue(withIdentifier: "GoToSecretView", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var secondView = segue.destination as! SecretViewController
        secondView.masterCountPassed = masterCt
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}
