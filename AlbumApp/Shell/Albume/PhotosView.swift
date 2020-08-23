//
//  AlbumeView.swift
//  AlbumApp
//
//  Created by Ahmed on 8/23/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//


import Foundation
import UIKit

class PhotosView: BaseView<PhotosPresenter, BaseItem> {
    

    override func bindind() {
        presenter = PhotosPresenter(router: RouterManager(self), userRepo: UserRepoImpl())

    }
    override func viewWillAppear(_ animated: Bool) {
        
        if #available(iOS 11.0, *) {
            navigationController?.navigationBar.prefersLargeTitles = true
            navigationController?.navigationBar.topItem?.title = presenter.albumeTitle.value
            navigationController?.navigationItem.largeTitleDisplayMode = .automatic
            
            let attributes = [
                NSAttributedString.Key.foregroundColor : UIColor.black,
            ]
            
            navigationController?.navigationBar.largeTitleTextAttributes = attributes
            self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
            self.navigationController?.navigationBar.shadowImage = UIImage()
            UINavigationBar.appearance().largeTitleTextAttributes = [
                NSAttributedString.Key.foregroundColor: UIColor.black
            ]
            // Play around with the duration until you find
            // a time interval, you find suitable
            UIView.animate(withDuration: 2) {
                self.navigationController?.navigationBar.isTranslucent = true
            }
            
        } else {
            // Fallback on earlier versions
        }
        
    }
    
    
}

