//
//  CollectionViewController.swift
//  photo wall
//
//  Created by star on 2020/4/11.
//  Copyright © 2020 star. All rights reserved.
//

import UIKit



class CollectionViewController: UICollectionViewController {
    
    var index: Int!
    var photo: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let flowlayout = collectionViewLayout as? UICollectionViewFlowLayout
        flowlayout?.estimatedItemSize = .zero
        flowlayout?.minimumInteritemSpacing = 0
        flowlayout?.minimumLineSpacing = 0
        flowlayout?.sectionInset = .zero
        let navHeight = navigationController?.navigationBar.frame.maxY ?? 0
        flowlayout?.itemSize = CGSize(width: collectionView.frame.width, height: collectionView.frame.size.height - navHeight)
        collectionView.scrollToItem(at: IndexPath(item: index, section: 0), at: .left, animated: false)
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
        return photo.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(ShowCollectionViewCell.self)", for: indexPath) as! ShowCollectionViewCell
        
        let name = photo[indexPath.item]
        cell.Image.image = UIImage(named: name)
    
        // Configure the cell
    
        return cell
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
