//
//  ChooseCharacterViewController.swift
//  heli-Trump
//
//  Created by Charlie Morris on 31/10/2015.
//  Copyright © 2015 chtmorris. All rights reserved.
//

import iAd
import UIKit

class ChooseCharacterViewController: UIViewController, ADBannerViewDelegate {

    var politicianSelected: Characters!
    var highScore: Int = 0
    var bannerView: ADBannerView!
    
    @IBOutlet weak var highScoreLabel: UILabel!
    
//    deinit {
//        NSNotificationCenter.defaultCenter().removeObserver(self)
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBarHidden = true
        ADBannerSignleton.moveSharedADBannerToViewController(self, atPosition: .Bottom)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        highScore = NSUserDefaults.standardUserDefaults().integerForKey("HighScoreSaved")
        highScoreLabel.text = "High Score: \(highScore)"
    }
    
    
    // ===================
    // CHARACTER SELECTION
    // ===================
    
    @IBAction func HillaryButton(sender: UIButton) {
        politicianSelected = Characters.Hilary
        OptionsManager.sharedInstance.characterSelected = Characters.Hilary
        transitionToGamePlayVC()
    }
    
    @IBAction func BenButtonPressed(sender: UIButton) {
        politicianSelected = Characters.Ben
        OptionsManager.sharedInstance.characterSelected = Characters.Ben
        transitionToGamePlayVC()
    }
    
    @IBAction func trumpButtonPressed(sender: UIButton) {
        politicianSelected = Characters.Trump
        OptionsManager.sharedInstance.characterSelected = Characters.Trump
        transitionToGamePlayVC()
    }
    
    @IBAction func myUnwindAction(segue: UIStoryboardSegue) {}
    
    // =======
    // HELPERS
    // =======
    
    func transitionToGamePlayVC() {
        let gamePlayViewController = GamePlayViewController.loadFromNib(politicianSelected)
        self.presentViewController(gamePlayViewController, animated:true, completion:nil)
    }
    
    
    
}
