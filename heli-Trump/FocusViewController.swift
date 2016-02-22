//
//  FocusViewController.swift
//  heli-Trump
//
//  Created by Charlie Morris on 18/02/2016.
//  Copyright © 2016 chtmorris. All rights reserved.
//

import UIKit

class FocusViewController: UIViewController {

    // =============
    // MARK: - Enums
    // =============
    
    enum Style {
        case Circle, Rectangle
    }
    
    // ==================
    // MARK: - Properties
    // ==================
    
    lazy var transitionManager = {
        return FocusTransitionManager()
    }()
    
    var style:Style = .Circle
    var maskFrame:CGRect = CGRectZero
    var tap:UITapGestureRecognizer!
    var pan:UIPanGestureRecognizer!
    
    // ================
    // MARK: - Subviews
    // ================
    
    var maskLayer:CAShapeLayer?
    
    
    // ===================
    // MARK: - Preferences
    // ===================
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    // ============
    // MARK: - Init
    // ============
    
    class func loadFromNib(style:Style, maskFrame:CGRect) -> FocusViewController {
        let storyboard = UIStoryboard(name: "Focus", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("FocusViewController") as! FocusViewController
        vc.style = style
        vc.maskFrame = maskFrame
        return vc
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        commonInit()
    }
    
    func commonInit() {
        modalPresentationStyle = .Custom
        transitioningDelegate = transitionManager
    }
    
    // =================
    // MARK: - Lifecycle
    // =================
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        maskLayer = CAShapeLayer()
        maskLayer?.fillColor = UIColor.blackColor().CGColor
        maskLayer?.fillRule = kCAFillRuleEvenOdd
        view.layer.mask = maskLayer
        
        tap = UITapGestureRecognizer(target: self, action: "tapped:")
        view.addGestureRecognizer(tap)
        
        addSwipeGestureRecognisers()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        maskLayer?.path = maskPath(view.bounds, visibleFrame: maskFrame).CGPath
    }
    
    
    // ======================
    // MARK: - Event Handlers
    // ======================
    
    func tapped(tap:UITapGestureRecognizer) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func respondToSwipeGesture(gesture: UIGestureRecognizer) {
        if let _ = gesture as? UISwipeGestureRecognizer {
            self.dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    
    // =================================
    // MARK: - Swipe Gesture Recognisers
    // =================================
    
    func addSwipeGestureRecognisers(){
        directedSwipeGesture(UISwipeGestureRecognizerDirection.Up)
        directedSwipeGesture(UISwipeGestureRecognizerDirection.Down)
        directedSwipeGesture(UISwipeGestureRecognizerDirection.Left)
        directedSwipeGesture(UISwipeGestureRecognizerDirection.Right)
    }
    
    func directedSwipeGesture(directionOfSwipe: UISwipeGestureRecognizerDirection) {
        let swipeName = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
        swipeName.direction = directionOfSwipe
        self.view.addGestureRecognizer(swipeName)
    }
    
    
    // ===============
    // MARK: - Helpers
    // ===============
    
    private func maskPath(maskedFrame:CGRect, visibleFrame:CGRect) -> UIBezierPath {
        switch style {
        case .Circle:
            let path = UIBezierPath(rect: maskedFrame)
            path.appendPath(UIBezierPath(ovalInRect: visibleFrame))
            return path
        case .Rectangle:
            let path = UIBezierPath(rect: maskedFrame)
            path.appendPath(UIBezierPath(rect: visibleFrame))
            return path
        }
    }

}
