//
//  ShoppingItem.swift
//  ShoppingMist
//
//  Created by Ilgar Ilyasov on 1/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

struct ShoppingItem: Equatable {
    let image: UIImage
    let name: String
    var hasBeenAdded: Bool
    
    init(image: UIImage, name: String, hasBeenAdded: Bool = false) {
        self.image = image
        self.name = name
        self.hasBeenAdded = hasBeenAdded
    }
}
