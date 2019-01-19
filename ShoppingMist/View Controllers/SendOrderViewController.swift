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
    
    var shoppingItemController: ShoppingItemController?
    
    // MARK: - Lifecycle functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Actions
    
    @IBAction func sendOrderButtonTapped(_ sender: Any) {
        
    }
}
