//
//  ShoppingItem.swift
//  ShoppingMist
//
//  Created by Ilgar Ilyasov on 1/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

struct ShoppingItem: Equatable, Codable {
    
    let imageData: Data
    let name: String
    var hasBeenAdded: Bool
    
    init(imageData: Data, name: String, hasBeenAdded: Bool = false) {
        self.imageData = imageData
        self.name = name
        self.hasBeenAdded = hasBeenAdded
    }
}
