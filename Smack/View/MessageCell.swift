//
//  MessageCell.swift
//  Smack
//
//  Created by Tan Juat Fwee on 12/12/17.
//  Copyright © 2017 Faye Tan. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    // Outlets
    @IBOutlet weak var userImg: CircleImage!

    @IBOutlet weak var timeStampLbl: UILabel!
    @IBOutlet weak var messaageBodyLbl: UILabel!
    @IBOutlet weak var userNameLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(message: Message) {
        messaageBodyLbl.text = message.message
        userNameLbl.text = message.userName
        userImg.image = UIImage(named: message.userAvatar)
        userImg.backgroundColor =  UserDataService.instanace.returnUIColor(components: message.userAvatarColor)
    }
}
