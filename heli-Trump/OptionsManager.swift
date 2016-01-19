//
//  OptionsManager.swift
//  heli-Trump
//
//  Created by Charlie Morris on 12/01/2016.
//  Copyright © 2016 chtmorris. All rights reserved.
//

import Foundation
import UIKit

class OptionsManager {
    
    static let sharedInstance = OptionsManager()
    
    var characterSelected: Characters = Characters.Trump
    
    init() {
    }
    
    func setCharacter(character:Characters){
        self.characterSelected = character
    }
    
}