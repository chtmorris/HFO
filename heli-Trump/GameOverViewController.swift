//
//  GameOverViewController.swift
//  heli-Trump
//
//  Created by Charlie Morris on 14/11/2015.
//  Copyright © 2015 chtmorris. All rights reserved.
//

import iAd
import UIKit

class GameOverViewController: UIViewController, ADBannerViewDelegate {
    
    var gameScore:Int!
    var bannerView: ADBannerView!
    var selectedPolitician:Characters!
    var politicianQuote:String!

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var quoteLabel: UILabel!
    
    class func loadFromNib(scoreNumber:Int) -> GameOverViewController {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let gameOverViewController = storyBoard.instantiateViewControllerWithIdentifier("GameOverViewController") as! GameOverViewController
        gameOverViewController.gameScore = scoreNumber
        return gameOverViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "Score: \(gameScore)"
        ADBannerSignleton.moveSharedADBannerToViewController(self, atPosition: .Top)
        
        selectedPolitician = OptionsManager.sharedInstance.characterSelected
        
        politicianQuote = selectedPolitician.quote[Int(arc4random_uniform(UInt32(selectedPolitician.quote.count)))]
        quoteLabel.text = politicianQuote

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func homeButtonTapped(sender: UIButton) {
        self.performSegueWithIdentifier("unwind", sender: nil)
    }
    
    @IBAction func shareButtonTapped(sender: UIButton) {
        let textToShare = politicianQuote
        
        if let myWebsite = NSURL(string: "http://www.hairforceoneapp.com/")
        {
            let objectsToShare = [textToShare, myWebsite]
            let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
            
            self.presentViewController(activityVC, animated: true, completion: nil)
        }
    }
    

}



