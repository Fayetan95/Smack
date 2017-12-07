//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Tan Juat Fwee on 3/12/17.
//  Copyright © 2017 Faye Tan. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    // Outlets
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    // Variables
    var avatarName = "profileDefault"
    var avatarColor = "[0.5, 0.5, 0.5, 1]"
    
    override func viewDidLoad() {
        super.viewDidLoad()

     }
    
    override func viewDidAppear(_ animated: Bool) {
        if UserDataService.instanace.avatarName != "" {
            userImg.image = UIImage(named: UserDataService.instanace.avatarName)
            avatarName = UserDataService.instanace.avatarName
        }
    }

    @IBAction func createAccntPressed(_ sender: Any) {
        guard let name = usernameTxt.text , usernameTxt.text != "" else {return}
        guard let email = emailTxt.text , emailTxt.text != "" else {return}
        guard let pass = passTxt.text , passTxt.text != "" else {return}

        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            if success {
                print("registered user")
                AuthService.instance.loginUser(email: email, password: pass, completion: { (success) in
                    if success {
                        print("logged in user!", AuthService.instance.authToken)
                        
                        AuthService.instance.createUser(name: name, email: email, avatarName: self.avatarName, avatarColor: self.avatarColor, completion: { (success) in
                            if success {
                                print("Created User!")
                                print(UserDataService.instanace.name, UserDataService.instanace.avatarName)
                                self.performSegue(withIdentifier: UNWIND, sender: nil)   // and if success, it will go back to login screen
                            }
                        })
                    }
                })
            }
        }
    }
    
    @IBAction func pickAvatarPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_AVATAR_PICKER, sender: nil)
    }
    
    @IBAction func pickBGColorPressed(_ sender: Any) {
    }
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    
 

}
