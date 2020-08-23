//
//  AlbumeProcessor.swift
//  AlbumApp
//
//  Created by Ahmed on 8/23/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import Foundation
import Promises
class AlbumeProcessor:  NetworkProcessor<AlbumModel>  {
    var userRepo: UserRepo

    init(userRepo: UserRepo) {
        self.userRepo = userRepo

    }
    
    override func extract() {}
    
    override func validate() throws {
    }
    
    override func process() throws -> Promise<AlbumModel> {
        return userRepo.getAlbumes()
        
    }
}
