//
//  ChoosePlayerViewController.swift
//  DD Calculator
//
//  Created by Hugh Ferguson on 7/27/17.
//  Copyright © 2017 Hugh Ferguson. All rights reserved.
//

import UIKit

class ChoosePlayerViewController: UIViewController {
    
    @IBOutlet weak var playerNameLabel: UILabel!
    
    var playerListPassed = [String]()

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        var playerString: String = ""
        
        if playerListPassed.count > 1 {
            
            let arraySize = UInt32(playerListPassed.count)
            
            let randomIndex = Int(arc4random_uniform(arraySize))
            playerString = playerListPassed[randomIndex]
            
            print(arraySize)
            print(randomIndex)
            
        }
        
        else {
            
            playerString = playerListPassed[0]
            
        }
        
        playerNameLabel.text = playerString
        
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
