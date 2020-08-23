//
//  UserRepoImpl.swift
//  AlbumApp
//
//  Created by Ahmed on 8/23/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import Foundation
import Promises

class UserRepoImpl: UserRepo {
    
    
    
    private var network: NetworkService
    private var localData: LocalData
    
    init(network: NetworkService = NetworkServiceImpl(), localData: LocalData = LocalDataImpl()) {
        self.network = network
        self.localData = localData
    }
    func getUserInfo() -> Promise<UserModel> {
        network.callModel(UserModel.self, endpoint: UserEndPoint())
    }
    func getAlbumes() -> Promise<AlbumModel> {
        network.callModel(AlbumModel.self, endpoint: AlbumesEndPoint())
    }
    
    func getPhotos(albumId: Int) -> Promise<PhotosModel> {
        network.callModel(PhotosModel.self, endpoint: PhotosEndPoint(albumeId: albumId))
    }

}