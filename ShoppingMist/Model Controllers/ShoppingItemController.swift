//
//  ShoppingItemController.swift
//  ShoppingMist
//
//  Created by Ilgar Ilyasov on 1/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ShoppingItemController {
    
    // MARK: - Initializer
    
    init() {
        createShoppingItems()
    }
    
    // MARk: - Properties
    
    private(set) var shoppingItems = [ShoppingItem]()
    private let itemNames = ["apple", "grapes", "milk", "muffin", "popcorn", "soda", "strawberries"]
    
    var addedItems: [ShoppingItem] {
        let items = shoppingItems.filter({ $0.hasBeenAdded == true })
        return items
    }
    
    var notAddedItems: [ShoppingItem] {
        let items = shoppingItems.filter({ $0.hasBeenAdded == false })
        return items
    }
    
    var shoppingListURL: URL? {
        let fm = FileManager.default
        guard let dir = fm.urls(for: .documentDirectory, in: .userDomainMask).first else { return nil }
        let url = dir.appendingPathComponent(.shoppingListPlist)
        return url
    }
    
    var sectionNumber: Int {
        return notAddedItems.isEmpty ? 0 : 1
    }
    
    // MARK: - CRUD methods
    
    func createShoppingItems() {
        for name in itemNames {
            guard let image = UIImage(named: name),
                let imageData = image.pngData() else { return}
            
            let item = ShoppingItem(imageData: imageData, name: name.capitalized)
            shoppingItems.append(item)
        }
    }
    
    func toggleValue(for item: ShoppingItem) {
        guard let index = shoppingItems.index(of: item) else { return }
        shoppingItems[index].hasBeenAdded.toggle()
    }
    
    func shoppingItem(for indexPath: IndexPath) -> ShoppingItem {
        if indexPath.section == sectionNumber {
            return addedItems[indexPath.row]
        } else {
            return notAddedItems[indexPath.row]
        }
    }
}
