//
// MexicanView.swift
// Generated by Core Animator version 1.1.1 on 22/12/2015.
//
// DO NOT MODIFY THIS FILE. IT IS AUTO-GENERATED AND WILL BE OVERWRITTEN
//

import UIKit

@IBDesignable
class MexicanView : UIView {

	var viewsByName: [String : UIView]!

	// - MARK: Life Cycle

	convenience init() {
		self.init(frame: CGRect(x: 0, y: 0, width: 56, height: 95))
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
		__scaling__.bounds = CGRect(x:0, y:0, width:56, height:95)
		__scaling__.center = CGPoint(x:28.3, y:47.9)
		self.addSubview(__scaling__)
		viewsByName["__scaling__"] = __scaling__

		let mexicanLeftArm = UIView()
		mexicanLeftArm.bounds = CGRect(x:0, y:0, width:21.5, height:32.1)
		mexicanLeftArm.layer.anchorPoint = CGPoint(x:0.901, y:0.099)
		mexicanLeftArm.layer.position = CGPoint(x:19.376, y:34.335)
		mexicanLeftArm.transform = CGAffineTransformMakeRotation(0.032)
		__scaling__.addSubview(mexicanLeftArm)
		viewsByName["MexicanLeftArm"] = mexicanLeftArm

		let mexicanLowerLeftArm = UIImageView()
		mexicanLowerLeftArm.bounds = CGRect(x:0, y:0, width:17.0, height:24.0)
		mexicanLowerLeftArm.layer.anchorPoint = CGPoint(x:0.702, y:0.191)
		var imgMexicanLowerLeftArm: UIImage!
		if let imagePath = bundle.pathForResource("MexicanLowerLeftArm.png", ofType:nil) {
			imgMexicanLowerLeftArm = UIImage(contentsOfFile:imagePath)
		}
		mexicanLowerLeftArm.image = imgMexicanLowerLeftArm
		mexicanLowerLeftArm.contentMode = .Center;
		mexicanLowerLeftArm.layer.position = CGPoint(x:11.935, y:12.664)
		mexicanLeftArm.addSubview(mexicanLowerLeftArm)
		viewsByName["MexicanLowerLeftArm"] = mexicanLowerLeftArm

		let mexicanUpperLeftArm = UIImageView()
		mexicanUpperLeftArm.bounds = CGRect(x:0, y:0, width:13.0, height:15.0)
		mexicanUpperLeftArm.layer.anchorPoint = CGPoint(x:0.739, y:0.307)
		var imgMexicanUpperLeftArm: UIImage!
		if let imagePath = bundle.pathForResource("MexicanUpperLeftArm.png", ofType:nil) {
			imgMexicanUpperLeftArm = UIImage(contentsOfFile:imagePath)
		}
		mexicanUpperLeftArm.image = imgMexicanUpperLeftArm
		mexicanUpperLeftArm.contentMode = .Center;
		mexicanUpperLeftArm.layer.position = CGPoint(x:18.109, y:4.610)
		mexicanLeftArm.addSubview(mexicanUpperLeftArm)
		viewsByName["MexicanUpperLeftArm"] = mexicanUpperLeftArm

		let mexicanRightArm = UIView()
		mexicanRightArm.bounds = CGRect(x:0, y:0, width:18.6, height:29.3)
		mexicanRightArm.layer.anchorPoint = CGPoint(x:0.158, y:0.792)
		mexicanRightArm.layer.position = CGPoint(x:38.212, y:37.413)
		mexicanRightArm.transform = CGAffineTransformMakeRotation(0.150)
		__scaling__.addSubview(mexicanRightArm)
		viewsByName["MexicanRightArm"] = mexicanRightArm

		let mexicanLowerRightArm = UIImageView()
		mexicanLowerRightArm.bounds = CGRect(x:0, y:0, width:16.0, height:20.0)
		mexicanLowerRightArm.layer.anchorPoint = CGPoint(x:0.305, y:0.688)
		var imgMexicanLowerRightArm: UIImage!
		if let imagePath = bundle.pathForResource("MexicanLowerRightArm.png", ofType:nil) {
			imgMexicanLowerRightArm = UIImage(contentsOfFile:imagePath)
		}
		mexicanLowerRightArm.image = imgMexicanLowerRightArm
		mexicanLowerRightArm.contentMode = .Center;
		mexicanLowerRightArm.layer.position = CGPoint(x:7.471, y:13.761)
		mexicanRightArm.addSubview(mexicanLowerRightArm)
		viewsByName["MexicanLowerRightArm"] = mexicanLowerRightArm

		let mexicanUpperRightArm = UIImageView()
		mexicanUpperRightArm.bounds = CGRect(x:0, y:0, width:10.0, height:14.0)
		mexicanUpperRightArm.layer.anchorPoint = CGPoint(x:0.260, y:0.704)
		var imgMexicanUpperRightArm: UIImage!
		if let imagePath = bundle.pathForResource("MexicanUpperRightArm.png", ofType:nil) {
			imgMexicanUpperRightArm = UIImage(contentsOfFile:imagePath)
		}
		mexicanUpperRightArm.image = imgMexicanUpperRightArm
		mexicanUpperRightArm.contentMode = .Center;
		mexicanUpperRightArm.layer.position = CGPoint(x:2.601, y:25.196)
		mexicanRightArm.addSubview(mexicanUpperRightArm)
		viewsByName["MexicanUpperRightArm"] = mexicanUpperRightArm

		let mexicaHead = UIImageView()
		mexicaHead.bounds = CGRect(x:0, y:0, width:49.0, height:33.0)
		mexicaHead.layer.anchorPoint = CGPoint(x:0.505, y:0.893)
		var imgMexicaHead: UIImage!
		if let imagePath = bundle.pathForResource("MexicaHead.png", ofType:nil) {
			imgMexicaHead = UIImage(contentsOfFile:imagePath)
		}
		mexicaHead.image = imgMexicaHead
		mexicaHead.contentMode = .Center;
		mexicaHead.layer.position = CGPoint(x:27.313, y:31.405)
		__scaling__.addSubview(mexicaHead)
		viewsByName["MexicaHead"] = mexicaHead

		let mexicanBody = UIImageView()
		mexicanBody.bounds = CGRect(x:0, y:0, width:25.0, height:64.0)
		var imgMexicanBody: UIImage!
		if let imagePath = bundle.pathForResource("MexicanBody.png", ofType:nil) {
			imgMexicanBody = UIImage(contentsOfFile:imagePath)
		}
		mexicanBody.image = imgMexicanBody
		mexicanBody.contentMode = .Center;
		mexicanBody.layer.position = CGPoint(x:29.110, y:62.392)
		__scaling__.addSubview(mexicanBody)
		viewsByName["MexicanBody"] = mexicanBody

		self.viewsByName = viewsByName
	}

	// - MARK: ememyAnimate

	func addEmemyAnimateAnimation() {
		addEmemyAnimateAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false)
	}

	func addEmemyAnimateAnimation(removedOnCompletion removedOnCompletion: Bool) {
		addEmemyAnimateAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion)
	}

	func addEmemyAnimateAnimationWithBeginTime(beginTime: CFTimeInterval, fillMode: String, removedOnCompletion: Bool) {
		let easeInOutTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)

		let mexicaHeadRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		mexicaHeadRotationAnimation.duration = 1.000
		mexicaHeadRotationAnimation.values = [0.000 as Float, -0.103 as Float, 0.000 as Float]
		mexicaHeadRotationAnimation.keyTimes = [0.000 as Float, 0.325 as Float, 1.000 as Float]
		mexicaHeadRotationAnimation.timingFunctions = [easeInOutTiming, easeInOutTiming]
		mexicaHeadRotationAnimation.repeatCount = HUGE
		mexicaHeadRotationAnimation.beginTime = beginTime
		mexicaHeadRotationAnimation.fillMode = fillMode
		mexicaHeadRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["MexicaHead"]?.layer.addAnimation(mexicaHeadRotationAnimation, forKey:"ememyAnimate_Rotation")

		let mexicanLowerLeftArmRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		mexicanLowerLeftArmRotationAnimation.duration = 1.000
		mexicanLowerLeftArmRotationAnimation.values = [0.000 as Float, -1.465 as Float, 0.000 as Float]
		mexicanLowerLeftArmRotationAnimation.keyTimes = [0.000 as Float, 0.325 as Float, 1.000 as Float]
		mexicanLowerLeftArmRotationAnimation.timingFunctions = [easeInOutTiming, easeInOutTiming]
		mexicanLowerLeftArmRotationAnimation.repeatCount = HUGE
		mexicanLowerLeftArmRotationAnimation.beginTime = beginTime
		mexicanLowerLeftArmRotationAnimation.fillMode = fillMode
		mexicanLowerLeftArmRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["MexicanLowerLeftArm"]?.layer.addAnimation(mexicanLowerLeftArmRotationAnimation, forKey:"ememyAnimate_Rotation")

		let mexicanRightArmRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		mexicanRightArmRotationAnimation.duration = 1.000
		mexicanRightArmRotationAnimation.values = [0.150 as Float, 1.079 as Float, 0.150 as Float]
		mexicanRightArmRotationAnimation.keyTimes = [0.000 as Float, 0.500 as Float, 1.000 as Float]
		mexicanRightArmRotationAnimation.timingFunctions = [easeInOutTiming, easeInOutTiming]
		mexicanRightArmRotationAnimation.repeatCount = HUGE
		mexicanRightArmRotationAnimation.beginTime = beginTime
		mexicanRightArmRotationAnimation.fillMode = fillMode
		mexicanRightArmRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["MexicanRightArm"]?.layer.addAnimation(mexicanRightArmRotationAnimation, forKey:"ememyAnimate_Rotation")

		let mexicanRightArmTranslationXAnimation = CAKeyframeAnimation(keyPath: "transform.translation.x")
		mexicanRightArmTranslationXAnimation.duration = 1.000
		mexicanRightArmTranslationXAnimation.values = [0.000 as Float, -2.896 as Float, 0.000 as Float]
		mexicanRightArmTranslationXAnimation.keyTimes = [0.000 as Float, 0.325 as Float, 1.000 as Float]
		mexicanRightArmTranslationXAnimation.timingFunctions = [easeInOutTiming, easeInOutTiming]
		mexicanRightArmTranslationXAnimation.repeatCount = HUGE
		mexicanRightArmTranslationXAnimation.beginTime = beginTime
		mexicanRightArmTranslationXAnimation.fillMode = fillMode
		mexicanRightArmTranslationXAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["MexicanRightArm"]?.layer.addAnimation(mexicanRightArmTranslationXAnimation, forKey:"ememyAnimate_TranslationX")

		let mexicanRightArmTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		mexicanRightArmTranslationYAnimation.duration = 1.000
		mexicanRightArmTranslationYAnimation.values = [0.000 as Float, 0.940 as Float, 0.000 as Float]
		mexicanRightArmTranslationYAnimation.keyTimes = [0.000 as Float, 0.325 as Float, 1.000 as Float]
		mexicanRightArmTranslationYAnimation.timingFunctions = [easeInOutTiming, easeInOutTiming]
		mexicanRightArmTranslationYAnimation.repeatCount = HUGE
		mexicanRightArmTranslationYAnimation.beginTime = beginTime
		mexicanRightArmTranslationYAnimation.fillMode = fillMode
		mexicanRightArmTranslationYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["MexicanRightArm"]?.layer.addAnimation(mexicanRightArmTranslationYAnimation, forKey:"ememyAnimate_TranslationY")

		let mexicanLowerRightArmRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		mexicanLowerRightArmRotationAnimation.duration = 1.000
		mexicanLowerRightArmRotationAnimation.values = [0.000 as Float, -3.198 as Float, 0.000 as Float]
		mexicanLowerRightArmRotationAnimation.keyTimes = [0.000 as Float, 0.500 as Float, 1.000 as Float]
		mexicanLowerRightArmRotationAnimation.timingFunctions = [easeInOutTiming, easeInOutTiming]
		mexicanLowerRightArmRotationAnimation.repeatCount = HUGE
		mexicanLowerRightArmRotationAnimation.beginTime = beginTime
		mexicanLowerRightArmRotationAnimation.fillMode = fillMode
		mexicanLowerRightArmRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["MexicanLowerRightArm"]?.layer.addAnimation(mexicanLowerRightArmRotationAnimation, forKey:"ememyAnimate_Rotation")

		let mexicanBodyTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		mexicanBodyTranslationYAnimation.duration = 1.000
		mexicanBodyTranslationYAnimation.values = [0.000 as Float, -1.000 as Float, 0.000 as Float]
		mexicanBodyTranslationYAnimation.keyTimes = [0.000 as Float, 0.325 as Float, 1.000 as Float]
		mexicanBodyTranslationYAnimation.timingFunctions = [easeInOutTiming, easeInOutTiming]
		mexicanBodyTranslationYAnimation.repeatCount = HUGE
		mexicanBodyTranslationYAnimation.beginTime = beginTime
		mexicanBodyTranslationYAnimation.fillMode = fillMode
		mexicanBodyTranslationYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["MexicanBody"]?.layer.addAnimation(mexicanBodyTranslationYAnimation, forKey:"ememyAnimate_TranslationY")
	}

	func removeEmemyAnimateAnimation() {
		self.viewsByName["MexicaHead"]?.layer.removeAnimationForKey("ememyAnimate_Rotation")
		self.viewsByName["MexicanLowerLeftArm"]?.layer.removeAnimationForKey("ememyAnimate_Rotation")
		self.viewsByName["MexicanRightArm"]?.layer.removeAnimationForKey("ememyAnimate_Rotation")
		self.viewsByName["MexicanRightArm"]?.layer.removeAnimationForKey("ememyAnimate_TranslationX")
		self.viewsByName["MexicanRightArm"]?.layer.removeAnimationForKey("ememyAnimate_TranslationY")
		self.viewsByName["MexicanLowerRightArm"]?.layer.removeAnimationForKey("ememyAnimate_Rotation")
		self.viewsByName["MexicanBody"]?.layer.removeAnimationForKey("ememyAnimate_TranslationY")
	}

	func removeAllAnimations() {
		for subview in viewsByName.values {
			subview.layer.removeAllAnimations()
		}
	}
}