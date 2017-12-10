//
//  ChannelVC.swift
//  Smack
//
//  Created by Tan Juat Fwee on 30/11/17.
//  Copyright © 2017 Faye Tan. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    // Outlets
    @IBOutlet weak var loginBtn: UIButton!
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue){}
    @IBOutlet weak var userimg: CircleImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        
        NotificationCenter.default.addObserver(self, selector: #selector(ChannelVC.userDataDidChange(_:)), name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
    }
    
    @objc func userDataDidChange(_ notif: Notification) {
        if AuthService.instance.isLoggedIn {
            loginBtn.setTitle(UserDataService.instanace.name, for: .normal)
            userimg.image = UIImage(named: UserDataService.instanace.avatarName)
            userimg.backgroundColor = UserDataService.instanace.returnUIColor(components: UserDataService.instanace.avatarColor)
        } else {
            loginBtn.setTitle("Login", for: .normal)
            userimg.image = UIImage(named: "menuProfileIcon")
            userimg.backgroundColor = UIColor.clear
        }
    }

    @IBAction func loginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    
}
