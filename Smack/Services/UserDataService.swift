//
//  UserDataService.swift
//  Smack
//
//  Created by Tan Juat Fwee on 5/12/17.
//  Copyright © 2017 Faye Tan. All rights reserved.
//

import Foundation

class UserDataService {
    static let instanace = UserDataService()
    
    public private(set) var id = ""   // public readable, but only this file can set it
    public private(set) var avatarColor = ""
    public private(set) var avatarName = ""
    public private(set) var email = ""
    public private(set) var name = ""

    func setUserData(id: String, color: String, avatarName: String, email: String, name: String) {
        self.id = id
        self.avatarColor = color
        self.avatarName = avatarName
        self.email = email
        self.name = name
        
    }
    
    func setAvatarName(avatarName: String) {
        self.avatarName = avatarName
    }
}

