//
// HeliHillyView.swift
// Generated by Core Animator version 1.1.1 on 23/10/2015.
//
// DO NOT MODIFY THIS FILE. IT IS AUTO-GENERATED AND WILL BE OVERWRITTEN
//

import UIKit

@IBDesignable
class HeliHillyView : UIView {


	var animationCompletions = Dictionary<CAAnimation, (Bool) -> Void>()
	var viewsByName: [String : UIView]!

	// - MARK: Life Cycle

	convenience init() {
		self.init(frame: CGRect(x: 0, y: 0, width: 44, height: 81))
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
		__scaling__.bounds = CGRect(x:0, y:0, width:44, height:81)
		__scaling__.center = CGPoint(x:22.4, y:40.7)
		self.addSubview(__scaling__)
		viewsByName["__scaling__"] = __scaling__

		let body = UIView()
		body.bounds = CGRect(x:0, y:0, width:40.0, height:80.7)
		body.layer.position = CGPoint(x:28.877, y:41.107)
		__scaling__.addSubview(body)
		viewsByName["body"] = body

		let hillLeg2 = UIImageView()
		hillLeg2.bounds = CGRect(x:0, y:0, width:36.0, height:62.0)
		hillLeg2.layer.anchorPoint = CGPoint(x:0.413, y:0.093)
		var imgLeg2: UIImage!
		if let imagePath = bundle.pathForResource("leg2.png", ofType:nil) {
			imgLeg2 = UIImage(contentsOfFile:imagePath)
		}
		hillLeg2.image = imgLeg2
		hillLeg2.contentMode = .Center;
		hillLeg2.layer.position = CGPoint(x:11.969, y:50.682)
		hillLeg2.transform = CGAffineTransformScale(CGAffineTransformMakeRotation(0.26), 0.49, 0.52)
		body.addSubview(hillLeg2)
		viewsByName["HillLeg2"] = hillLeg2

		let hillLeg = UIImageView()
		hillLeg.bounds = CGRect(x:0, y:0, width:36.0, height:62.0)
		hillLeg.layer.anchorPoint = CGPoint(x:0.445, y:0.117)
		var imgLeg: UIImage!
		if let imagePath = bundle.pathForResource("leg.png", ofType:nil) {
			imgLeg = UIImage(contentsOfFile:imagePath)
		}
		hillLeg.image = imgLeg
		hillLeg.contentMode = .Center;
		hillLeg.layer.position = CGPoint(x:11.717, y:49.866)
		hillLeg.transform = CGAffineTransformScale(CGAffineTransformMakeRotation(6.07), 0.57, 0.53)
		body.addSubview(hillLeg)
		viewsByName["HillLeg"] = hillLeg

		let headAndBody = UIImageView()
		headAndBody.bounds = CGRect(x:0, y:0, width:50.0, height:92.0)
		var imgHeadAndBody: UIImage!
		if let imagePath = bundle.pathForResource("headAndBody.png", ofType:nil) {
			imgHeadAndBody = UIImage(contentsOfFile:imagePath)
		}
		headAndBody.image = imgHeadAndBody
		headAndBody.contentMode = .Center;
		headAndBody.layer.position = CGPoint(x:14.246, y:24.602)
		headAndBody.transform = CGAffineTransformMakeScale(0.57, 0.53)
		body.addSubview(headAndBody)
		viewsByName["headAndBody"] = headAndBody

		let hillHair = UIImageView()
		hillHair.bounds = CGRect(x:0, y:0, width:62.0, height:14.0)
		hillHair.layer.anchorPoint = CGPoint(x:0.229, y:0.409)
		var imgHillHair: UIImage!
		if let imagePath = bundle.pathForResource("hillHair.png", ofType:nil) {
			imgHillHair = UIImage(contentsOfFile:imagePath)
		}
		hillHair.image = imgHillHair
		hillHair.contentMode = .Center;
		hillHair.layer.position = CGPoint(x:12.697, y:3.567)
		hillHair.transform = CGAffineTransformMakeScale(0.57, 0.53)
		body.addSubview(hillHair)
		viewsByName["hillHair"] = hillHair

		let hillArm = UIImageView()
		hillArm.bounds = CGRect(x:0, y:0, width:22.0, height:42.0)
		hillArm.layer.anchorPoint = CGPoint(x:0.480, y:0.095)
		var imgArm: UIImage!
		if let imagePath = bundle.pathForResource("arm.png", ofType:nil) {
			imgArm = UIImage(contentsOfFile:imagePath)
		}
		hillArm.image = imgArm
		hillArm.contentMode = .Center;
		hillArm.layer.position = CGPoint(x:12.524, y:29.317)
		hillArm.transform = CGAffineTransformMakeScale(0.57, 0.53)
		body.addSubview(hillArm)
		viewsByName["HillArm"] = hillArm

		self.viewsByName = viewsByName
	}

	// - MARK: HillFalling

	func addHillFallingAnimation() {
		addHillFallingAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: nil)
	}

	func addHillFallingAnimation(completion: ((Bool) -> Void)?) {
		addHillFallingAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: completion)
	}

	func addHillFallingAnimation(removedOnCompletion removedOnCompletion: Bool) {
		addHillFallingAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: nil)
	}

	func addHillFallingAnimation(removedOnCompletion removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		addHillFallingAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: completion)
	}

	func addHillFallingAnimationWithBeginTime(beginTime: CFTimeInterval, fillMode: String, removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		let linearTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
		let easeInOutTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
		if let complete = completion {
			let representativeAnimation = CABasicAnimation(keyPath: "not.a.real.key")
			representativeAnimation.duration = 0.250
			representativeAnimation.delegate = self
			self.layer.addAnimation(representativeAnimation, forKey: "HillFalling")
			self.animationCompletions[layer.animationForKey("HillFalling")!] = complete
		}

		let bodyRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		bodyRotationAnimation.duration = 0.250
		bodyRotationAnimation.values = [-0.268 as Float, -0.268 as Float]
		bodyRotationAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		bodyRotationAnimation.timingFunctions = [linearTiming]
		bodyRotationAnimation.beginTime = beginTime
		bodyRotationAnimation.fillMode = fillMode
		bodyRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["body"]?.layer.addAnimation(bodyRotationAnimation, forKey:"HillFalling_Rotation")

		let hillLeg2RotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		hillLeg2RotationAnimation.duration = 0.250
		hillLeg2RotationAnimation.values = [0.257 as Float, -0.212 as Float, 0.257 as Float]
		hillLeg2RotationAnimation.keyTimes = [0.000 as Float, 0.500 as Float, 1.000 as Float]
		hillLeg2RotationAnimation.timingFunctions = [easeInOutTiming, easeInOutTiming]
		hillLeg2RotationAnimation.repeatCount = HUGE
		hillLeg2RotationAnimation.beginTime = beginTime
		hillLeg2RotationAnimation.fillMode = fillMode
		hillLeg2RotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["HillLeg2"]?.layer.addAnimation(hillLeg2RotationAnimation, forKey:"HillFalling_Rotation")

		let hillHairOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		hillHairOpacityAnimation.duration = 0.250
		hillHairOpacityAnimation.values = [0.000 as Float, 0.000 as Float]
		hillHairOpacityAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		hillHairOpacityAnimation.timingFunctions = [linearTiming]
		hillHairOpacityAnimation.beginTime = beginTime
		hillHairOpacityAnimation.fillMode = fillMode
		hillHairOpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["hillHair"]?.layer.addAnimation(hillHairOpacityAnimation, forKey:"HillFalling_Opacity")

		let hillArmRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		hillArmRotationAnimation.duration = 0.250
		hillArmRotationAnimation.values = [-2.942 as Float, -2.039 as Float, -2.795 as Float, -2.942 as Float]
		hillArmRotationAnimation.keyTimes = [0.000 as Float, 0.496 as Float, 1.000 as Float, 1.000 as Float]
		hillArmRotationAnimation.timingFunctions = [easeInOutTiming, easeInOutTiming, easeInOutTiming]
		hillArmRotationAnimation.repeatCount = HUGE
		hillArmRotationAnimation.beginTime = beginTime
		hillArmRotationAnimation.fillMode = fillMode
		hillArmRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["HillArm"]?.layer.addAnimation(hillArmRotationAnimation, forKey:"HillFalling_Rotation")

		let hillLegRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		hillLegRotationAnimation.duration = 0.250
		hillLegRotationAnimation.values = [6.066 as Float, 6.599 as Float, 6.066 as Float]
		hillLegRotationAnimation.keyTimes = [0.000 as Float, 0.500 as Float, 1.000 as Float]
		hillLegRotationAnimation.timingFunctions = [easeInOutTiming, easeInOutTiming]
		hillLegRotationAnimation.repeatCount = HUGE
		hillLegRotationAnimation.beginTime = beginTime
		hillLegRotationAnimation.fillMode = fillMode
		hillLegRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["HillLeg"]?.layer.addAnimation(hillLegRotationAnimation, forKey:"HillFalling_Rotation")
	}

	func removeHillFallingAnimation() {
		self.layer.removeAnimationForKey("HillFalling")
		self.viewsByName["body"]?.layer.removeAnimationForKey("HillFalling_Rotation")
		self.viewsByName["HillLeg2"]?.layer.removeAnimationForKey("HillFalling_Rotation")
		self.viewsByName["hillHair"]?.layer.removeAnimationForKey("HillFalling_Opacity")
		self.viewsByName["HillArm"]?.layer.removeAnimationForKey("HillFalling_Rotation")
		self.viewsByName["HillLeg"]?.layer.removeAnimationForKey("HillFalling_Rotation")
	}

	// - MARK: HillFlying

	func addHillFlyingAnimation() {
		addHillFlyingAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: nil)
	}

	func addHillFlyingAnimation(completion: ((Bool) -> Void)?) {
		addHillFlyingAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: completion)
	}

	func addHillFlyingAnimation(removedOnCompletion removedOnCompletion: Bool) {
		addHillFlyingAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: nil)
	}

	func addHillFlyingAnimation(removedOnCompletion removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		addHillFlyingAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: completion)
	}

	func addHillFlyingAnimationWithBeginTime(beginTime: CFTimeInterval, fillMode: String, removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		let easeInOutTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
		if let complete = completion {
			let representativeAnimation = CABasicAnimation(keyPath: "not.a.real.key")
			representativeAnimation.duration = 0.500
			representativeAnimation.delegate = self
			self.layer.addAnimation(representativeAnimation, forKey: "HillFlying")
			self.animationCompletions[layer.animationForKey("HillFlying")!] = complete
		}

		let bodyRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		bodyRotationAnimation.duration = 0.500
		bodyRotationAnimation.values = [0.271 as Float, 0.271 as Float]
		bodyRotationAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		bodyRotationAnimation.timingFunctions = [easeInOutTiming]
		bodyRotationAnimation.beginTime = beginTime
		bodyRotationAnimation.fillMode = fillMode
		bodyRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["body"]?.layer.addAnimation(bodyRotationAnimation, forKey:"HillFlying_Rotation")

		let hillLeg2RotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		hillLeg2RotationAnimation.duration = 0.500
		hillLeg2RotationAnimation.values = [0.257 as Float, -0.169 as Float, 0.257 as Float]
		hillLeg2RotationAnimation.keyTimes = [0.000 as Float, 0.500 as Float, 1.000 as Float]
		hillLeg2RotationAnimation.timingFunctions = [easeInOutTiming, easeInOutTiming]
		hillLeg2RotationAnimation.repeatCount = HUGE
		hillLeg2RotationAnimation.beginTime = beginTime
		hillLeg2RotationAnimation.fillMode = fillMode
		hillLeg2RotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["HillLeg2"]?.layer.addAnimation(hillLeg2RotationAnimation, forKey:"HillFlying_Rotation")

		let hillHairTranslationXAnimation = CAKeyframeAnimation(keyPath: "transform.translation.x")
		hillHairTranslationXAnimation.duration = 0.125
		hillHairTranslationXAnimation.values = [0.000 as Float, -14.512 as Float, 0.000 as Float]
		hillHairTranslationXAnimation.keyTimes = [0.000 as Float, 0.600 as Float, 1.000 as Float]
		hillHairTranslationXAnimation.timingFunctions = [easeInOutTiming, easeInOutTiming]
		hillHairTranslationXAnimation.repeatCount = HUGE
		hillHairTranslationXAnimation.beginTime = beginTime
		hillHairTranslationXAnimation.fillMode = fillMode
		hillHairTranslationXAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["hillHair"]?.layer.addAnimation(hillHairTranslationXAnimation, forKey:"HillFlying_TranslationX")

		let hillHairTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		hillHairTranslationYAnimation.duration = 0.125
		hillHairTranslationYAnimation.values = [0.000 as Float, 0.193 as Float, 0.000 as Float]
		hillHairTranslationYAnimation.keyTimes = [0.000 as Float, 0.600 as Float, 1.000 as Float]
		hillHairTranslationYAnimation.timingFunctions = [easeInOutTiming, easeInOutTiming]
		hillHairTranslationYAnimation.repeatCount = HUGE
		hillHairTranslationYAnimation.beginTime = beginTime
		hillHairTranslationYAnimation.fillMode = fillMode
		hillHairTranslationYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["hillHair"]?.layer.addAnimation(hillHairTranslationYAnimation, forKey:"HillFlying_TranslationY")

		let hillArmRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		hillArmRotationAnimation.duration = 0.500
		hillArmRotationAnimation.values = [0.000 as Float, -0.406 as Float, 0.000 as Float]
		hillArmRotationAnimation.keyTimes = [0.000 as Float, 0.500 as Float, 1.000 as Float]
		hillArmRotationAnimation.timingFunctions = [easeInOutTiming, easeInOutTiming]
		hillArmRotationAnimation.repeatCount = HUGE
		hillArmRotationAnimation.beginTime = beginTime
		hillArmRotationAnimation.fillMode = fillMode
		hillArmRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["HillArm"]?.layer.addAnimation(hillArmRotationAnimation, forKey:"HillFlying_Rotation")

		let hillLegRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		hillLegRotationAnimation.duration = 0.500
		hillLegRotationAnimation.values = [6.066 as Float, 6.576 as Float, 6.066 as Float]
		hillLegRotationAnimation.keyTimes = [0.000 as Float, 0.500 as Float, 1.000 as Float]
		hillLegRotationAnimation.timingFunctions = [easeInOutTiming, easeInOutTiming]
		hillLegRotationAnimation.repeatCount = HUGE
		hillLegRotationAnimation.beginTime = beginTime
		hillLegRotationAnimation.fillMode = fillMode
		hillLegRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["HillLeg"]?.layer.addAnimation(hillLegRotationAnimation, forKey:"HillFlying_Rotation")
	}

	func removeHillFlyingAnimation() {
		self.layer.removeAnimationForKey("HillFlying")
		self.viewsByName["body"]?.layer.removeAnimationForKey("HillFlying_Rotation")
		self.viewsByName["HillLeg2"]?.layer.removeAnimationForKey("HillFlying_Rotation")
		self.viewsByName["hillHair"]?.layer.removeAnimationForKey("HillFlying_TranslationX")
		self.viewsByName["hillHair"]?.layer.removeAnimationForKey("HillFlying_TranslationY")
		self.viewsByName["HillArm"]?.layer.removeAnimationForKey("HillFlying_Rotation")
		self.viewsByName["HillLeg"]?.layer.removeAnimationForKey("HillFlying_Rotation")
	}

	override func animationDidStop(anim: CAAnimation!, finished flag: Bool) {
		if let completion = self.animationCompletions[anim] {
			self.animationCompletions.removeValueForKey(anim)
			completion(flag)
		}
	}

	func removeAllAnimations() {
		for subview in viewsByName.values {
			subview.layer.removeAllAnimations()
		}
		self.layer.removeAnimationForKey("HillFalling")
		self.layer.removeAnimationForKey("HillFlying")
	}
}