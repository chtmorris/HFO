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
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let chooseCharacterViewController = storyBoard.instantiateViewControllerWithIdentifier("ChooseCharacterViewController") as! ChooseCharacterViewController
            self.presentViewController(chooseCharacterViewController, animated:true, completion:nil)        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
