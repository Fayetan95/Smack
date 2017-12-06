//
//  AvatarCell.swift
//  Smack
//
//  Created by Tan Juat Fwee on 6/12/17.
//  Copyright © 2017 Faye Tan. All rights reserved.
//

import UIKit

class AvatarCell: UICollectionViewCell {
    
    // Outlets
    @IBOutlet weak var avatarImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
        
    }
    
    func setupView() {
        self.layer.backgroundColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
    }
}
