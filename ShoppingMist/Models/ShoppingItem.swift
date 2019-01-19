//
//  ShoppingItem.swift
//  ShoppingMist
//
//  Created by Ilgar Ilyasov on 1/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

struct ShoppingItem: Equatable {
    
    let imageData: Data
    let name: String
    var hasBeenAdded: Bool
    
    init(imageData: Data, name: String, hasBeenAdded: Bool = false) {
        self.imageData = imageData
        self.name = name
        self.hasBeenAdded = hasBeenAdded
    }
}

extension String {
    static let added = "added"
    static let addedCapital = "Added"
    static let notAdded = "not added"
    static let notAddedCapital = "Not Added"
    static let shoppingListPlist = "shoppigList.plist"
    static let itemCell = "ItemCell"
    static let nextSegue = "NextSegue"
    static let supplimentaryView = "SupplimentaryView"
}
