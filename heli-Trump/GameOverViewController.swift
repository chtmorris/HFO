//
//  GameOverViewController.swift
//  heli-Trump
//
//  Created by Charlie Morris on 14/11/2015.
//  Copyright © 2015 chtmorris. All rights reserved.
//

import UIKit

class GameOverViewController: UIViewController {
    
    var gameScore:Int!
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = "Score: \(gameScore)"
                
        Helper.delay(2.0) {
            self.performSegueWithIdentifier("unwind", sender: nil)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
