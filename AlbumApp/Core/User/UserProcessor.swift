//
//  UserProcessor.swift
//  AlbumApp
//
//  Created by Ahmed on 8/23/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import Foundation
import Promises
class UserProcessor:  NetworkProcessor<UserModel>  {
    var userRepo: UserRepo
 
    init(userRepo: UserRepo) {
        self.userRepo = userRepo
    }
    
    override func extract() {}
    
    override func validate() throws {
    }
    
    override func process() throws -> Promise<UserModel> {
        return userRepo.getUserInfo()
        
    }
}
