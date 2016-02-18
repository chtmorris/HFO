//
// BernieView.swift
// Generated by Core Animator version 1.1.1 on 17/02/2016.
//
// DO NOT MODIFY THIS FILE. IT IS AUTO-GENERATED AND WILL BE OVERWRITTEN
//

import UIKit

@IBDesignable
class BernieView : UIView {


	var animationCompletions = Dictionary<CAAnimation, (Bool) -> Void>()
	var viewsByName: [String : UIView]!

	// - MARK: Life Cycle

	convenience init() {
		self.init(frame: CGRect(x: 0, y: 0, width: 174, height: 262))
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
		__scaling__.bounds = CGRect(x:0, y:0, width:174, height:262)
		__scaling__.center = CGPoint(x:87.5, y:131.1)
		self.addSubview(__scaling__)
		viewsByName["__scaling__"] = __scaling__

		let bernieBodyFull = UIView()
		bernieBodyFull.bounds = CGRect(x:0, y:0, width:201.0, height:192.0)
		bernieBodyFull.layer.anchorPoint = CGPoint(x:0.698, y:0.909)
		bernieBodyFull.layer.position = CGPoint(x:96.036, y:129.548)
		__scaling__.addSubview(bernieBodyFull)
		viewsByName["BernieBodyFull"] = bernieBodyFull

		let bernieFire = UIImageView()
		bernieFire.bounds = CGRect(x:0, y:0, width:201.0, height:192.0)
		var imgBernieFire: UIImage!
		if let imagePath = bundle.pathForResource("BernieFire.png", ofType:nil) {
			imgBernieFire = UIImage(contentsOfFile:imagePath)
		}
		bernieFire.image = imgBernieFire
		bernieFire.contentMode = .Center;
		bernieFire.layer.position = CGPoint(x:34.624, y:266.549)
		bernieFire.alpha = 0.00
		bernieBodyFull.addSubview(bernieFire)
		viewsByName["BernieFire"] = bernieFire

		let bernHead = UIImageView()
		bernHead.bounds = CGRect(x:0, y:0, width:99.0, height:87.0)
		var imgBernHead: UIImage!
		if let imagePath = bundle.pathForResource("BernHead.png", ofType:nil) {
			imgBernHead = UIImage(contentsOfFile:imagePath)
		}
		bernHead.image = imgBernHead
		bernHead.contentMode = .Center;
		bernHead.layer.position = CGPoint(x:126.804, y:91.128)
		bernieBodyFull.addSubview(bernHead)
		viewsByName["BernHead"] = bernHead

		let bernieBodyMain = UIImageView()
		bernieBodyMain.bounds = CGRect(x:0, y:0, width:84.0, height:96.0)
		var imgBernieBodyMain: UIImage!
		if let imagePath = bundle.pathForResource("BernieBodyMain.png", ofType:nil) {
			imgBernieBodyMain = UIImage(contentsOfFile:imagePath)
		}
		bernieBodyMain.image = imgBernieBodyMain
		bernieBodyMain.contentMode = .Center;
		bernieBodyMain.layer.position = CGPoint(x:129.881, y:166.306)
		bernieBodyFull.addSubview(bernieBodyMain)
		viewsByName["BernieBodyMain"] = bernieBodyMain

		let bernieArm = UIImageView()
		bernieArm.bounds = CGRect(x:0, y:0, width:36.0, height:63.0)
		bernieArm.layer.anchorPoint = CGPoint(x:0.302, y:0.110)
		var imgBernieArm: UIImage!
		if let imagePath = bundle.pathForResource("BernieArm.png", ofType:nil) {
			imgBernieArm = UIImage(contentsOfFile:imagePath)
		}
		bernieArm.image = imgBernieArm
		bernieArm.contentMode = .Center;
		bernieArm.layer.position = CGPoint(x:113.461, y:149.938)
		bernieBodyFull.addSubview(bernieArm)
		viewsByName["BernieArm"] = bernieArm

		let bernieLeg = UIImageView()
		bernieLeg.bounds = CGRect(x:0, y:0, width:69.0, height:93.0)
		var imgBernieLeg: UIImage!
		if let imagePath = bundle.pathForResource("BernieLeg.png", ofType:nil) {
			imgBernieLeg = UIImage(contentsOfFile:imagePath)
		}
		bernieLeg.image = imgBernieLeg
		bernieLeg.contentMode = .Center;
		bernieLeg.layer.position = CGPoint(x:137.805, y:247.615)
		bernieBodyFull.addSubview(bernieLeg)
		viewsByName["BernieLeg"] = bernieLeg

		self.viewsByName = viewsByName
	}

	// - MARK: falling

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
		if let complete = completion {
			let representativeAnimation = CABasicAnimation(keyPath: "not.a.real.key")
			representativeAnimation.duration = 1.000
			representativeAnimation.delegate = self
			self.layer.addAnimation(representativeAnimation, forKey: "Falling")
			self.animationCompletions[layer.animationForKey("Falling")!] = complete
		}

		let bernieBodyFullRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		bernieBodyFullRotationAnimation.duration = 1.000
		bernieBodyFullRotationAnimation.values = [-0.309 as Float, 0.394 as Float, 0.394 as Float]
		bernieBodyFullRotationAnimation.keyTimes = [0.000 as Float, 0.750 as Float, 1.000 as Float]
		bernieBodyFullRotationAnimation.timingFunctions = [linearTiming, linearTiming]
		bernieBodyFullRotationAnimation.beginTime = beginTime
		bernieBodyFullRotationAnimation.fillMode = fillMode
		bernieBodyFullRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["BernieBodyFull"]?.layer.addAnimation(bernieBodyFullRotationAnimation, forKey:"falling_Rotation")

		let bernieArmRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		bernieArmRotationAnimation.duration = 1.000
		bernieArmRotationAnimation.values = [0.000 as Float, -1.543 as Float, -1.543 as Float]
		bernieArmRotationAnimation.keyTimes = [0.000 as Float, 0.750 as Float, 1.000 as Float]
		bernieArmRotationAnimation.timingFunctions = [linearTiming, linearTiming]
		bernieArmRotationAnimation.beginTime = beginTime
		bernieArmRotationAnimation.fillMode = fillMode
		bernieArmRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["BernieArm"]?.layer.addAnimation(bernieArmRotationAnimation, forKey:"falling_Rotation")
	}

	func removeFallingAnimation() {
		self.layer.removeAnimationForKey("Falling")
		self.viewsByName["BernieBodyFull"]?.layer.removeAnimationForKey("falling_Rotation")
		self.viewsByName["BernieArm"]?.layer.removeAnimationForKey("falling_Rotation")
	}

	// - MARK: flying

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

		let bernieBodyFullRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		bernieBodyFullRotationAnimation.duration = 1.000
		bernieBodyFullRotationAnimation.values = [0.375 as Float, -0.349 as Float, -0.249 as Float]
		bernieBodyFullRotationAnimation.keyTimes = [0.000 as Float, 1.000 as Float, 1.000 as Float]
		bernieBodyFullRotationAnimation.timingFunctions = [linearTiming, linearTiming]
		bernieBodyFullRotationAnimation.beginTime = beginTime
		bernieBodyFullRotationAnimation.fillMode = fillMode
		bernieBodyFullRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["BernieBodyFull"]?.layer.addAnimation(bernieBodyFullRotationAnimation, forKey:"flying_Rotation")

		let bernieFireOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		bernieFireOpacityAnimation.duration = 1.000
		bernieFireOpacityAnimation.values = [0.000 as Float, 1.000 as Float, 1.000 as Float]
		bernieFireOpacityAnimation.keyTimes = [0.000 as Float, 0.750 as Float, 1.000 as Float]
		bernieFireOpacityAnimation.timingFunctions = [linearTiming, linearTiming]
		bernieFireOpacityAnimation.beginTime = beginTime
		bernieFireOpacityAnimation.fillMode = fillMode
		bernieFireOpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["BernieFire"]?.layer.addAnimation(bernieFireOpacityAnimation, forKey:"flying_Opacity")

		let bernieArmRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		bernieArmRotationAnimation.duration = 1.000
		bernieArmRotationAnimation.values = [-1.763 as Float, 0.000 as Float]
		bernieArmRotationAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		bernieArmRotationAnimation.timingFunctions = [linearTiming]
		bernieArmRotationAnimation.beginTime = beginTime
		bernieArmRotationAnimation.fillMode = fillMode
		bernieArmRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["BernieArm"]?.layer.addAnimation(bernieArmRotationAnimation, forKey:"flying_Rotation")
	}

	func removeFlyingAnimation() {
		self.layer.removeAnimationForKey("Flying")
		self.viewsByName["BernieBodyFull"]?.layer.removeAnimationForKey("flying_Rotation")
		self.viewsByName["BernieFire"]?.layer.removeAnimationForKey("flying_Opacity")
		self.viewsByName["BernieArm"]?.layer.removeAnimationForKey("flying_Rotation")
	}

	// - MARK: intro

	func addIntroAnimation() {
		addIntroAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false)
	}

	func addIntroAnimation(removedOnCompletion removedOnCompletion: Bool) {
		addIntroAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion)
	}

	func addIntroAnimationWithBeginTime(beginTime: CFTimeInterval, fillMode: String, removedOnCompletion: Bool) {
	}

	func removeIntroAnimation() {
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
	}
}