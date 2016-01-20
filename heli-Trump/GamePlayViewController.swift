//
//  ViewController.swift
//  heli-Trump
//
//  Created by Charlie Morris on 16/09/2015.
//  Copyright © 2015 chtmorris. All rights reserved.
//

import UIKit

class GamePlayViewController: UIViewController {
    
    
    // =======================
    // Variables and constants
    // =======================
    
    var screenSize: CGRect = UIScreen.mainScreen().bounds
    
    var timer = CADisplayLink()
    var scorer = NSTimer()
    
    var touchToStartGame = true
    var politicianDirectionOfTravel: CGFloat = 1
    var randomPosition: Int = 0
    var scoreNumber: Int = 0
    var highScore: Int = 0
    var lives: Int = 2
    var flashing: Bool = false
    var level: CGFloat = 10
    var enemyOnScreen = false
    
    @IBOutlet weak var tapToStartLabel: UILabel!
    @IBOutlet weak var trumpImage: TrumpCartoonView!
    @IBOutlet weak var hillaryImage: HeliHillyView!
    @IBOutlet weak var benImage: BenHeliView!
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var firstHeart: UIImageView!
    @IBOutlet weak var secondHeart: UIImageView!
    @IBOutlet weak var mexicanView: MexicanView!
    @IBOutlet weak var envelopeView: CoreEnvelopeView!
    @IBOutlet weak var egyptianView: EgyptianView!
    
    var politician: UIView!
    var selectedPolitician:Characters!
    
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
    
    @IBOutlet weak var gameOverOverlay: UIView!
    
    var obstacles = [UIImageView]()
    var topObjects = [UIImageView]()
    var bottomObjects = [UIImageView]()
    var topAndBottomObjects = [UIImageView]()
    var allObjects = [UIImageView]()
    
    // =======
    // Loading
    // =======
    
    class func loadFromNib(politicianSelected:Characters) -> GamePlayViewController {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let gamePlayViewController = storyBoard.instantiateViewControllerWithIdentifier("GamePlayViewController") as! GamePlayViewController
        gamePlayViewController.selectedPolitician = politicianSelected
        return gamePlayViewController
    }
    
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
        
        trumpImage.addIntroAnimation()
        benImage.addBenIntroAnimation()
        hillaryImage.addHillIntroAnimation()
        
        highScore = NSUserDefaults.standardUserDefaults().integerForKey("HighScoreSaved")
        
        touchToStartGame = true
        
        mexicanView.hidden = true
        envelopeView.hidden = true
        egyptianView.hidden = true
        
    }
    
    
    // =======
    // Touches
    // =======
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        if touchToStartGame == true {
            
            touchToStartGame = false
            hideIntroObjects(true)
            hideObjects(false)
            startTimerAndCADisplayLink()
            moveObstaclesAcrossScreen()
        
        }
        
        politicianDirectionOfTravel = -3
        
        trumpImage.removeAllAnimations()
        hillaryImage.removeAllAnimations()
        benImage.removeAllAnimations()
        
        trumpImage.addFlyingAnimation()
        hillaryImage.addHillFlyingAnimation()
        benImage.addBenFlyingAnimation()
        mexicanView.addEmemyAnimateAnimation()
        envelopeView.addUntitledAnimation()
        egyptianView.addDanceAnimation()
        
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        politicianDirectionOfTravel = 3
        
        trumpImage.removeAllAnimations()
        trumpImage.addFallingAnimation()
        
        hillaryImage.removeAllAnimations()
        hillaryImage.addHillFallingAnimation()
        
        benImage.removeAllAnimations()
        benImage.addBenFallingAnimation()
    }

    
    // ==================
    // Pre-game functions
    // ==================
    
    
    func choosePolitician() {
        if (selectedPolitician == Characters.Hilary) {
            politician = hillaryImage
            self.background.image = Characters.Hilary.background
            self.obstacle1.image = Characters.Hilary.obstacle
            self.obstacle2.image = Characters.Hilary.obstacle
        } else if (selectedPolitician == Characters.Ben) {
            politician = benImage
            self.background.image = Characters.Ben.background
            self.obstacle1.image = Characters.Ben.obstacle
            self.obstacle2.image = Characters.Ben.obstacle
        } else if (selectedPolitician == Characters.Trump) {
            politician = trumpImage
            self.background.image = Characters.Trump.background
            self.obstacle1.image = Characters.Trump.obstacle
            self.obstacle2.image = Characters.Trump.obstacle
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
    
    func startTimerAndCADisplayLink() {
        timer = CADisplayLink(target: self, selector: "heliMove")
        timer.addToRunLoop(NSRunLoop.currentRunLoop(), forMode: NSDefaultRunLoopMode)
        NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "scoring", userInfo: nil, repeats: true)
        NSTimer.scheduledTimerWithTimeInterval(5, target: self, selector: "levelingUp", userInfo: nil, repeats: true)
    }
    
    
    // ================
    // Gaming functions
    // ================
    
    func moveObstaclesAcrossScreen(){
        
        let screenWidth = Int(screenSize.height)
        
        for item in obstacles {
            let itemPosition = 570 + Int(obstacles.indexOf(item)!)*250
            positionObstacle(randomPosition, screenWidth: screenWidth, obstacle: item, x: itemPosition)
            item.frame = CGRect(x: itemPosition, y: randomPosition, width: 30, height: screenWidth/3 - 60)
        }
        
        func placeBorderObstacles(topObjects: Array<UIImageView>, bottomObjects: Array<UIImageView>, addedScreenWidth: Int){
            
            for item in topObjects {
                let itemPosition = 560 + Int(topObjects.indexOf(item)!)*90
                randomPosition = Int(arc4random_uniform(UInt32(screenWidth/12)))
                item.center = CGPoint(x: itemPosition, y: randomPosition - 10)
                
                randomPosition = randomPosition + addedScreenWidth - 20
                bottomObjects[Int(topObjects.indexOf(item)!)].center = CGPoint(x: itemPosition, y: randomPosition)
            }
        }
        
        mexicanView.frame = CGRect(x: -10, y: screenWidth, width: 40, height: 71)
        envelopeView.frame = CGRect(x: -10, y: screenWidth, width: 50, height: 71)
        egyptianView.frame = CGRect(x: -10, y: screenWidth, width: 50, height: 71)
        
        placeBorderObstacles(topObjects, bottomObjects: bottomObjects, addedScreenWidth: screenWidth)
        
    }
    
    func heliMove(){
        collision()
        let screenWidth = Int(screenSize.height)
        
        
        // MOVE OBSTACLES
        
        politician.center = CGPointMake(politician.center.x, politician.center.y + politicianDirectionOfTravel)
        
        for item in allObjects {
            item.center = CGPointMake(item.center.x - (self.level/2), item.center.y)
        }
        
        mexicanView.center = CGPointMake(mexicanView.center.x - (self.level/2), mexicanView.center.y)
        envelopeView.center = CGPointMake(envelopeView.center.x - (self.level/2), envelopeView.center.y)
        egyptianView.center = CGPointMake(egyptianView.center.x - (self.level/1.7), egyptianView.center.y)
        
        
        // RESET OBSTACLES
        
        for item in obstacles {
            if item.center.x < -10 {
                positionObstacle(randomPosition, screenWidth: screenWidth, obstacle: item, x: 760)
            }
        }
        
        func recycleObjects(topobjects: Array<UIImageView>, bottomobjects: Array<UIImageView>, addedScreenWidth: Int){
            for item in topobjects {
                randomPosition = Int(arc4random_uniform((UInt32(screenWidth/12))))
                
                if item.center.x < -70 {
                    item.center = CGPoint(x: 800, y: randomPosition - 10)
                }
                
                if bottomObjects[Int(topObjects.indexOf(item)!)].center.x < -70 {
                    randomPosition = randomPosition + addedScreenWidth - 20
                    bottomObjects[Int(topObjects.indexOf(item)!)].center = CGPoint(x: 800, y: randomPosition)
                }
            }
        }
        recycleObjects(topObjects, bottomobjects: bottomObjects, addedScreenWidth: screenWidth)
    }
    

    // ==================
    // End-game functions
    // ==================
    
    func collision(){
        
        for item in allObjects{
            if CGRectIntersectsRect(politician.frame, item.frame){
                if lives == 2 {
                    flashingCharacterAndHeart(self.politician, heart: self.secondHeart)
                    Helper.delay(1.0, closure: { () -> () in
                        self.lives = 1
                        self.flashing = false
                        self.secondHeart.hidden = true
                    })
                } else if lives == 1 {
                    flashingCharacterAndHeart(self.politician, heart: self.firstHeart)
                    Helper.delay(1.0, closure: { () -> () in
                        self.lives = 0
                        self.flashing = false
                        self.firstHeart.hidden = true
                    })
                } else {
                    endGame()
                }
            }
        }
        
        if politician.center.y > screenSize.height || politician.center.y < -screenSize.height {
            endGame()
        }
    }
    
    func endGame(){
        politician.hidden = true
        timer.removeFromRunLoop(NSRunLoop.currentRunLoop(), forMode: NSDefaultRunLoopMode)
        timer.invalidate()
        scorer.invalidate()
        
        Helper.delay(0.5) {
            if self.scoreNumber > self.highScore {
                self.highScore = self.scoreNumber
                NSUserDefaults.standardUserDefaults().setInteger(self.highScore, forKey: "HighScoreSaved")
            }
            
            let gameOverViewController = GameOverViewController.loadFromNib(self.scoreNumber)
            self.presentViewController(gameOverViewController, animated:false, completion:nil)
            self.gameOverOverlay.backgroundColor = UIColor(red: 224/255, green: 22/255, blue: 43/255, alpha: 1)
        }
    }
    
    
    func scoring(){
        scoreNumber = scoreNumber + 1
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
    }
    
    func positionObstacle(var randomPosition:Int, screenWidth:Int, obstacle:UIImageView, x:Int) -> CGPoint {
        randomPosition = Int(arc4random_uniform(UInt32(screenWidth/2)))
        randomPosition = randomPosition + 110
        obstacle.center = CGPoint(x: x, y: randomPosition)
        
        if obstacle.center.y > CGFloat(screenWidth - 150) && !enemyOnScreen {
            if (selectedPolitician == Characters.Trump) {
                mexicanView.center = CGPoint(x: obstacle.center.x, y: obstacle.center.y + 20)
                mexicanView.hidden = false
            } else if (selectedPolitician == Characters.Hilary) {
                envelopeView.center = CGPoint(x: obstacle.center.x, y: obstacle.center.y + 50)
                envelopeView.hidden = false
            } else if (selectedPolitician == Characters.Ben) {
                egyptianView.center = CGPoint(x: obstacle.center.x, y: obstacle.center.y + 70)
                egyptianView.hidden = false
            }
            
            enemyOnScreen = true
            
            Helper.delay(10) { () -> () in
                self.enemyOnScreen = false
            }
        }
        
        return obstacle.center
    }
    
    func flashingCharacterAndHeart(politician: UIView, heart: UIImageView){
        if flashing == false {
            politician.hidden = true
            heart.hidden = true
            Helper.delay(0.2) { () -> () in
                politician.hidden = false
                heart.hidden = false
            }
            Helper.delay(0.4) { () -> () in
                politician.hidden = true
                heart.hidden = true
            }
            Helper.delay(0.6) { () -> () in
                politician.hidden = false
                heart.hidden = false
            }
            Helper.delay(0.8) { () -> () in
                politician.hidden = true
                heart.hidden = true
            }
            Helper.delay(1.0) { () -> () in
                politician.hidden = false
                heart.hidden = false
            }
        }
        self.flashing = true
    }
    
    func levelingUp(){
        self.level = self.level + 1
    }

}

