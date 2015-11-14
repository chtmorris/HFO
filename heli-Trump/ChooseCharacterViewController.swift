//
//  ChooseCharacterViewController.swift
//  heli-Trump
//
//  Created by Charlie Morris on 31/10/2015.
//  Copyright © 2015 chtmorris. All rights reserved.
//

import UIKit

class ChooseCharacterViewController: UIViewController {

    var politicianSelected: String!
    var highScore: Int = 0
    
    @IBOutlet weak var highScoreLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBarHidden = true
        
        highScore = NSUserDefaults.standardUserDefaults().integerForKey("HighScoreSaved")
        highScoreLabel.text = "High Score: \(highScore)"
        politicianSelected = "NoneYet"
        print(politicianSelected)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func HillaryButton(sender: UIButton) {
        politicianSelected = "Hillary"
    }
    
    @IBAction func BenButtonPressed(sender: UIButton) {
        politicianSelected = "Ben"
    }
    
    @IBAction func trumpButtonPressed(sender: UIButton) {
        politicianSelected = "Trump"
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let svc = segue.destinationViewController as! ViewController;
        svc.selectedPolitician = politicianSelected
    }

    
}
