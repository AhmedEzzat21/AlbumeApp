//
//  PhotosPresenter.swift
//  AlbumApp
//
//  Created by Ahmed on 8/23/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import Foundation
import UIKit
import Bond

class PhotosPresenter: BasePresenter {
    
    var router: RouterManagerProtocol
    let albumeId: Observable<String?> = Observable("")
    let albumePhoto: Observable<String?> = Observable("")
    let albumeTitle: Observable<String?> = Observable("")


    var albumes: Dynamic<[AlbumModel]> = Dynamic([])
    let userRepo: UserRepo
    
    init(router: RouterManagerProtocol, userRepo: UserRepo) {
        self.router = router
        self.userRepo = userRepo
        
    }
    
    override func hydrate() {
    }
 
    
}
