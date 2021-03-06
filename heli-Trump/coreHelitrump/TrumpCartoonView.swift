//
// TrumpCartoonView.swift
// Generated by Core Animator version 1.1.1 on 18/09/2015.
//
// DO NOT MODIFY THIS FILE. IT IS AUTO-GENERATED AND WILL BE OVERWRITTEN
//

import UIKit

@IBDesignable
class TrumpCartoonView : UIView {


	var animationCompletions = Dictionary<CAAnimation, (Bool) -> Void>()
	var viewsByName: [String : UIView]!

	// - MARK: Life Cycle

	convenience init() {
		self.init(frame: CGRect(x: 0, y: 0, width: 58, height: 81))
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
		__scaling__.bounds = CGRect(x:0, y:0, width:58, height:81)
		__scaling__.center = CGPoint(x:29.1, y:40.8)
		self.addSubview(__scaling__)
		viewsByName["__scaling__"] = __scaling__

		let fullBody = UIView()
		fullBody.bounds = CGRect(x:0, y:0, width:54.7, height:76.3)
		fullBody.layer.position = CGPoint(x:26.936, y:41.326)
		__scaling__.addSubview(fullBody)
		viewsByName["FullBody"] = fullBody

		let headWithHair = UIView()
		headWithHair.bounds = CGRect(x:0, y:0, width:54.7, height:30.3)
		headWithHair.layer.position = CGPoint(x:27.327, y:15.136)
		fullBody.addSubview(headWithHair)
		viewsByName["HeadWithHair"] = headWithHair

		let head = UIImageView()
		head.bounds = CGRect(x:0, y:0, width:40.0, height:30.0)
		head.layer.anchorPoint = CGPoint(x:0.620, y:0.501)
		var imgHead: UIImage!
		if let imagePath = bundle.pathForResource("head.png", ofType:nil) {
			imgHead = UIImage(contentsOfFile:imagePath)
		}
		head.image = imgHead
		head.contentMode = .Center;
		head.layer.position = CGPoint(x:24.793, y:15.314)
		headWithHair.addSubview(head)
		viewsByName["head"] = head

		let heliHair = UIImageView()
		heliHair.bounds = CGRect(x:0, y:0, width:47.0, height:10.0)
		var imgHeliHair: UIImage!
		if let imagePath = bundle.pathForResource("heliHair.png", ofType:nil) {
			imgHeliHair = UIImage(contentsOfFile:imagePath)
		}
		heliHair.image = imgHeliHair
		heliHair.contentMode = .Center;
		heliHair.layer.position = CGPoint(x:31.154, y:5.000)
		headWithHair.addSubview(heliHair)
		viewsByName["heliHair"] = heliHair

		let leftArm = UIView()
		leftArm.bounds = CGRect(x:0, y:0, width:12.0, height:22.2)
		leftArm.layer.anchorPoint = CGPoint(x:0.473, y:0.081)
		leftArm.layer.position = CGPoint(x:21.254, y:29.449)
		fullBody.addSubview(leftArm)
		viewsByName["LeftArm"] = leftArm

		let bottomArm2 = UIImageView()
		bottomArm2.bounds = CGRect(x:0, y:0, width:11.0, height:14.0)
		bottomArm2.layer.anchorPoint = CGPoint(x:0.502, y:0.177)
		var imgBottomArm: UIImage!
		if let imagePath = bundle.pathForResource("bottom arm.png", ofType:nil) {
			imgBottomArm = UIImage(contentsOfFile:imagePath)
		}
		bottomArm2.image = imgBottomArm
		bottomArm2.contentMode = .Center;
		bottomArm2.layer.position = CGPoint(x:6.060, y:10.714)
		leftArm.addSubview(bottomArm2)
		viewsByName["bottom arm 2"] = bottomArm2

		let topArm2 = UIImageView()
		topArm2.bounds = CGRect(x:0, y:0, width:12.0, height:11.0)
		topArm2.layer.anchorPoint = CGPoint(x:0.487, y:0.165)
		var imgTopArm: UIImage!
		if let imagePath = bundle.pathForResource("top arm.png", ofType:nil) {
			imgTopArm = UIImage(contentsOfFile:imagePath)
		}
		topArm2.image = imgTopArm
		topArm2.contentMode = .Center;
		topArm2.layer.position = CGPoint(x:5.840, y:1.813)
		leftArm.addSubview(topArm2)
		viewsByName["top arm 2"] = topArm2

		let rightLeg = UIView()
		rightLeg.bounds = CGRect(x:0, y:0, width:20.0, height:19.0)
		rightLeg.layer.anchorPoint = CGPoint(x:0.259, y:-0.402)
		rightLeg.layer.position = CGPoint(x:21.405, y:49.708)
		fullBody.addSubview(rightLeg)
		viewsByName["RightLeg"] = rightLeg

		let topLeg = UIImageView()
		topLeg.bounds = CGRect(x:0, y:0, width:20.0, height:16.0)
		topLeg.layer.anchorPoint = CGPoint(x:0.481, y:0.149)
		var imgTopLeg: UIImage!
		if let imagePath = bundle.pathForResource("top leg.png", ofType:nil) {
			imgTopLeg = UIImage(contentsOfFile:imagePath)
		}
		topLeg.image = imgTopLeg
		topLeg.contentMode = .Center;
		topLeg.layer.position = CGPoint(x:6.422, y:-7.090)
		rightLeg.addSubview(topLeg)
		viewsByName["top leg"] = topLeg

		let bottomLeg = UIImageView()
		bottomLeg.bounds = CGRect(x:0, y:0, width:20.0, height:19.0)
		bottomLeg.layer.anchorPoint = CGPoint(x:0.332, y:0.118)
		var imgBottomLeg: UIImage!
		if let imagePath = bundle.pathForResource("bottom leg.png", ofType:nil) {
			imgBottomLeg = UIImage(contentsOfFile:imagePath)
		}
		bottomLeg.image = imgBottomLeg
		bottomLeg.contentMode = .Center;
		bottomLeg.layer.position = CGPoint(x:6.641, y:2.250)
		rightLeg.addSubview(bottomLeg)
		viewsByName["bottom leg"] = bottomLeg

		let leftLeg = UIView()
		leftLeg.bounds = CGRect(x:0, y:0, width:20.0, height:19.0)
		leftLeg.layer.anchorPoint = CGPoint(x:0.259, y:-0.402)
		leftLeg.layer.position = CGPoint(x:21.461, y:49.599)
		fullBody.addSubview(leftLeg)
		viewsByName["LeftLeg"] = leftLeg

		let topLeg2 = UIImageView()
		topLeg2.bounds = CGRect(x:0, y:0, width:20.0, height:16.0)
		topLeg2.layer.anchorPoint = CGPoint(x:0.481, y:0.149)
		topLeg2.image = imgTopLeg
		topLeg2.contentMode = .Center;
		topLeg2.layer.position = CGPoint(x:6.422, y:-7.090)
		leftLeg.addSubview(topLeg2)
		viewsByName["top leg 2"] = topLeg2

		let bottomLeg2 = UIImageView()
		bottomLeg2.bounds = CGRect(x:0, y:0, width:20.0, height:19.0)
		bottomLeg2.layer.anchorPoint = CGPoint(x:0.332, y:0.118)
		bottomLeg2.image = imgBottomLeg
		bottomLeg2.contentMode = .Center;
		bottomLeg2.layer.position = CGPoint(x:6.641, y:2.250)
		leftLeg.addSubview(bottomLeg2)
		viewsByName["bottom leg 2"] = bottomLeg2

		let body = UIImageView()
		body.bounds = CGRect(x:0, y:0, width:28.0, height:29.0)
		var imgBody: UIImage!
		if let imagePath = bundle.pathForResource("body.png", ofType:nil) {
			imgBody = UIImage(contentsOfFile:imagePath)
		}
		body.image = imgBody
		body.contentMode = .Center;
		body.layer.position = CGPoint(x:23.143, y:40.058)
		fullBody.addSubview(body)
		viewsByName["body"] = body

		let rightArm = UIView()
		rightArm.bounds = CGRect(x:0, y:0, width:12.0, height:22.2)
		rightArm.layer.anchorPoint = CGPoint(x:0.473, y:0.081)
		rightArm.layer.position = CGPoint(x:21.358, y:31.251)
		fullBody.addSubview(rightArm)
		viewsByName["RightArm"] = rightArm

		let bottomArm = UIImageView()
		bottomArm.bounds = CGRect(x:0, y:0, width:11.0, height:14.0)
		bottomArm.layer.anchorPoint = CGPoint(x:0.502, y:0.177)
		bottomArm.image = imgBottomArm
		bottomArm.contentMode = .Center;
		bottomArm.layer.position = CGPoint(x:6.060, y:10.714)
		rightArm.addSubview(bottomArm)
		viewsByName["bottom arm"] = bottomArm

		let topArm = UIImageView()
		topArm.bounds = CGRect(x:0, y:0, width:12.0, height:11.0)
		topArm.layer.anchorPoint = CGPoint(x:0.487, y:0.165)
		topArm.image = imgTopArm
		topArm.contentMode = .Center;
		topArm.layer.position = CGPoint(x:5.840, y:1.813)
		rightArm.addSubview(topArm)
		viewsByName["top arm"] = topArm

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
		let easeInOutTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
		let linearTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
		if let complete = completion {
			let representativeAnimation = CABasicAnimation(keyPath: "not.a.real.key")
			representativeAnimation.duration = 0.910
			representativeAnimation.delegate = self
			self.layer.addAnimation(representativeAnimation, forKey: "Falling")
			self.animationCompletions[layer.animationForKey("Falling")!] = complete
		}

		let rightLegRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		rightLegRotationAnimation.duration = 0.100
		rightLegRotationAnimation.values = [0.000 as Float, -0.512 as Float, 0.000 as Float]
		rightLegRotationAnimation.keyTimes = [0.000 as Float, 0.500 as Float, 1.000 as Float]
		rightLegRotationAnimation.timingFunctions = [easeInOutTiming, easeInOutTiming]
		rightLegRotationAnimation.repeatCount = HUGE
		rightLegRotationAnimation.beginTime = beginTime
		rightLegRotationAnimation.fillMode = fillMode
		rightLegRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["RightLeg"]?.layer.addAnimation(rightLegRotationAnimation, forKey:"falling_Rotation")

		let leftLegRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		leftLegRotationAnimation.duration = 0.100
		leftLegRotationAnimation.values = [0.000 as Float, 0.250 as Float, 0.000 as Float]
		leftLegRotationAnimation.keyTimes = [0.000 as Float, 0.500 as Float, 1.000 as Float]
		leftLegRotationAnimation.timingFunctions = [easeInOutTiming, easeInOutTiming]
		leftLegRotationAnimation.repeatCount = HUGE
		leftLegRotationAnimation.beginTime = beginTime
		leftLegRotationAnimation.fillMode = fillMode
		leftLegRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["LeftLeg"]?.layer.addAnimation(leftLegRotationAnimation, forKey:"falling_Rotation")

		let fullBodyRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		fullBodyRotationAnimation.duration = 0.910
		fullBodyRotationAnimation.values = [-0.266 as Float, -0.266 as Float]
		fullBodyRotationAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		fullBodyRotationAnimation.timingFunctions = [linearTiming]
		fullBodyRotationAnimation.beginTime = beginTime
		fullBodyRotationAnimation.fillMode = fillMode
		fullBodyRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["FullBody"]?.layer.addAnimation(fullBodyRotationAnimation, forKey:"falling_Rotation")

		let bottomLeg2RotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		bottomLeg2RotationAnimation.duration = 0.100
		bottomLeg2RotationAnimation.values = [0.000 as Float, 0.494 as Float, 0.000 as Float]
		bottomLeg2RotationAnimation.keyTimes = [0.000 as Float, 0.500 as Float, 1.000 as Float]
		bottomLeg2RotationAnimation.timingFunctions = [easeInOutTiming, easeInOutTiming]
		bottomLeg2RotationAnimation.repeatCount = HUGE
		bottomLeg2RotationAnimation.beginTime = beginTime
		bottomLeg2RotationAnimation.fillMode = fillMode
		bottomLeg2RotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["bottom leg 2"]?.layer.addAnimation(bottomLeg2RotationAnimation, forKey:"falling_Rotation")

		let rightArmRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		rightArmRotationAnimation.duration = 0.910
		rightArmRotationAnimation.values = [0.000 as Float, -2.726 as Float, -3.263 as Float, -3.015 as Float, -2.901 as Float, -2.278 as Float, -2.776 as Float, 0.000 as Float]
		rightArmRotationAnimation.keyTimes = [0.000 as Float, 0.055 as Float, 0.110 as Float, 0.187 as Float, 0.220 as Float, 0.308 as Float, 0.418 as Float, 1.000 as Float]
		rightArmRotationAnimation.timingFunctions = [easeInOutTiming, easeInOutTiming, easeInOutTiming, easeInOutTiming, easeInOutTiming, easeInOutTiming, easeInOutTiming]
		rightArmRotationAnimation.repeatCount = HUGE
		rightArmRotationAnimation.beginTime = beginTime
		rightArmRotationAnimation.fillMode = fillMode
		rightArmRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["RightArm"]?.layer.addAnimation(rightArmRotationAnimation, forKey:"falling_Rotation")

		let heliHairOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		heliHairOpacityAnimation.duration = 0.910
		heliHairOpacityAnimation.values = [0.000 as Float, 0.000 as Float]
		heliHairOpacityAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		heliHairOpacityAnimation.timingFunctions = [linearTiming]
		heliHairOpacityAnimation.beginTime = beginTime
		heliHairOpacityAnimation.fillMode = fillMode
		heliHairOpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["heliHair"]?.layer.addAnimation(heliHairOpacityAnimation, forKey:"falling_Opacity")

		let bottomLegRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		bottomLegRotationAnimation.duration = 0.100
		bottomLegRotationAnimation.values = [0.000 as Float, 0.143 as Float, 0.000 as Float]
		bottomLegRotationAnimation.keyTimes = [0.000 as Float, 0.500 as Float, 1.000 as Float]
		bottomLegRotationAnimation.timingFunctions = [easeInOutTiming, easeInOutTiming]
		bottomLegRotationAnimation.repeatCount = HUGE
		bottomLegRotationAnimation.beginTime = beginTime
		bottomLegRotationAnimation.fillMode = fillMode
		bottomLegRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["bottom leg"]?.layer.addAnimation(bottomLegRotationAnimation, forKey:"falling_Rotation")
	}

	func removeFallingAnimation() {
		self.layer.removeAnimationForKey("Falling")
		self.viewsByName["RightLeg"]?.layer.removeAnimationForKey("falling_Rotation")
		self.viewsByName["LeftLeg"]?.layer.removeAnimationForKey("falling_Rotation")
		self.viewsByName["FullBody"]?.layer.removeAnimationForKey("falling_Rotation")
		self.viewsByName["bottom leg 2"]?.layer.removeAnimationForKey("falling_Rotation")
		self.viewsByName["RightArm"]?.layer.removeAnimationForKey("falling_Rotation")
		self.viewsByName["heliHair"]?.layer.removeAnimationForKey("falling_Opacity")
		self.viewsByName["bottom leg"]?.layer.removeAnimationForKey("falling_Rotation")
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
		let easeInOutTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
		let instantTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
		if let complete = completion {
			let representativeAnimation = CABasicAnimation(keyPath: "not.a.real.key")
			representativeAnimation.duration = 0.500
			representativeAnimation.delegate = self
			self.layer.addAnimation(representativeAnimation, forKey: "Flying")
			self.animationCompletions[layer.animationForKey("Flying")!] = complete
		}

		let rightLegRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		rightLegRotationAnimation.duration = 0.200
		rightLegRotationAnimation.values = [0.000 as Float, 0.122 as Float, 0.000 as Float]
		rightLegRotationAnimation.keyTimes = [0.000 as Float, 0.500 as Float, 1.000 as Float]
		rightLegRotationAnimation.timingFunctions = [easeInOutTiming, easeInOutTiming]
		rightLegRotationAnimation.repeatCount = HUGE
		rightLegRotationAnimation.beginTime = beginTime
		rightLegRotationAnimation.fillMode = fillMode
		rightLegRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["RightLeg"]?.layer.addAnimation(rightLegRotationAnimation, forKey:"flying_Rotation")

		let leftLegRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		leftLegRotationAnimation.duration = 0.200
		leftLegRotationAnimation.values = [0.000 as Float, -0.105 as Float, 0.000 as Float]
		leftLegRotationAnimation.keyTimes = [0.000 as Float, 0.500 as Float, 1.000 as Float]
		leftLegRotationAnimation.timingFunctions = [easeInOutTiming, easeInOutTiming]
		leftLegRotationAnimation.repeatCount = HUGE
		leftLegRotationAnimation.beginTime = beginTime
		leftLegRotationAnimation.fillMode = fillMode
		leftLegRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["LeftLeg"]?.layer.addAnimation(leftLegRotationAnimation, forKey:"flying_Rotation")

		let fullBodyRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		fullBodyRotationAnimation.duration = 0.500
		fullBodyRotationAnimation.values = [0.237 as Float, 0.237 as Float, 0.000 as Float]
		fullBodyRotationAnimation.keyTimes = [0.000 as Float, 0.999 as Float, 1.000 as Float]
		fullBodyRotationAnimation.timingFunctions = [instantTiming, instantTiming]
		fullBodyRotationAnimation.repeatCount = HUGE
		fullBodyRotationAnimation.beginTime = beginTime
		fullBodyRotationAnimation.fillMode = fillMode
		fullBodyRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["FullBody"]?.layer.addAnimation(fullBodyRotationAnimation, forKey:"flying_Rotation")

		let rightArmRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		rightArmRotationAnimation.duration = 0.200
		rightArmRotationAnimation.values = [0.000 as Float, -0.187 as Float, 0.000 as Float]
		rightArmRotationAnimation.keyTimes = [0.000 as Float, 0.500 as Float, 1.000 as Float]
		rightArmRotationAnimation.timingFunctions = [easeInOutTiming, easeInOutTiming]
		rightArmRotationAnimation.repeatCount = HUGE
		rightArmRotationAnimation.beginTime = beginTime
		rightArmRotationAnimation.fillMode = fillMode
		rightArmRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["RightArm"]?.layer.addAnimation(rightArmRotationAnimation, forKey:"flying_Rotation")

		let heliHairTranslationXAnimation = CAKeyframeAnimation(keyPath: "transform.translation.x")
		heliHairTranslationXAnimation.duration = 0.200
		heliHairTranslationXAnimation.values = [0.000 as Float, -15.034 as Float, -14.604 as Float]
		heliHairTranslationXAnimation.keyTimes = [0.000 as Float, 0.500 as Float, 1.000 as Float]
		heliHairTranslationXAnimation.timingFunctions = [easeInOutTiming, easeInOutTiming]
		heliHairTranslationXAnimation.repeatCount = HUGE
		heliHairTranslationXAnimation.beginTime = beginTime
		heliHairTranslationXAnimation.fillMode = fillMode
		heliHairTranslationXAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["heliHair"]?.layer.addAnimation(heliHairTranslationXAnimation, forKey:"flying_TranslationX")

		let heliHairTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		heliHairTranslationYAnimation.duration = 0.200
		heliHairTranslationYAnimation.values = [0.000 as Float, -0.436 as Float, 0.000 as Float]
		heliHairTranslationYAnimation.keyTimes = [0.000 as Float, 0.500 as Float, 1.000 as Float]
		heliHairTranslationYAnimation.timingFunctions = [easeInOutTiming, easeInOutTiming]
		heliHairTranslationYAnimation.repeatCount = HUGE
		heliHairTranslationYAnimation.beginTime = beginTime
		heliHairTranslationYAnimation.fillMode = fillMode
		heliHairTranslationYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["heliHair"]?.layer.addAnimation(heliHairTranslationYAnimation, forKey:"flying_TranslationY")
	}

	func removeFlyingAnimation() {
		self.layer.removeAnimationForKey("Flying")
		self.viewsByName["RightLeg"]?.layer.removeAnimationForKey("flying_Rotation")
		self.viewsByName["LeftLeg"]?.layer.removeAnimationForKey("flying_Rotation")
		self.viewsByName["FullBody"]?.layer.removeAnimationForKey("flying_Rotation")
		self.viewsByName["RightArm"]?.layer.removeAnimationForKey("flying_Rotation")
		self.viewsByName["heliHair"]?.layer.removeAnimationForKey("flying_TranslationX")
		self.viewsByName["heliHair"]?.layer.removeAnimationForKey("flying_TranslationY")
	}

	// - MARK: intro

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

		let heliHairOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		heliHairOpacityAnimation.duration = 0.000
		heliHairOpacityAnimation.values = [0.000 as Float]
		heliHairOpacityAnimation.keyTimes = [0.000 as Float]
		heliHairOpacityAnimation.beginTime = beginTime
		heliHairOpacityAnimation.fillMode = fillMode
		heliHairOpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["heliHair"]?.layer.addAnimation(heliHairOpacityAnimation, forKey:"intro_Opacity")
	}

	func removeIntroAnimation() {
		self.layer.removeAnimationForKey("Intro")
		self.viewsByName["heliHair"]?.layer.removeAnimationForKey("intro_Opacity")
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
		self.layer.removeAnimationForKey("Falling")
		self.layer.removeAnimationForKey("Flying")
		self.layer.removeAnimationForKey("Intro")
	}
}