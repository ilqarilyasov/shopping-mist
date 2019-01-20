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
    // TODO: - Implement Notification
    @IBAction func sendOrderButtonTapped(_ sender: Any) {
        
    }
    
    // MARK: - Update Views
    
    private func updateViews() {
        guard isViewLoaded,
            let addedItems = shoppingItemController?.addedItems else { return }
        
        let item = addedItems.count <= 1 ? "item" : "items"
        let haveItem = addedItems.isEmpty ? "don't have any \(item)" : "have \(addedItems.count) \(item)"
        
        howManyItemsLabel.text = "You currently \(haveItem) in your shopping list"
    }
}
