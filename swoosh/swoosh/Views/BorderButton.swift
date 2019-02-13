//
//  BorderButton.swift
//  swoosh
//
//  Created by Amir on 2/13/19.
//  Copyright © 2019 Amir Sharafkar. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 1
    }

}
