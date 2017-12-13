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
        
        // TimeStamp ... iso8601? - 2017-07-13T21:49:25.590Z
        // apple has a buildin iso8601 covertor, but not handling the milli seconds
        
        guard var isoDate = message.timeStamp else { return }
        let end = isoDate.index(isoDate.endIndex, offsetBy: -5)
        isoDate = isoDate.substring(to: end)

        let isoFormatter = ISO8601DateFormatter()
        let chatDate = isoFormatter.date(from: isoDate.appending("Z"))

        let newFormatter = DateFormatter()
        newFormatter.dateFormat = "MMM d, h:mm a"
        
        if let finalDate = chatDate {
            let finalDate = newFormatter.string(from: finalDate)
            timeStampLbl.text = finalDate
        }
     }
}











