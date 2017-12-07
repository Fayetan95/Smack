//
//  CircleImage.swift
//  Smack
//
//  Created by Tan Juat Fwee on 7/12/17.
//  Copyright © 2017 Faye Tan. All rights reserved.
//

import UIKit

@IBDesignable
class CircleImage: UIImageView {

    override func awakeFromNib() {
        setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
}
