//
//  ShoppongListCollectionViewCell.swift
//  ShoppingMist
//
//  Created by Ilgar Ilyasov on 1/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ShoppongListCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Outlets
    
    @IBOutlet weak var hasBeenAddedLabel: UILabel!
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemNameLabel: UILabel!
    
    // MARK: - Properties
    
    var shoppingItem: ShoppingItem? {
        didSet { updateViews() }
    }
    
    // MARK: - Update Views
    
    private func updateViews() {
        guard let item = shoppingItem else { return }
        
        itemNameLabel.text = item.name
        itemImageView.image = UIImage(data: item.imageData)
        
        hasBeenAddedLabel.text = item.hasBeenAdded ? .added : .notAdded
        hasBeenAddedLabel.textColor = item.hasBeenAdded ? #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1) : #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        hasBeenAddedLabel.font = UIFont.italicSystemFont(ofSize: 13)
    }
}
