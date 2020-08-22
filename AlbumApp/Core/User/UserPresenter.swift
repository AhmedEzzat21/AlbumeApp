//
//  UserPresenter.swift
//  AlbumApp
//
//  Created by Ahmed on 8/23/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import UIKit
import Bond

class UserPresenter: BasePresenter {
    
    var router: RouterManagerProtocol
    let userName: Observable<String?> = Observable("")
    let userAdress: Observable<String?> = Observable("")
    var albumes: Dynamic<[AlbumModel]> = Dynamic([])
    let albumeTitle: Observable<String?> = Observable("")
    let albumeId: Observable<String?> = Observable("")
    let userRepo: UserRepo
    
    init(router: RouterManagerProtocol, userRepo: UserRepo) {
        self.router = router
        self.userRepo = userRepo
        
    }
    
    override func hydrate() {
        
    }
    
    
}
