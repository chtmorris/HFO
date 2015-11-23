//
//  Helpers.swift
//  heli-Trump
//
//  Created by Charlie Morris on 14/11/2015.
//  Copyright © 2015 chtmorris. All rights reserved.
//

import Foundation
import UIKit

class Helper{
    
    static func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
}