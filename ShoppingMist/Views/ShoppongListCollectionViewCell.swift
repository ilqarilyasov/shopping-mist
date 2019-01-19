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
        
        let statusText = item.hasBeenAdded ? "added ☑︎" : "not added"
        let color: UIColor = item.hasBeenAdded ? #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1) : #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        hasBeenAddedLabel.text = statusText
        hasBeenAddedLabel.textColor = color
    }
    
}
