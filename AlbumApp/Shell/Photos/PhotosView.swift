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
    
    @IBOutlet weak var photosCollectionView: UICollectionView!{
           didSet {
               self.photosCollectionView.register(UINib(nibName: String(describing: PhotosCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: PhotosCell.self))

           }

       }
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

extension PhotosView: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
     print("😁😁\(presenter.albumes.value.count)")
        return 10
            //presenter.albumes.value.count
       
    
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
            let cell = (collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: PhotosCell.self), for: indexPath))  as! PhotosCell
           // cell.configure(result: presenter.albumes.value[indexPath.row], index: indexPath.row)
            return cell
        
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
 
            return CGSize( width: 100, height: 50 )

        
    }
    
}
