//
//  SendOrderViewController.swift
//  ShoppingMist
//
//  Created by Ilgar Ilyasov on 1/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class SendOrderViewController: UIViewController {
    
    // MARK: - Outlets

    @IBOutlet weak var howManyItemsLabel: UILabel!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var userAddressTextField: UITextField!
    
    // MARK: - Properties
    
    var shoppingItemController: ShoppingItemController? {
        didSet { updateViews() }
    }
    
    // MARK: - Lifecycle functions
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateViews()
    }
    
    // MARK: - Actions
    
    @IBAction func sendOrderButtonTapped(_ sender: Any) {
        
    }
    
    // MARK: - Update Views
    
    private func updateViews() {
        guard let shoppingItemController = shoppingItemController,
            isViewLoaded else { return }
        
        let addedItems = shoppingItemController.addedItems
        let count = addedItems.count
        
        if addedItems.isEmpty {
            howManyItemsLabel.text = "You currently don't have any item in your shopping list"
        } else if addedItems.count == 1 {
            howManyItemsLabel.text = "You currently have 1 item in your shopping list"
        } else {
            howManyItemsLabel.text = "You currently have \(count) items in your shopping list"
        }
    }
}
