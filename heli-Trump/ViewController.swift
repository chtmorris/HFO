//
//  ViewController.swift
//  heli-Trump
//
//  Created by Charlie Morris on 16/09/2015.
//  Copyright © 2015 chtmorris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // =======================
    // Variables and constants
    // =======================
    
    var screenSize: CGRect = UIScreen.mainScreen().bounds
    
    var timer = NSTimer()
    var scorer = NSTimer()
    
    var start = true
    var politicianDirectionOfTravel: CGFloat = 1
    var randomPosition: Int = 0
    var scoreNumber: Int = 0
    var highScore: Int = 0
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var tapToStartLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var trumpImage: TrumpCartoonView!
    @IBOutlet weak var hillaryImage: HeliHillyView!
    @IBOutlet weak var benImage: BenHeliView!
    
    var politician: UIView!
    var toPass:String!
    
    // =========
    // Obstacles
    // =========
    
    @IBOutlet weak var obstacle1: UIImageView!
    @IBOutlet weak var obstacle2: UIImageView!
    
    @IBOutlet weak var bottom1: UIImageView!
    @IBOutlet weak var bottom2: UIImageView!
    @IBOutlet weak var bottom3: UIImageView!
    @IBOutlet weak var bottom4: UIImageView!
    @IBOutlet weak var bottom5: UIImageView!
    @IBOutlet weak var bottom6: UIImageView!
    @IBOutlet weak var bottom7: UIImageView!
    @IBOutlet weak var bottom8: UIImageView!
    @IBOutlet weak var bottom9: UIImageView!
    @IBOutlet weak var bottom10: UIImageView!
    
    @IBOutlet weak var top1: UIImageView!
    @IBOutlet weak var top2: UIImageView!
    @IBOutlet weak var top3: UIImageView!
    @IBOutlet weak var top4: UIImageView!
    @IBOutlet weak var top5: UIImageView!
    @IBOutlet weak var top6: UIImageView!
    @IBOutlet weak var top7: UIImageView!
    @IBOutlet weak var top8: UIImageView!
    @IBOutlet weak var top9: UIImageView!
    @IBOutlet weak var top10: UIImageView!
    
    var obstacles = [UIImageView]()
    var topObjects = [UIImageView]()
    var bottomObjects = [UIImageView]()
    var topAndBottomObjects = [UIImageView]()
    var allObjects = [UIImageView]()
    
    // =======
    // Loading
    // =======
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBarHidden = true
        
        obstacles = [obstacle1, obstacle2]
        topObjects = [top1, top2, top3, top4, top5, top6, top7, top8, top9, top10]
        bottomObjects = [bottom1, bottom2, bottom3, bottom4, bottom5, bottom6, bottom7, bottom8, bottom9, bottom10]
        topAndBottomObjects = topObjects + bottomObjects
        allObjects = topAndBottomObjects + obstacles
        
        
        choosePolitician()
        hideOtherPoliticians()
        
        hideObjects(true)
        scoreLabel.hidden = true
        
        trumpImage.addIntroAnimation()
        benImage.addBenIntroAnimation()
        hillaryImage.addHillIntroAnimation()
        
        highScore = NSUserDefaults.standardUserDefaults().integerForKey("HighScoreSaved")
        highScoreLabel.text = "High Score: \(highScore)"
        start = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // =======
    // Touches
    // =======
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        if start == true {
            hideIntroObjects(true)
            scoreLabel.hidden = true
            
            timer = NSTimer.scheduledTimerWithTimeInterval(0.05, target:self, selector: Selector("heliMove"), userInfo: nil, repeats: true)
            
            start = false
            
            scorer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "scoring", userInfo: nil, repeats: true)
            
            let screenWidth = Int(screenSize.height - 50.0)
            
            hideObjects(false)
            
            for item in obstacles {
                let itemPosition = 570 + Int(obstacles.indexOf(item)!)*250
                positionObstacle(randomPosition, screenWidth: screenWidth, obstacle: item, x: itemPosition)
                item.frame = CGRect(x: itemPosition, y: randomPosition, width: 24, height: screenWidth/2 - 60)
            }
            
            func placeObstacles(objects: Array<UIImageView>, addedScreenWidth: Int){
                for item in objects {
                    let itemPosition = 560 + Int(objects.indexOf(item)!)*90
                    randomPosition = Int(arc4random_uniform(UInt32(screenWidth/6))) + addedScreenWidth
                    item.center = CGPoint(x: itemPosition, y: randomPosition)
                }
            }
            placeObstacles(topObjects, addedScreenWidth: 0)
            placeObstacles(bottomObjects, addedScreenWidth: screenWidth)
        
        }
        
        politicianDirectionOfTravel = -7
        
        trumpImage.removeAllAnimations()
        hillaryImage.removeAllAnimations()
        benImage.removeAllAnimations()
        
        trumpImage.addFlyingAnimation()
        hillaryImage.addHillFlyingAnimation()
        benImage.addBenFlyingAnimation()
        
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        politicianDirectionOfTravel = 7
        
        trumpImage.removeAllAnimations()
        trumpImage.addFallingAnimation()
        
        hillaryImage.removeAllAnimations()
        hillaryImage.addHillFallingAnimation()
        
        benImage.removeAllAnimations()
        benImage.addBenFallingAnimation()
    }

    
    // ==============
    // Core functions
    // ==============
    
    func choosePolitician() {
        if (toPass == "Hillary") {
            politician = hillaryImage
        } else if (toPass == "Ben") {
            politician = benImage
        } else if (toPass == "Trump") {
            politician = trumpImage
        } else {
            print("None of the politicians selected")
        }
    }
    
    func hideOtherPoliticians() {
        if politician != benImage {
            benImage.hidden = true
        }
        
        if politician != trumpImage {
            trumpImage.hidden = true
        }
        
        if politician != hillaryImage {
            hillaryImage.hidden = true
        }
    }
    
    func heliMove(){
        collision()
        let screenWidth = Int(screenSize.height - 50.0)
        
        politician.center = CGPointMake(politician.center.x, politician.center.y + politicianDirectionOfTravel)
        
        for item in allObjects {
            item.center = CGPointMake(item.center.x - 10, item.center.y)
        }
        
        for item in obstacles {
            if item.center.x < -10 {
                positionObstacle(randomPosition, screenWidth: screenWidth, obstacle: item, x: 760)
            }
        }
        
        func recycleObjects(objects: Array<UIImageView>, addedScreenWidth: Int){
            for item in objects {
                if item.center.x < -70 {
                    randomPosition = Int(arc4random_uniform((UInt32(screenWidth/6)))) + addedScreenWidth
                    item.center = CGPoint(x: 800, y: randomPosition)
                }
            }
        }
        recycleObjects(topObjects, addedScreenWidth: 0)
        recycleObjects(bottomObjects, addedScreenWidth: screenWidth)
    }
    
    func collision(){
        
        for item in allObjects{
            if CGRectIntersectsRect(politician.frame, item.frame){
                endGame()
            }
        }
        
        if politician.center.y > screenSize.height || politician.center.y < -screenSize.height {
            endGame()
        }
    }
    
    func endGame(){
        politician.hidden = true
        timer .invalidate()
        scorer .invalidate()
        
        if scoreNumber > highScore {
            highScore = scoreNumber
            print("HighScore is: \(highScore)")
            print("scoreNumber is: \(scoreNumber)")
            NSUserDefaults.standardUserDefaults().setInteger(highScore, forKey: "HighScoreSaved")
        }
        
        self.performSelector("showScore", withObject: nil, afterDelay: 1)
    }
    
    func showScore(){
        scoreLabel.text = "Score: \(scoreNumber)"
        scoreLabel.hidden = false
        hideObjects(true)
        
        self.performSelector("backToHomeScreen", withObject: nil, afterDelay: 2)
    }
    
    func backToHomeScreen(){
        self.navigationController!.popViewControllerAnimated(true)
    }
    
    func newGame(){
        hideIntroObjects(false)
        scoreLabel.hidden = true
        
        politician.hidden = false
        politician.center = CGPointMake(58, 149)
        
        trumpImage.removeAllAnimations()
        benImage.removeAllAnimations()
        hillaryImage.removeAllAnimations()
        
        trumpImage.addIntroAnimation()
        benImage.addBenIntroAnimation()
        hillaryImage.addHillIntroAnimation()
        
        start = true
        
        scoreNumber = 0
        scoreLabel.text = "Score: 0"
        highScoreLabel.text = "High Score: \(highScore)"
    }
    
    func scoring(){
        scoreNumber = scoreNumber + 1
//        score.text = "Score: \(scoreNumber)"
        
    }
    
    
    // =======
    // Helpers
    // =======

    func hideObjects(hiddenOrNot: Bool){
        for item in allObjects {
            item.hidden = hiddenOrNot
        }
    }
    
    func hideIntroObjects(hiddenOrNot: Bool){
        tapToStartLabel.hidden = hiddenOrNot
        highScoreLabel.hidden = hiddenOrNot
        titleLabel.hidden = hiddenOrNot
    }
    
    func positionObstacle(var randomPosition:Int, screenWidth:Int, obstacle:UIImageView, x:Int) -> CGPoint {
        randomPosition = Int(arc4random_uniform(UInt32(screenWidth/2)))
        randomPosition = randomPosition + 110
        obstacle.center = CGPoint(x: x, y: randomPosition)
        return obstacle.center
    }

}

