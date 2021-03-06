//
// CoreRubioView.swift
// Generated by Core Animator version 1.1.1 on 17/02/2016.
//
// DO NOT MODIFY THIS FILE. IT IS AUTO-GENERATED AND WILL BE OVERWRITTEN
//

import UIKit

@IBDesignable
class CoreRubioView : UIView {


	var animationCompletions = Dictionary<CAAnimation, (Bool) -> Void>()
	var viewsByName: [String : UIView]!

	// - MARK: Life Cycle

	convenience init() {
		self.init(frame: CGRect(x: 0, y: 0, width: 137, height: 236))
	}

	override init(frame: CGRect) {
		super.init(frame: frame)
		self.setupHierarchy()
	}

	required init(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)!
		self.setupHierarchy()
	}

	// - MARK: Scaling

	override func layoutSubviews() {
		super.layoutSubviews()

		if let scalingView = self.viewsByName["__scaling__"] {
			var xScale = self.bounds.size.width / scalingView.bounds.size.width
			var yScale = self.bounds.size.height / scalingView.bounds.size.height
			switch contentMode {
			case .ScaleToFill:
				break
			case .ScaleAspectFill:
				let scale = max(xScale, yScale)
				xScale = scale
				yScale = scale
			default:
				let scale = min(xScale, yScale)
				xScale = scale
				yScale = scale
			}
			scalingView.transform = CGAffineTransformMakeScale(xScale, yScale)
			scalingView.center = CGPoint(x:CGRectGetMidX(self.bounds), y:CGRectGetMidY(self.bounds))
		}
	}

	// - MARK: Setup

	func setupHierarchy() {
		var viewsByName: [String : UIView] = [:]
		let bundle = NSBundle(forClass:self.dynamicType)
		let __scaling__ = UIView()
		__scaling__.bounds = CGRect(x:0, y:0, width:137, height:236)
		__scaling__.center = CGPoint(x:68.6, y:118.5)
		self.addSubview(__scaling__)
		viewsByName["__scaling__"] = __scaling__

		let rubio = UIView()
		rubio.bounds = CGRect(x:0, y:0, width:93.0, height:90.0)
		rubio.layer.anchorPoint = CGPoint(x:-0.221, y:-0.335)
		rubio.layer.position = CGPoint(x:50.698, y:115.218)
		rubio.transform = CGAffineTransformMakeRotation(0.329)
		__scaling__.addSubview(rubio)
		viewsByName["Rubio"] = rubio

		let footFire = UIImageView()
		footFire.bounds = CGRect(x:0, y:0, width:39.0, height:81.0)
		var imgFootFire: UIImage!
		if let imagePath = bundle.pathForResource("FootFire.png", ofType:nil) {
			imgFootFire = UIImage(contentsOfFile:imagePath)
		}
		footFire.image = imgFootFire
		footFire.contentMode = .Center;
		footFire.layer.position = CGPoint(x:-19.292, y:114.417)
		footFire.alpha = 0.00
		rubio.addSubview(footFire)
		viewsByName["FootFire"] = footFire

		let rubioRightLeg = UIImageView()
		rubioRightLeg.bounds = CGRect(x:0, y:0, width:66.0, height:90.0)
		rubioRightLeg.layer.anchorPoint = CGPoint(x:0.469, y:0.043)
		var imgRubioRightLeg: UIImage!
		if let imagePath = bundle.pathForResource("RubioRightLeg.png", ofType:nil) {
			imgRubioRightLeg = UIImage(contentsOfFile:imagePath)
		}
		rubioRightLeg.image = imgRubioRightLeg
		rubioRightLeg.contentMode = .Center;
		rubioRightLeg.layer.position = CGPoint(x:-16.659, y:-5.574)
		rubio.addSubview(rubioRightLeg)
		viewsByName["RubioRightLeg"] = rubioRightLeg

		let rubioLeftLeg = UIImageView()
		rubioLeftLeg.bounds = CGRect(x:0, y:0, width:66.0, height:90.0)
		rubioLeftLeg.layer.anchorPoint = CGPoint(x:0.425, y:0.087)
		var imgRubioLeftLeg: UIImage!
		if let imagePath = bundle.pathForResource("RubioLeftLeg.png", ofType:nil) {
			imgRubioLeftLeg = UIImage(contentsOfFile:imagePath)
		}
		rubioLeftLeg.image = imgRubioLeftLeg
		rubioLeftLeg.contentMode = .Center;
		rubioLeftLeg.layer.position = CGPoint(x:-18.687, y:-1.846)
		rubio.addSubview(rubioLeftLeg)
		viewsByName["RubioLeftLeg"] = rubioLeftLeg

		let rubioHead = UIImageView()
		rubioHead.bounds = CGRect(x:0, y:0, width:93.0, height:78.0)
		rubioHead.layer.anchorPoint = CGPoint(x:0.402, y:0.928)
		var imgRubioHead: UIImage!
		if let imagePath = bundle.pathForResource("RubioHead.png", ofType:nil) {
			imgRubioHead = UIImage(contentsOfFile:imagePath)
		}
		rubioHead.image = imgRubioHead
		rubioHead.contentMode = .Center;
		rubioHead.layer.position = CGPoint(x:-18.242, y:-74.821)
		rubio.addSubview(rubioHead)
		viewsByName["RubioHead"] = rubioHead

		let rubioBodyNew = UIImageView()
		rubioBodyNew.bounds = CGRect(x:0, y:0, width:63.0, height:87.0)
		var imgRubioBodyNew: UIImage!
		if let imagePath = bundle.pathForResource("RubioBodyNew.png", ofType:nil) {
			imgRubioBodyNew = UIImage(contentsOfFile:imagePath)
		}
		rubioBodyNew.image = imgRubioBodyNew
		rubioBodyNew.contentMode = .Center;
		rubioBodyNew.layer.position = CGPoint(x:-21.668, y:-39.069)
		rubio.addSubview(rubioBodyNew)
		viewsByName["RubioBodyNew"] = rubioBodyNew

		let handFire = UIImageView()
		handFire.bounds = CGRect(x:0, y:0, width:18.0, height:54.0)
		var imgHandFire: UIImage!
		if let imagePath = bundle.pathForResource("HandFire.png", ofType:nil) {
			imgHandFire = UIImage(contentsOfFile:imagePath)
		}
		handFire.image = imgHandFire
		handFire.contentMode = .Center;
		handFire.layer.position = CGPoint(x:-24.014, y:18.000)
		handFire.alpha = 0.00
		rubio.addSubview(handFire)
		viewsByName["HandFire"] = handFire

		let rubioArm = UIImageView()
		rubioArm.bounds = CGRect(x:0, y:0, width:33.0, height:63.0)
		rubioArm.layer.anchorPoint = CGPoint(x:0.497, y:0.056)
		var imgRubioArm: UIImage!
		if let imagePath = bundle.pathForResource("RubioArm.png", ofType:nil) {
			imgRubioArm = UIImage(contentsOfFile:imagePath)
		}
		rubioArm.image = imgRubioArm
		rubioArm.contentMode = .Center;
		rubioArm.layer.position = CGPoint(x:-26.152, y:-60.116)
		rubio.addSubview(rubioArm)
		viewsByName["RubioArm"] = rubioArm

		self.viewsByName = viewsByName
	}

	// - MARK: Falling

	func addFallingAnimation() {
		addFallingAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: nil)
	}

	func addFallingAnimation(completion: ((Bool) -> Void)?) {
		addFallingAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: completion)
	}

	func addFallingAnimation(removedOnCompletion removedOnCompletion: Bool) {
		addFallingAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: nil)
	}

	func addFallingAnimation(removedOnCompletion removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		addFallingAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: completion)
	}

	func addFallingAnimationWithBeginTime(beginTime: CFTimeInterval, fillMode: String, removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		let linearTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
		let easeOutTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
		if let complete = completion {
			let representativeAnimation = CABasicAnimation(keyPath: "not.a.real.key")
			representativeAnimation.duration = 0.175
			representativeAnimation.delegate = self
			self.layer.addAnimation(representativeAnimation, forKey: "Falling")
			self.animationCompletions[layer.animationForKey("Falling")!] = complete
		}

		let rubioArmRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		rubioArmRotationAnimation.duration = 0.175
		rubioArmRotationAnimation.values = [0.000 as Float, -0.383 as Float, 0.000 as Float]
		rubioArmRotationAnimation.keyTimes = [0.000 as Float, 0.429 as Float, 1.000 as Float]
		rubioArmRotationAnimation.timingFunctions = [easeOutTiming, easeOutTiming]
		rubioArmRotationAnimation.repeatCount = HUGE
		rubioArmRotationAnimation.beginTime = beginTime
		rubioArmRotationAnimation.fillMode = fillMode
		rubioArmRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["RubioArm"]?.layer.addAnimation(rubioArmRotationAnimation, forKey:"Falling_Rotation")

		let rubioLeftLegRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		rubioLeftLegRotationAnimation.duration = 0.175
		rubioLeftLegRotationAnimation.values = [0.000 as Float, -0.365 as Float, 0.000 as Float]
		rubioLeftLegRotationAnimation.keyTimes = [0.000 as Float, 0.429 as Float, 1.000 as Float]
		rubioLeftLegRotationAnimation.timingFunctions = [easeOutTiming, easeOutTiming]
		rubioLeftLegRotationAnimation.repeatCount = HUGE
		rubioLeftLegRotationAnimation.beginTime = beginTime
		rubioLeftLegRotationAnimation.fillMode = fillMode
		rubioLeftLegRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["RubioLeftLeg"]?.layer.addAnimation(rubioLeftLegRotationAnimation, forKey:"Falling_Rotation")

		let rubioRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		rubioRotationAnimation.duration = 0.175
		rubioRotationAnimation.values = [-0.315 as Float, -0.315 as Float]
		rubioRotationAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		rubioRotationAnimation.timingFunctions = [linearTiming]
		rubioRotationAnimation.beginTime = beginTime
		rubioRotationAnimation.fillMode = fillMode
		rubioRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["Rubio"]?.layer.addAnimation(rubioRotationAnimation, forKey:"Falling_Rotation")

		let rubioHeadRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		rubioHeadRotationAnimation.duration = 0.175
		rubioHeadRotationAnimation.values = [0.000 as Float, 0.101 as Float, 0.000 as Float]
		rubioHeadRotationAnimation.keyTimes = [0.000 as Float, 0.429 as Float, 1.000 as Float]
		rubioHeadRotationAnimation.timingFunctions = [easeOutTiming, easeOutTiming]
		rubioHeadRotationAnimation.repeatCount = HUGE
		rubioHeadRotationAnimation.beginTime = beginTime
		rubioHeadRotationAnimation.fillMode = fillMode
		rubioHeadRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["RubioHead"]?.layer.addAnimation(rubioHeadRotationAnimation, forKey:"Falling_Rotation")

		let rubioRightLegRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		rubioRightLegRotationAnimation.duration = 0.175
		rubioRightLegRotationAnimation.values = [0.000 as Float, 0.366 as Float, 0.000 as Float]
		rubioRightLegRotationAnimation.keyTimes = [0.000 as Float, 0.429 as Float, 1.000 as Float]
		rubioRightLegRotationAnimation.timingFunctions = [easeOutTiming, easeOutTiming]
		rubioRightLegRotationAnimation.repeatCount = HUGE
		rubioRightLegRotationAnimation.beginTime = beginTime
		rubioRightLegRotationAnimation.fillMode = fillMode
		rubioRightLegRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["RubioRightLeg"]?.layer.addAnimation(rubioRightLegRotationAnimation, forKey:"Falling_Rotation")
	}

	func removeFallingAnimation() {
		self.layer.removeAnimationForKey("Falling")
		self.viewsByName["RubioArm"]?.layer.removeAnimationForKey("Falling_Rotation")
		self.viewsByName["RubioLeftLeg"]?.layer.removeAnimationForKey("Falling_Rotation")
		self.viewsByName["Rubio"]?.layer.removeAnimationForKey("Falling_Rotation")
		self.viewsByName["RubioHead"]?.layer.removeAnimationForKey("Falling_Rotation")
		self.viewsByName["RubioRightLeg"]?.layer.removeAnimationForKey("Falling_Rotation")
	}

	// - MARK: Flying

	func addFlyingAnimation() {
		addFlyingAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: nil)
	}

	func addFlyingAnimation(completion: ((Bool) -> Void)?) {
		addFlyingAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: completion)
	}

	func addFlyingAnimation(removedOnCompletion removedOnCompletion: Bool) {
		addFlyingAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: nil)
	}

	func addFlyingAnimation(removedOnCompletion removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		addFlyingAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: completion)
	}

	func addFlyingAnimationWithBeginTime(beginTime: CFTimeInterval, fillMode: String, removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		let linearTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
		if let complete = completion {
			let representativeAnimation = CABasicAnimation(keyPath: "not.a.real.key")
			representativeAnimation.duration = 1.000
			representativeAnimation.delegate = self
			self.layer.addAnimation(representativeAnimation, forKey: "Flying")
			self.animationCompletions[layer.animationForKey("Flying")!] = complete
		}

		let handFireOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		handFireOpacityAnimation.duration = 1.000
		handFireOpacityAnimation.values = [0.000 as Float, 1.000 as Float, 1.000 as Float]
		handFireOpacityAnimation.keyTimes = [0.000 as Float, 0.250 as Float, 1.000 as Float]
		handFireOpacityAnimation.timingFunctions = [linearTiming, linearTiming]
		handFireOpacityAnimation.beginTime = beginTime
		handFireOpacityAnimation.fillMode = fillMode
		handFireOpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["HandFire"]?.layer.addAnimation(handFireOpacityAnimation, forKey:"Flying_Opacity")

		let handFireScaleYAnimation = CAKeyframeAnimation(keyPath: "transform.scale.y")
		handFireScaleYAnimation.duration = 1.000
		handFireScaleYAnimation.values = [1.000 as Float, 2.261 as Float]
		handFireScaleYAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		handFireScaleYAnimation.timingFunctions = [linearTiming]
		handFireScaleYAnimation.beginTime = beginTime
		handFireScaleYAnimation.fillMode = fillMode
		handFireScaleYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["HandFire"]?.layer.addAnimation(handFireScaleYAnimation, forKey:"Flying_ScaleY")

		let handFireTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		handFireTranslationYAnimation.duration = 1.000
		handFireTranslationYAnimation.values = [0.000 as Float, 34.050 as Float]
		handFireTranslationYAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		handFireTranslationYAnimation.timingFunctions = [linearTiming]
		handFireTranslationYAnimation.beginTime = beginTime
		handFireTranslationYAnimation.fillMode = fillMode
		handFireTranslationYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["HandFire"]?.layer.addAnimation(handFireTranslationYAnimation, forKey:"Flying_TranslationY")

		let footFireOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		footFireOpacityAnimation.duration = 1.000
		footFireOpacityAnimation.values = [0.000 as Float, 1.000 as Float, 1.000 as Float]
		footFireOpacityAnimation.keyTimes = [0.000 as Float, 0.249 as Float, 1.000 as Float]
		footFireOpacityAnimation.timingFunctions = [linearTiming, linearTiming]
		footFireOpacityAnimation.beginTime = beginTime
		footFireOpacityAnimation.fillMode = fillMode
		footFireOpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["FootFire"]?.layer.addAnimation(footFireOpacityAnimation, forKey:"Flying_Opacity")

		let footFireScaleYAnimation = CAKeyframeAnimation(keyPath: "transform.scale.y")
		footFireScaleYAnimation.duration = 1.000
		footFireScaleYAnimation.values = [1.000 as Float, 2.626 as Float]
		footFireScaleYAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		footFireScaleYAnimation.timingFunctions = [linearTiming]
		footFireScaleYAnimation.beginTime = beginTime
		footFireScaleYAnimation.fillMode = fillMode
		footFireScaleYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["FootFire"]?.layer.addAnimation(footFireScaleYAnimation, forKey:"Flying_ScaleY")

		let footFireTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		footFireTranslationYAnimation.duration = 1.000
		footFireTranslationYAnimation.values = [0.000 as Float, 65.844 as Float]
		footFireTranslationYAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		footFireTranslationYAnimation.timingFunctions = [linearTiming]
		footFireTranslationYAnimation.beginTime = beginTime
		footFireTranslationYAnimation.fillMode = fillMode
		footFireTranslationYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["FootFire"]?.layer.addAnimation(footFireTranslationYAnimation, forKey:"Flying_TranslationY")
	}

	func removeFlyingAnimation() {
		self.layer.removeAnimationForKey("Flying")
		self.viewsByName["HandFire"]?.layer.removeAnimationForKey("Flying_Opacity")
		self.viewsByName["HandFire"]?.layer.removeAnimationForKey("Flying_ScaleY")
		self.viewsByName["HandFire"]?.layer.removeAnimationForKey("Flying_TranslationY")
		self.viewsByName["FootFire"]?.layer.removeAnimationForKey("Flying_Opacity")
		self.viewsByName["FootFire"]?.layer.removeAnimationForKey("Flying_ScaleY")
		self.viewsByName["FootFire"]?.layer.removeAnimationForKey("Flying_TranslationY")
	}

	// - MARK: Intro

	func addIntroAnimation() {
		addIntroAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: nil)
	}

	func addIntroAnimation(completion: ((Bool) -> Void)?) {
		addIntroAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: completion)
	}

	func addIntroAnimation(removedOnCompletion removedOnCompletion: Bool) {
		addIntroAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: nil)
	}

	func addIntroAnimation(removedOnCompletion removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		addIntroAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: completion)
	}

	func addIntroAnimationWithBeginTime(beginTime: CFTimeInterval, fillMode: String, removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		if let complete = completion {
			let representativeAnimation = CABasicAnimation(keyPath: "not.a.real.key")
			representativeAnimation.duration = 0.000
			representativeAnimation.delegate = self
			self.layer.addAnimation(representativeAnimation, forKey: "Intro")
			self.animationCompletions[layer.animationForKey("Intro")!] = complete
		}

		let rubioRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		rubioRotationAnimation.duration = 0.000
		rubioRotationAnimation.values = [-0.003 as Float]
		rubioRotationAnimation.keyTimes = [0.000 as Float]
		rubioRotationAnimation.beginTime = beginTime
		rubioRotationAnimation.fillMode = fillMode
		rubioRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["Rubio"]?.layer.addAnimation(rubioRotationAnimation, forKey:"Intro_Rotation")
	}

	func removeIntroAnimation() {
		self.layer.removeAnimationForKey("Intro")
		self.viewsByName["Rubio"]?.layer.removeAnimationForKey("Intro_Rotation")
	}

	override func animationDidStop(anim: CAAnimation, finished flag: Bool) {
		if let completion = self.animationCompletions[anim] {
			self.animationCompletions.removeValueForKey(anim)
			completion(flag)
		}
	}

	func removeAllAnimations() {
		for subview in viewsByName.values {
			subview.layer.removeAllAnimations()
		}
		self.layer.removeAnimationForKey("Falling")
		self.layer.removeAnimationForKey("Flying")
		self.layer.removeAnimationForKey("Intro")
	}
}