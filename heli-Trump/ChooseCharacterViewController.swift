//
//  ChooseCharacterViewController.swift
//  heli-Trump
//
//  Created by Charlie Morris on 31/10/2015.
//  Copyright © 2015 chtmorris. All rights reserved.
//

import iAd
import UIKit
import StoreKit

class ChooseCharacterViewController: UIViewController, ADBannerViewDelegate {

    var products = [SKProduct]()
    var politicianSelected: Characters!
    var highScore: Int = 0
    var bannerView: ADBannerView!
    
    @IBOutlet weak var highScoreLabel: UILabel!
    
    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
    // priceFormatter is used to show proper, localized currency
    lazy var priceFormatter: NSNumberFormatter = {
        let pf = NSNumberFormatter()
        pf.formatterBehavior = .Behavior10_4
        pf.numberStyle = .CurrencyStyle
        return pf
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBarHidden = true
        ADBannerSignleton.moveSharedADBannerToViewController(self, atPosition: .Bottom)
        
        // Set up a refresh control, call reload to start things up
//        reload()
        
        // Create a Restore Purchases button and hook it up to restoreTapped
//        let restoreButton = UIBarButtonItem(title: "Restore", style: .Plain, target: self, action: "restoreTapped:")
//        navigationItem.rightBarButtonItem = restoreButton
        
        // Subscribe to a notification that fires when a product is purchased.
//        NSNotificationCenter.defaultCenter().addObserver(self, selector: "productPurchased:", name: IAPHelperProductPurchasedNotification, object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        highScore = NSUserDefaults.standardUserDefaults().integerForKey("HighScoreSaved")
        highScoreLabel.text = "High Score: \(highScore)"
    }
    
    
    // ==========================
    // IN APP PURCHASES FUNCTIONS
    // ==========================
    
    // Fetch the products from iTunes connect, redisplay the table on successful completion
    func reload() {
        products = []
        HairForceOneProducts.store.requestProductsWithCompletionHandler { success, products in
            if success {
                self.products = products
                print("Products found in store: \(products)")
            }
        }
    }
    
    // Restore purchases to this device.
    func restoreTapped(sender: AnyObject) {
        HairForceOneProducts.store.restoreCompletedTransactions()
    }
    
    // Purchase the product
    func buyButtonTapped(button: UIButton) {
        let product = products[button.tag]
        HairForceOneProducts.store.purchaseProduct(product)
    }
    
    // When a product is purchased, this notification fires, redraw the correct row
    func productPurchased(notification: NSNotification) {
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
