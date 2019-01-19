//
//  SupplementaryCollectionReusableView.swift
//  ShoppingMist
//
//  Created by Ilgar Ilyasov on 1/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class SupplementaryCollectionReusableView: UICollectionReusableView {
    
    // MARK: - Outlets
        
    @IBOutlet weak var headerTitleLabel: UILabel!
    
    // MARK: - Properties
    
    var shoppingItemController: ShoppingItemController? {
        didSet { updateViews() }
    }
    var indexPath: IndexPath? {
        didSet { updateViews() }
    }
    
    // MARK: - Update Views
    
    private func updateViews() {
        headerTitleLabel.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        guard let indexPath = indexPath,
            let controller = shoppingItemController else { return }
        
        if indexPath.section == controller.sectionNumber {
            headerTitleLabel.text = controller.addedItems.isEmpty ? nil : .addedCapital
        } else {
            headerTitleLabel.text = controller.notAddedItems.isEmpty ? nil : .notAddedCapital
        }
    }
}
