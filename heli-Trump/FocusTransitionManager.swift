//
//  FocusTransitionManager.swift
//  heli-Trump
//
//  Created by Charlie Morris on 18/02/2016.
//  Copyright © 2016 chtmorris. All rights reserved.
//

import UIKit

class FocusTransitionManager: NSObject, UIViewControllerTransitioningDelegate ,UIViewControllerAnimatedTransitioning {
    
    // =============================================
    // MARK: - UIViewControllerTransitioningDelegate
    // =============================================
    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return self
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return self
    }
    
    // =============================================
    // MARK: - UIViewControllerAnimatedTransitioning
    // =============================================
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
        return 0.6
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        
        // Present
        if let presentedView = transitionContext.viewForKey(UITransitionContextToViewKey) {
            let presentingView = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)!.view
            
            present(transitionContext,
                presentedView: presentedView,
                presentingView: presentingView)
        }
            
            // Dismiss
        else if let presentingView = transitionContext.viewForKey(UITransitionContextFromViewKey) {
            let presentedView = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)!.view
            
            dismiss(transitionContext,
                presentedView: presentedView,
                presentingView: presentingView)
        }
    }
    
    func present(context:UIViewControllerContextTransitioning, presentedView:UIView, presentingView:UIView) {
        guard context.containerView() != nil else { return }
        
        let duration = transitionDuration(context)
        
        presentedView.alpha = 0
        context.containerView()!.addSubview(presentedView)
        
        print("Presenting")
        UIView.animateWithDuration(duration,
            delay: 0,
            usingSpringWithDamping: 1,
            initialSpringVelocity: 0,
            options: [],
            animations: {
                presentedView.alpha = 1
            }, completion: { finished in
                context.completeTransition(true)
        })
    }
    
    
    func dismiss(context:UIViewControllerContextTransitioning, presentedView:UIView, presentingView:UIView) {
        let duration = transitionDuration(context)
        
        print("Dismissing")
        UIView.animateWithDuration(duration,
            delay: 0,
            usingSpringWithDamping: 1,
            initialSpringVelocity: 0,
            options: [],
            animations: {
                presentingView.alpha = 0
            }, completion: { finished in
                context.completeTransition(true)
        })
    }
    
}