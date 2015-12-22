//
//  Characters.swift
//  heli-Trump
//
//  Created by Charlie Morris on 22/11/2015.
//  Copyright © 2015 chtmorris. All rights reserved.
//

import Foundation
import UIKit

enum Characters:Int {
    case Trump = 0, Ben, Hilary
    
    var title:String {
        switch self {
        case .Trump:
            return "Trump"
        case .Ben:
            return "Ben"
        case .Hilary:
            return "Hilary"
        }
    }
    
    var background:UIImage {
        switch self {
        case .Trump:
            return UIImage(named: "TrumpBackground")!
        case .Ben:
            return UIImage(named: "BenBackground")!
        case .Hilary:
            return UIImage(named: "HillaryBackground")!
        }
    }
    
    var obstacle:UIImage {
        switch self {
        case .Trump:
            return UIImage(named: "TrumpObstacle")!
        case .Ben:
            return UIImage(named: "BenObstacle")!
        case .Hilary:
            return UIImage(named: "HillaryObstacle")!
        }
    }
    
//    var image {
//        switch self {
//        case .Trump:
//            return TrumpCartoonView
//        case .Ben:
//            return BenHeliView
//        case .Hilary:
//            return HeliHillyView
//        }
//    }
    
}
