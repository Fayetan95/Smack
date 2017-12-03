//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Tan Juat Fwee on 3/12/17.
//  Copyright © 2017 Faye Tan. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

     }

    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    
 

}
