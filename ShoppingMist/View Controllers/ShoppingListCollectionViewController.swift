//
//  ShoppingListCollectionViewController.swift
//  ShoppingMist
//
//  Created by Ilgar Ilyasov on 1/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit


class ShoppingListCollectionViewController: UICollectionViewController {
    
    private let reuseIdentifier = "ItemCell"
    let shoppingItemController = ShoppingItemController()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        collectionView.reloadData()
    }

    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "NextSegue" {
            let destVC = segue.destination as! SendOrderViewController
            destVC.shoppingItemController = shoppingItemController
        }
    }

    // MARK: - Helper functions
    
    func shoppingItem(for indexPath: IndexPath) -> ShoppingItem {
        if indexPath.section == 0 {
            return shoppingItemController.addedItems[indexPath.row]
        } else {
            return shoppingItemController.notAddedItems[indexPath.row]
        }
    }
    
    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return shoppingItemController.addedItems.count
        } else {
            return shoppingItemController.notAddedItems.count
        }
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        guard let shoppingListCell = cell as? ShoppongListCollectionViewCell else { return cell }
        
        let item = shoppingItem(for: indexPath)
        shoppingListCell.shoppingItem = item
    
        return shoppingListCell
    }

    // MARK: UICollectionViewDelegate
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let item = shoppingItem(for: indexPath)
        shoppingItemController.toggleValue(for: item)
        collectionView.reloadItems(at: [indexPath])
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let view = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "SupplimentaryView", for: indexPath)
        guard let headerView = view as? SupplementaryCollectionReusableView else { return view }
        
        if indexPath.section == 0 {
            headerView.headerTitleLabel.text = "Added"
        } else {
            headerView.headerTitleLabel.text = "Not Added"
        }
        
        
        return headerView
    }
}
