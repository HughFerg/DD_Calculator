//
//  ViewController.swift
//  DD Calculator
//
//  Created by Hugh Ferguson on 6/27/17.
//  Copyright © 2017 Hugh Ferguson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var wheel: UIButton!
    
    var angle = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func spin(_ sender: Any) {
        
        UIView.animate(withDuration: 0.3, animations:({
            
            self.angle += (Double.pi)
            
            self.wheel.transform = CGAffineTransform.init(rotationAngle: CGFloat(self.angle))
            
        }))

    }

}

