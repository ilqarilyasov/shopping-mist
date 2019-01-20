//
//  ItemCreationStatus+UserDefaults.swift
//  ShoppingMist
//
//  Created by Ilgar Ilyasov on 1/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class ItemCreationStatus  {
    
    func setItsCreated() {
        UserDefaults.standard.set("Created", forKey: .itemsCreatedKey)
    }
    
    var itemsCreated: String? {
        let value = UserDefaults.standard.string(forKey: .itemsCreatedKey)
        return value
    }
}
