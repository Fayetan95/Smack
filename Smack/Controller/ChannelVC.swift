//
//  ChannelVC.swift
//  Smack
//
//  Created by Tan Juat Fwee on 30/11/17.
//  Copyright © 2017 Faye Tan. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60

    }


}
