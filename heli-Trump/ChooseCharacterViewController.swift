//
//  ChooseCharacterViewController.swift
//  heli-Trump
//
//  Created by Charlie Morris on 31/10/2015.
//  Copyright © 2015 chtmorris. All rights reserved.
//

import UIKit

class ChooseCharacterViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var politicianSelected: Characters!
    var highScore: Int = 0
    var firstLaunch = true
    
    @IBOutlet weak var highScoreLabel: UILabel!
    
//    deinit {
//        NSNotificationCenter.defaultCenter().removeObserver(self)
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBarHidden = true
        collectionView.dataSource = self
        collectionView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        highScore = NSUserDefaults.standardUserDefaults().integerForKey("HighScoreSaved")
        highScoreLabel.text = "High Score: \(highScore)"
    }
    
    override func viewDidAppear(animated: Bool) {
        showSwipeTipIfNeeded()
    }
    
    
    // ========================
    // CHARACTER COLLECTIONVIEW
    // ========================
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("CharacterImageCell", forIndexPath: indexPath)
        
        if let cell = cell as? CharacterCell {
            cell.configure(UIImage(named: Characters(rawValue: indexPath.row)!.sideOnPic))
        }
        
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .Horizontal
        }
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        if let _ = collectionView.cellForItemAtIndexPath(indexPath) as? CharacterCell {
            politicianSelected = Characters(rawValue: indexPath.row)
            OptionsManager.sharedInstance.characterSelected = Characters(rawValue: indexPath.row)!
            transitionToGamePlayVC()
        }
    }
    
    @IBAction func myUnwindAction(segue: UIStoryboardSegue) {}
    
    // =======
    // HELPERS
    // =======
    
    func transitionToGamePlayVC() {
        let gamePlayViewController = GamePlayViewController.loadFromNib(politicianSelected)
        self.presentViewController(gamePlayViewController, animated:true, completion:nil)
    }
    
    private func showSwipeTipIfNeeded() {
        // Check for first launch
//        if Defaults[BCToolTip.CreateSignal.rawValue].intValue == 0 {
//            
//            firstLaunch = NSUserDefaults.standardUserDefaults().integerForKey("firstLaunch")
        
        if firstLaunch == true {
            
            // Show tool tip for creating a BatCall
            
            let rightPadding:CGFloat = 6
            let diameter:CGFloat = 50
//            let containerFrame = containerView.frame
            let maskFrame = CGRectMake(0, 0, 0, 0)
            let vc = FocusViewController.loadFromNib(.Circle,
                maskFrame: maskFrame
//                message: "Hi",
//                labelInsets: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
            )
            presentViewController(vc, animated: true, completion: nil)
            
            // Increment
//            Defaults[BCToolTip.CreateSignal.rawValue]++
        }
        
    }

    
    
    
}
