//
//  CharacterCell.swift
//  heli-Trump
//
//  Created by Charlie Morris on 05/02/2016.
//  Copyright © 2016 chtmorris. All rights reserved.
//

import UIKit

class CharacterCell: UICollectionViewCell {
    
    @IBOutlet weak var characterImageView: UIImageView!

    func configure(image:UIImage?) {
        characterImageView.image = image
    }
    
}