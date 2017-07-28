//
//  ViewController.swift
//  DD Calculator
//
//  Created by Hugh Ferguson on 7/25/17.
//  Copyright © 2017 Hugh Ferguson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var playerTextField: UITextField!
    @IBOutlet weak var playerTextLabel: UILabel!
    
    var playerList = [String]()
    var testNum = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if (playerList.count == 0){
            
            playerTextLabel.text = "No players yet!"
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func addPlayer(_ sender: Any) {
        
        if (playerTextField.text != ""){
            
        playerList.append(playerTextField.text!)
        
        var playerTextLabelTemp = ""
            
            for a in (0...playerList.count - 1){
                
                playerTextLabelTemp += playerList[a]
                
                if (a != playerList.count - 1){
                    playerTextLabelTemp += ", "
                }
                
                playerTextField.text = ""
            }
            
            playerTextLabel.text = playerTextLabelTemp
        
        }
        
        else {
            
            let emptyPlayerAlert = UIAlertController(title: "Error!", message: "Cannot add an empty player", preferredStyle: UIAlertControllerStyle.alert)
            
            let closeAction = UIAlertAction(title: "Close", style: .default, handler: nil)
            
            emptyPlayerAlert.addAction(closeAction)
            
            self.present(emptyPlayerAlert, animated: true)
        }
        
    }
    

    @IBAction func doneAdding(_ sender: Any) {
        
        let myVC = storyboard?.instantiateViewController(withIdentifier: "ChoosePlayerView") as! ChoosePlayerViewController
        
        for a in (0...playerList.count - 1){
            
        myVC.playerListPassed.append(playerList[a])
        }
        
        // myVC.testNumPassed = testNum
        
        navigationController?.pushViewController(myVC, animated: true)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ChoosePlayerView"{
            
            if let viewController = segue.destination as? ChoosePlayerViewController {
                viewController.testNumPassed = testNum
            }
        }
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
