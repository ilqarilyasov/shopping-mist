//
//  ShoppongListCollectionViewCell.swift
//  ShoppingMist
//
//  Created by Ilgar Ilyasov on 1/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ShoppongListCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var hasBeenAddedLabel: UILabel!
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemNameLabel: UILabel!
    
    var shoppingItem: ShoppingItem? {
        didSet { updateViews() }
    }
    
    private func updateViews() {
        guard let item = shoppingItem else { return }
        
        itemNameLabel.text = item.name
        itemImageView.image = UIImage(data: item.imageData)
        
        let statusText = item.hasBeenAdded ? "Added" : "Not Added"
        hasBeenAddedLabel.text = statusText
    }
    
}
