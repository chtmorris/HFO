//
//  Global_iAD.swift
//  heli-Trump
//
//  Created by Charlie Morris on 14/01/2016.
//  Copyright © 2016 chtmorris. All rights reserved.
//

import Foundation
import UIKit
import iAd


public enum ADBannerPosition {
    case Top
    case TopOf(UIView)
    case Bottom
    case BottomOf(UIView)
}


public final class ADBannerSignleton:NSObject, ADBannerViewDelegate {
    // The banner singleton
    private static let sharedADBannerView: ADBannerView = {
        let b = ADBannerView(adType: ADAdType.Banner)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.hidden = true
        b.delegate = ADBannerSignleton.sharedDelegate
        return b
    }()
    
    private static let sharedDelegate = ADBannerSignleton()
    
    public static func moveSharedADBannerToViewController(viewController: UIViewController, atPosition position: ADBannerPosition) {
        sharedADBannerView.removeFromSuperview()
        let view = viewController.view
        
        view.addSubview(sharedADBannerView)
        
        let visualDictionary: [String : UIView]
        let margin: CGFloat
        let verticalFormat: String
        
        switch position {
        case .Top:
            visualDictionary = [ "banner" : sharedADBannerView ]
            margin = viewController.topLayoutGuide.length
            verticalFormat = "V:|-(\(margin))-[banner]"
        case let .TopOf(view):
            visualDictionary = [
                "banner" : sharedADBannerView,
                "view": view]
            margin = 0.0
            verticalFormat = "[view]-(\(margin))-[banner]"
        case .Bottom:
            visualDictionary = [ "banner" : sharedADBannerView ]
            margin = viewController.bottomLayoutGuide.length
            verticalFormat = "V:[banner]-(\(margin))-|"
        case let .BottomOf(view):
            visualDictionary = [
                "banner" : sharedADBannerView,
                "view": view]
            margin = 0.0
            verticalFormat = "V:[view]-(\(margin))-[banner]"
        }
        
        let verticalConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            verticalFormat,
            options: NSLayoutFormatOptions(),
            metrics: nil,
            views: visualDictionary)
        
        let horizontalConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "|-0-[banner]-0-|",
            options: NSLayoutFormatOptions(),
            metrics: nil,
            views: visualDictionary)
        
        view.addConstraints(verticalConstraints + horizontalConstraints)
    }
    
    public func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError error: NSError!) {
        if banner === ADBannerSignleton.sharedADBannerView {
            banner.hidden = true
        }
    }
    
    public func bannerViewActionShouldBegin(banner: ADBannerView!, willLeaveApplication willLeave: Bool) -> Bool {
        return true
    }
    
    public func bannerViewDidLoadAd(banner: ADBannerView!) {
        if banner === ADBannerSignleton.sharedADBannerView {
            banner.hidden = false
        }
    }
}