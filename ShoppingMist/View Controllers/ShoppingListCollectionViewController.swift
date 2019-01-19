//
//  ShoppingListCollectionViewController.swift
//  ShoppingMist
//
//  Created by Ilgar Ilyasov on 1/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit


class ShoppingListCollectionViewController: UICollectionViewController {
    
    // MARK: - Properties
    
    private let reuseIdentifier = String.itemCell
    let shoppingItemController = ShoppingItemController()
    
    // MARK: - Lifecycle functions
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        collectionView.reloadData()
    }

    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == .nextSegue {
            let destVC = segue.destination as! SendOrderViewController
            destVC.shoppingItemController = shoppingItemController
        }
    }
    
    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == shoppingItemController.sectionNumber {
            return shoppingItemController.addedItems.count
        } else {
            return shoppingItemController.notAddedItems.count
        }
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        guard let shoppingListCell = cell as? ShoppongListCollectionViewCell else { return cell }
        
        let item = shoppingItemController.shoppingItem(for: indexPath)
        shoppingListCell.shoppingItem = item
    
        return shoppingListCell
    }

    // MARK: UICollectionViewDelegate
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let item = shoppingItemController.shoppingItem(for: indexPath)
        shoppingItemController.toggleValue(for: item)
        collectionView.reloadData()
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let view = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: .supplimentaryView, for: indexPath)
        guard let headerView = view as? SupplementaryCollectionReusableView else { return view }
        
        headerView.indexPath = indexPath
        headerView.shoppingItemController = shoppingItemController
        
        return headerView
    }
}
