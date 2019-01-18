//
//  ShoppingItemController.swift
//  ShoppingMist
//
//  Created by Ilgar Ilyasov on 1/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ShoppingItemController {
    
    init() {
        createShoppingItems()
    }
    
    private(set) var shoppingItems = [ShoppingItem]()
    private let itemNames = ["apple", "grapes", "milk", "muffin", "popcorn", "soda", "strawberries"]
    
    func createShoppingItems() {
        for name in itemNames {
            guard let image = UIImage(named: name) else { return}
            let item = ShoppingItem(image: image, name: name.capitalized)
            shoppingItems.append(item)
        }
    }
    
    
}
