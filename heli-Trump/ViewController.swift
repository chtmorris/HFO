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
    var Y: CGFloat = 1
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
    
    
    // =======
    // Loading
    // =======
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        hideObjects(true)
        scoreLabel.hidden = true
        trumpImage.addIntroAnimation()
        
        highScore = NSUserDefaults.standardUserDefaults().integerForKey("HighScoreSaved")
        highScoreLabel.text = "High Score: \(highScore)"
        
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
            
            positionObstacle(randomPosition, screenWidth: screenWidth, obstacle: obstacle1, x: 570)
            obstacle1.frame = CGRect(x: 570, y: randomPosition, width: 24, height: screenWidth/2 - 60)

            positionObstacle(randomPosition, screenWidth: screenWidth, obstacle: obstacle2, x: 820)
            obstacle2.frame = CGRect(x: 820, y: randomPosition, width: 24, height: screenWidth/2 - 60)
            
            randomPosition = Int(arc4random_uniform(UInt32(screenWidth/6)))
            top1.center = CGPoint(x: 560, y: randomPosition)
            randomPosition = randomPosition + screenWidth
            bottom1.center = CGPoint(x: 560, y: randomPosition)
            
            randomPosition = Int(arc4random_uniform((UInt32(screenWidth/6))))
            top2.center = CGPoint(x: 650, y: randomPosition)
            randomPosition = randomPosition + screenWidth
            bottom2.center = CGPoint(x: 650, y: randomPosition)
            
            randomPosition = Int(arc4random_uniform((UInt32(screenWidth/6))))
            top3.center = CGPoint(x: 740, y: randomPosition)
            randomPosition = randomPosition + screenWidth
            bottom3.center = CGPoint(x: 740, y: randomPosition)
            
            randomPosition = Int(arc4random_uniform((UInt32(screenWidth/6))))
            top4.center = CGPoint(x: 830, y: randomPosition)
            randomPosition = randomPosition + screenWidth
            bottom4.center = CGPoint(x: 830, y: randomPosition)
            
            randomPosition = Int(arc4random_uniform((UInt32(screenWidth/6))))
            top5.center = CGPoint(x: 920, y: randomPosition)
            randomPosition = randomPosition + screenWidth
            bottom5.center = CGPoint(x: 920, y: randomPosition)
            
            randomPosition = Int(arc4random_uniform((UInt32(screenWidth/6))))
            top6.center = CGPoint(x: 1010, y: randomPosition)
            randomPosition = randomPosition + screenWidth
            bottom6.center = CGPoint(x: 1010, y: randomPosition)
            
            randomPosition = Int(arc4random_uniform((UInt32(screenWidth/6))))
            top7.center = CGPoint(x: 1100, y: randomPosition)
            randomPosition = randomPosition + screenWidth
            bottom7.center = CGPoint(x: 1100, y: randomPosition)
            
            randomPosition = Int(arc4random_uniform((UInt32(screenWidth/6))))
            top8.center = CGPoint(x: 1190, y: randomPosition)
            randomPosition = randomPosition + screenWidth
            bottom8.center = CGPoint(x: 1190, y: randomPosition)
            
            randomPosition = Int(arc4random_uniform((UInt32(screenWidth/6))))
            top9.center = CGPoint(x: 1280, y: randomPosition)
            randomPosition = randomPosition + screenWidth
            bottom9.center = CGPoint(x: 1280, y: randomPosition)
            
            randomPosition = Int(arc4random_uniform((UInt32(screenWidth/6))))
            top10.center = CGPoint(x: 1370, y: randomPosition)
            randomPosition = randomPosition + screenWidth
            bottom10.center = CGPoint(x: 1370, y: randomPosition)
            
        }
        
        Y = -7
        trumpImage.removeAllAnimations()
        hillaryImage.removeAllAnimations()
        benImage.removeAllAnimations()
        
        trumpImage.addFlyingAnimation()
        hillaryImage.addHillFlyingAnimation()
        benImage.addBenFlyingAnimation()
        
        
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        Y = 7
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
    
    func heliMove(){
        collision()
        
        trumpImage.center = CGPointMake(trumpImage.center.x, trumpImage.center.y + Y)
        
        obstacle1.center = CGPointMake(obstacle1.center.x - 10, obstacle1.center.y)
        obstacle2.center = CGPointMake(obstacle2.center.x - 10, obstacle2.center.y)
        
        bottom1.center = CGPointMake(bottom1.center.x - 10, bottom1.center.y)
        bottom2.center = CGPointMake(bottom2.center.x - 10, bottom2.center.y)
        bottom3.center = CGPointMake(bottom3.center.x - 10, bottom3.center.y)
        bottom4.center = CGPointMake(bottom4.center.x - 10, bottom4.center.y)
        bottom5.center = CGPointMake(bottom5.center.x - 10, bottom5.center.y)
        bottom6.center = CGPointMake(bottom6.center.x - 10, bottom6.center.y)
        bottom7.center = CGPointMake(bottom7.center.x - 10, bottom7.center.y)
        bottom8.center = CGPointMake(bottom8.center.x - 10, bottom8.center.y)
        bottom9.center = CGPointMake(bottom9.center.x - 10, bottom9.center.y)
        bottom10.center = CGPointMake(bottom10.center.x - 10, bottom10.center.y)

        top1.center = CGPointMake(top1.center.x - 10, top1.center.y)
        top2.center = CGPointMake(top2.center.x - 10, top2.center.y)
        top3.center = CGPointMake(top3.center.x - 10, top3.center.y)
        top4.center = CGPointMake(top4.center.x - 10, top4.center.y)
        top5.center = CGPointMake(top5.center.x - 10, top5.center.y)
        top6.center = CGPointMake(top6.center.x - 10, top6.center.y)
        top7.center = CGPointMake(top7.center.x - 10, top7.center.y)
        top8.center = CGPointMake(top8.center.x - 10, top8.center.y)
        top9.center = CGPointMake(top9.center.x - 10, top9.center.y)
        top10.center = CGPointMake(top10.center.x - 10, top10.center.y)
        
        
        let screenWidth = Int(screenSize.height - 50.0)
        
        if obstacle1.center.x < -10 {
            positionObstacle(randomPosition, screenWidth: screenWidth, obstacle: obstacle1, x: 760)
        }
        
        if obstacle2.center.x < -10 {
            positionObstacle(randomPosition, screenWidth: screenWidth, obstacle: obstacle2, x: 760)
        }
        
        if top1.center.x < -70 {
            randomPosition = Int(arc4random_uniform((UInt32(screenWidth/6))))
            top1.center = CGPoint(x: 800, y: randomPosition)
            randomPosition = randomPosition + screenWidth
            bottom1.center = CGPoint(x: 800, y: randomPosition)
        }
        
        if top2.center.x < -70 {
            randomPosition = Int(arc4random_uniform((UInt32(screenWidth/6))))
            top2.center = CGPoint(x: 800, y: randomPosition)
            randomPosition = randomPosition + screenWidth
            bottom2.center = CGPoint(x: 800, y: randomPosition)
        }
        
        if top3.center.x < -70 {
            randomPosition = Int(arc4random_uniform((UInt32(screenWidth/6))))
            top3.center = CGPoint(x: 800, y: randomPosition)
            randomPosition = randomPosition + screenWidth
            bottom3.center = CGPoint(x: 800, y: randomPosition)
        }
        
        if top4.center.x < -70 {
            randomPosition = Int(arc4random_uniform((UInt32(screenWidth/6))))
            top4.center = CGPoint(x: 800, y: randomPosition)
            randomPosition = randomPosition + screenWidth
            bottom4.center = CGPoint(x: 800, y: randomPosition)
        }
        
        if top5.center.x < -70 {
            randomPosition = Int(arc4random_uniform((UInt32(screenWidth/6))))
            top5.center = CGPoint(x: 800, y: randomPosition)
            randomPosition = randomPosition + screenWidth
            bottom5.center = CGPoint(x: 800, y: randomPosition)
        }
        
        if top6.center.x < -70 {
            randomPosition = Int(arc4random_uniform((UInt32(screenWidth/6))))
            top6.center = CGPoint(x: 800, y: randomPosition)
            randomPosition = randomPosition + screenWidth
            bottom6.center = CGPoint(x: 800, y: randomPosition)
        }
        
        if top7.center.x < -70 {
            randomPosition = Int(arc4random_uniform((UInt32(screenWidth/6))))
            top7.center = CGPoint(x: 800, y: randomPosition)
            randomPosition = randomPosition + screenWidth
            bottom7.center = CGPoint(x: 800, y: randomPosition)
        }
        
        if top8.center.x < -70 {
            randomPosition = Int(arc4random_uniform((UInt32(screenWidth/6))))
            top8.center = CGPoint(x: 800, y: randomPosition)
            randomPosition = randomPosition + screenWidth
            bottom8.center = CGPoint(x: 800, y: randomPosition)
        }
        
        if top9.center.x < -70 {
            randomPosition = Int(arc4random_uniform((UInt32(screenWidth/6))))
            top9.center = CGPoint(x: 800, y: randomPosition)
            randomPosition = randomPosition + screenWidth
            bottom9.center = CGPoint(x: 800, y: randomPosition)
        }
        
        if top10.center.x < -70 {
            randomPosition = Int(arc4random_uniform((UInt32(screenWidth/6))))
            top10.center = CGPoint(x: 800, y: randomPosition)
            randomPosition = randomPosition + screenWidth
            bottom10.center = CGPoint(x: 800, y: randomPosition)
        }
        
    }
    
    func collision(){
        
        if CGRectIntersectsRect(trumpImage.frame, obstacle1.frame) || CGRectIntersectsRect(trumpImage.frame, obstacle2.frame){
            endGame()
        }
        
        if CGRectIntersectsRect(trumpImage.frame, bottom1.frame) || CGRectIntersectsRect(trumpImage.frame, bottom2.frame) || CGRectIntersectsRect(trumpImage.frame, bottom3.frame) || CGRectIntersectsRect(trumpImage.frame, bottom4.frame) || CGRectIntersectsRect(trumpImage.frame, bottom5.frame) || CGRectIntersectsRect(trumpImage.frame, bottom6.frame) || CGRectIntersectsRect(trumpImage.frame, bottom7.frame) || CGRectIntersectsRect(trumpImage.frame, bottom8.frame) || CGRectIntersectsRect(trumpImage.frame, bottom9.frame) || CGRectIntersectsRect(trumpImage.frame, bottom10.frame){
            endGame()
        }
        
        if CGRectIntersectsRect(trumpImage.frame, top1.frame) || CGRectIntersectsRect(trumpImage.frame, top2.frame) || CGRectIntersectsRect(trumpImage.frame, top3.frame) || CGRectIntersectsRect(trumpImage.frame, top4.frame) || CGRectIntersectsRect(trumpImage.frame, top5.frame) || CGRectIntersectsRect(trumpImage.frame, top6.frame) || CGRectIntersectsRect(trumpImage.frame, top7.frame) || CGRectIntersectsRect(trumpImage.frame, top8.frame) || CGRectIntersectsRect(trumpImage.frame, top9.frame) || CGRectIntersectsRect(trumpImage.frame, top10.frame){
            endGame()
        }
        
        if trumpImage.center.y > screenSize.height {
            endGame()
        }

        if trumpImage.center.y < -screenSize.height {
            endGame()
        }
        
        
    }
    
    func endGame(){
        trumpImage.hidden = true
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
        
        self.performSelector("newGame", withObject: nil, afterDelay: 2)
    }
    
    func newGame(){
        hideIntroObjects(false)
        scoreLabel.hidden = true
        
        trumpImage.removeAllAnimations()
        trumpImage.addIntroAnimation()
        trumpImage.hidden = false
        trumpImage.center = CGPointMake(58, 149)
        
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
        bottom1.hidden = hiddenOrNot
        bottom2.hidden = hiddenOrNot
        bottom3.hidden = hiddenOrNot
        bottom4.hidden = hiddenOrNot
        bottom5.hidden = hiddenOrNot
        bottom6.hidden = hiddenOrNot
        bottom7.hidden = hiddenOrNot
        bottom8.hidden = hiddenOrNot
        bottom9.hidden = hiddenOrNot
        bottom10.hidden = hiddenOrNot
        
        top1.hidden = hiddenOrNot
        top2.hidden = hiddenOrNot
        top3.hidden = hiddenOrNot
        top4.hidden = hiddenOrNot
        top5.hidden = hiddenOrNot
        top6.hidden = hiddenOrNot
        top7.hidden = hiddenOrNot
        top8.hidden = hiddenOrNot
        top9.hidden = hiddenOrNot
        top10.hidden = hiddenOrNot
        
        obstacle1.hidden = hiddenOrNot
        obstacle2.hidden = hiddenOrNot
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
    
//    func positionTopAndBottomBlocks(var randomPosition:Int, screenWidth:Int, top:UIImageView, bottom:UIImageView) -> CGPoint; CGPoint {
//        randomPosition = Int(arc4random_uniform(20))
//        top.center = CGPoint(x: 800, y: randomPosition)
////        positionBottomBlock(randomPosition, screenWidth: screenWidth, bottom: bottom)
//        randomPosition = randomPosition + screenWidth
//        bottom.center = CGPoint(x: 800, y: randomPosition)
////        return bottom.center
//        return top.center; bottom.center
//    }
//    
//    func positionBottomBlock(var randomPosition2:Int, screenWidth:Int, bottom:UIImageView) -> CGPoint {
//        randomPosition2 = randomPosition2 + screenWidth
//        bottom.center = CGPoint(x: 800, y: randomPosition)
//        return bottom.center
//    }

}

