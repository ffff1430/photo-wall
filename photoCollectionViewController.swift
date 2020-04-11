//
//  photoCollectionViewController.swift
//  photo wall
//
//  Created by star on 2020/4/1.
//  Copyright © 2020 star. All rights reserved.
//

import UIKit

struct Item {
    var imagename:String
}



class photoCollectionViewController: UICollectionViewController {
    let photos = (0...5).map {"pic\($0)"}
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let itemSpace: CGFloat = 3
        let columnCount: CGFloat = 3
        let inset:CGFloat = 10
       let flowLayout = collectionViewLayout as? UICollectionViewFlowLayout
        let width = floor((collectionView.bounds.width - itemSpace * (columnCount-1) - inset * 2) / columnCount)
        flowLayout?.itemSize = CGSize(width: width, height:width)
        flowLayout?.estimatedItemSize = .zero
        flowLayout?.minimumInteritemSpacing = itemSpace
        flowLayout?.minimumLineSpacing = itemSpace
flowLayout?.sectionInset = UIEdgeInsets(top: 0, left: inset, bottom: 0, right: inset)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 6
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(CollectionViewCell.self)", for: indexPath) as! CollectionViewCell
    
        cell.Image.image = UIImage(named:photos[indexPath.item])
    
        return cell
    }
    
    @IBSegueAction func connect(_ coder: NSCoder) -> CollectionViewController? {
        let controller =  CollectionViewController(coder: coder)
        controller?.index = collectionView.indexPathsForSelectedItems?.first?.item ?? 0
        controller?.photo = photos
        return controller
    }
    
    
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
