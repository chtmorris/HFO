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
}
